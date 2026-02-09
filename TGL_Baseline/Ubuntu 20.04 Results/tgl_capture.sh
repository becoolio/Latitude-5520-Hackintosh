#!/usr/bin/env bash
set -euo pipefail

# --- Paths (ensure output goes to the real user's home even under sudo) ---
REAL_USER="${SUDO_USER:-$USER}"
REAL_HOME="$(eval echo "~${REAL_USER}")"
BASE_DIR="${REAL_HOME}/tgl_baseline"

GPU_PATH="/sys/kernel/debug/dri/0000:00:02.0"
GT0_UC="${GPU_PATH}/gt0/uc"

# tracefs may be in either place depending on kernel/distro
TRACE_DIR="/sys/kernel/tracing"
[[ -d /sys/kernel/debug/tracing ]] && TRACE_DIR="/sys/kernel/debug/tracing"

TS="$(date +%Y%m%d_%H%M%S)"

usage() {
  cat <<USAGE
Usage:
  sudo bash $0 start [name]
  sudo bash $0 stop  <name>

Example:
  sudo bash $0 start heaven_run3
  # launch Heaven fullscreen
  sudo bash $0 stop  heaven_run3

Outputs:
  ${BASE_DIR}/<name>/
  ${BASE_DIR}/<name>.zip
USAGE
}

need_root() {
  if [[ "${EUID}" -ne 0 ]]; then
    echo "ERROR: run as root: sudo bash $0 ..."
    exit 1
  fi
}

safe_cat() { # safe_cat <src> <dst>
  local src="$1" dst="$2"
  if [[ -e "$src" ]]; then
    cat "$src" > "$dst" 2>/dev/null || true
  else
    echo "MISSING: $src" > "$dst"
  fi
}

start_capture() {
  need_root

  local NAME="${1:-run_${TS}}"
  local OUT="${BASE_DIR}/${NAME}"
  mkdir -p "$OUT"

  echo "[+] Writing to: $OUT"

  # --- 0) Basic ID / config ---
  uname -a > "${OUT}/uname.txt" 2>/dev/null || true
  (lspci -nnk | grep -A3 -E "VGA|3D|Display") > "${OUT}/lspci_gpu.txt" 2>/dev/null || true
  (modinfo i915 | egrep -i "filename|version|firmware|srcversion|vermagic") > "${OUT}/modinfo_i915.txt" 2>/dev/null || true
  cat /proc/cmdline > "${OUT}/proc_cmdline.txt" 2>/dev/null || true
  safe_cat /sys/module/i915/parameters/enable_guc "${OUT}/enable_guc.txt"

  # glxinfo needs your user DISPLAY; attempt as REAL_USER (best-effort)
  if command -v glxinfo >/dev/null 2>&1; then
    (sudo -u "${REAL_USER}" env DISPLAY="${DISPLAY:-:0}" glxinfo 2>/dev/null | grep -i "OpenGL renderer" || true) \
      > "${OUT}/gl_renderer.txt" 2>/dev/null || true
  else
    echo "glxinfo not installed (mesa-utils)" > "${OUT}/gl_renderer.txt"
  fi

  # --- 1) debugfs listings ---
  ls -la "${GPU_PATH}" > "${OUT}/dri_listing.txt" 2>/dev/null || true
  ls -la "${GPU_PATH}/gt0" > "${OUT}/gt0_listing.txt" 2>/dev/null || true
  ls -la "${GT0_UC}" > "${OUT}/uc_listing.txt" 2>/dev/null || true

  # --- 2) One-shot dumps (idle snapshot) ---
  for f in \
    i915_capabilities i915_engine_info i915_gem_objects i915_gpu_info i915_frequency_info \
    i915_runtime_pm_status i915_wa_registers i915_error_state i915_wedged i915_display_info \
    i915_vbt clients gem_names
  do
    safe_cat "${GPU_PATH}/${f}" "${OUT}/${f}.txt"
  done

  # --- 3) GuC/HuC one-shot ---
  for f in guc_info huc_info guc_registered_contexts guc_log_dump guc_load_err_log_dump guc_slpc_info; do
    safe_cat "${GT0_UC}/${f}" "${OUT}/${f}.txt"
  done

  # --- 4) Follow dmesg (background) ---
  echo "[+] Starting dmesg follower"
  (dmesg -wT | egrep -i "i915|drm|guc|huc|submission|execlist|ct|hang|reset|wedg|fault|ubsan" ) \
    > "${OUT}/dmesg_follow.txt" 2>/dev/null &
  echo $! > "${OUT}/pid_dmesg_follow"

  # --- 5) intel_gpu_top capture (background, if installed) ---
  if command -v intel_gpu_top >/dev/null 2>&1; then
    echo "[+] Starting intel_gpu_top JSON capture"
    intel_gpu_top -J -s 1000 > "${OUT}/intel_gpu_top.json" 2>/dev/null &
    echo $! > "${OUT}/pid_intel_gpu_top"
  else
    echo "intel_gpu_top not found (intel-gpu-tools)" > "${OUT}/intel_gpu_top_missing.txt"
  fi

  # --- 6) Poller (captures changing state under load) ---
  echo "[+] Starting poller every 2s"
  (
    while true; do
      date --iso-8601=seconds
      echo "---- guc_info ----"
      cat "${GT0_UC}/guc_info" 2>/dev/null || true
      echo "---- huc_info ----"
      cat "${GT0_UC}/huc_info" 2>/dev/null || true
      echo "---- guc_registered_contexts (head) ----"
      cat "${GT0_UC}/guc_registered_contexts" 2>/dev/null | head -n 120 || true
      echo "---- i915_engine_info (head) ----"
      cat "${GPU_PATH}/i915_engine_info" 2>/dev/null | head -n 240 || true
      echo "---- runtime_pm ----"
      cat "${GPU_PATH}/i915_runtime_pm_status" 2>/dev/null || true
      echo
      sleep 2
    done
  ) > "${OUT}/poller.txt" 2>/dev/null &
  echo $! > "${OUT}/pid_poller"

  # --- 7) Optional ftrace (best-effort; don’t fail run if not available) ---
  if [[ -d "${TRACE_DIR}" ]]; then
    echo "[+] Enabling ftrace (best-effort)"
    (
      echo 0 > "${TRACE_DIR}/tracing_on" 2>/dev/null || true
      : > "${TRACE_DIR}/trace" 2>/dev/null || true
      for ev in \
        "${TRACE_DIR}/events/i915/enable" \
        "${TRACE_DIR}/events/drm/enable" \
        "${TRACE_DIR}/events/sched/enable" \
        "${TRACE_DIR}/events/irq/enable" \
        "${TRACE_DIR}/events/power/enable"
      do
        [[ -e "$ev" ]] && echo 1 > "$ev" 2>/dev/null || true
      done
      echo 1 > "${TRACE_DIR}/tracing_on" 2>/dev/null || true
    ) || true
    echo "ftrace enabled (best-effort)" > "${OUT}/ftrace_status.txt"
  else
    echo "tracefs not found at ${TRACE_DIR}" > "${OUT}/ftrace_status.txt"
  fi

  echo "[OK] Capture started: ${NAME}"
  echo "Launch Heaven fullscreen now."
  echo "When finished: sudo bash $0 stop ${NAME}"
}

stop_capture() {
  need_root
  local NAME="${1:-}"
  if [[ -z "${NAME}" ]]; then
    echo "ERROR: missing name. Example: sudo bash $0 stop heaven_run3"
    exit 1
  fi

  local OUT="${BASE_DIR}/${NAME}"
  if [[ ! -d "${OUT}" ]]; then
    echo "ERROR: no such run dir: ${OUT}"
    exit 1
  fi

  echo "[+] Stopping background tasks for: ${OUT}"

  for pidfile in pid_poller pid_intel_gpu_top pid_dmesg_follow; do
    if [[ -f "${OUT}/${pidfile}" ]]; then
      pid="$(cat "${OUT}/${pidfile}" 2>/dev/null || true)"
      [[ -n "${pid}" ]] && kill "${pid}" 2>/dev/null || true
    fi
  done

  # Stop ftrace + dump trace (optional)
  if [[ -d "${TRACE_DIR}" ]]; then
    echo 0 > "${TRACE_DIR}/tracing_on" 2>/dev/null || true
    cat "${TRACE_DIR}/trace" > "${OUT}/ftrace_trace.txt" 2>/dev/null || true
  fi

  # Final snapshots
  for f in i915_engine_info i915_gpu_info i915_frequency_info i915_runtime_pm_status; do
    safe_cat "${GPU_PATH}/${f}" "${OUT}/${f}_final.txt"
  done
  for f in guc_info huc_info guc_registered_contexts guc_log_dump guc_load_err_log_dump guc_slpc_info; do
    safe_cat "${GT0_UC}/${f}" "${OUT}/${f}_final.txt"
  done

  # Zip
  local ZIP="${OUT}.zip"
  (cd "${BASE_DIR}" && zip -qr "$(basename "${ZIP}")" "$(basename "${OUT}")") || true
  echo "[OK] Stopped. Zip created: ${ZIP}"
}

main() {
  mkdir -p "${BASE_DIR}"
  local cmd="${1:-}"
  shift || true

  case "${cmd}" in
    start) start_capture "$@" ;;
    stop)  stop_capture "$@" ;;
    *) usage; exit 1 ;;
  esac
}

main "$@"
