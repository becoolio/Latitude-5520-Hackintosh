# 💻 Dell Latitude 5520 Hackintosh (Intel 11th Gen Tiger Lake i5-1135G7) 💻 

## 🌿 System Specification
| Name | Description |
| - | - |
| CPU | Intel 11th Gen Tiger Lake Core i5-1135G7 4.20 GHz |
| Chipsets | Intel Tiger Lake-LP |
| Graphics | Intel Iris Xe Graphics G7 |
| Memory | Samsung 16GB DDR4x 3200 MHz  |
| Sound | Realtek HD Audio ALC 256 (layout-id = 16) |
| Wi-Fi / Bluetooth | Intel Wi-Fi 6 Wireless AX200 |
| TouchPad | Dell I2C TouchPad (TDPO, IOName : INT34C5/DELL0A21) |

## 🍃 OpenCore Versions
- macOS Sonoma 14.7
- OpenCore r0.9.9

## 🍁 BIOS Settings
- Boot
  - Secure Boot Control : `Off`
  - Fast BIOS Mode : `Off`
- Using RU.efi (Do At Your Own Risk!!)
  - CpuSetup `(VarStore : 0x3)`
    - CFG Lock `(Variable : 0x43)` : Disabled `(Value : 0x0)`
  - SaSetup `(VarStore : 0x2)`
    - DVMT Pre-Allocated Memory `(Variable : 0x84)` : 64MB `(Value : 0x2)`
    - DVMT Total Gfx Memory `(Variable : 0x85)` : MAX `(Value : 0x3)`
    - CD Clock Frequency `(Variable : 0x47)` : 648 MHz `(Value : 0x7)` / 652.8 MHz `(Value : 0x8)`
     

## ⚠️ Attention
- Intel Iris Xe Graphics iGPU is not supported by macOS and QE/CI acceleration is not available. [Discussion #15](https://github.com/lshbluesky/Samsung-NT750XDA-KF59U-Hackintosh/discussions/15)


## ✅ Working
- [X] Realtek ALC 256 Internal Speaker
- [X] Realtek ALC 256 Internal Microphone
- [X] Realtek ALC 256 ComboJack Headphone (sometimes a little buzzing)
- [X] Realtek ALC 256 ComboJack Microphone
- [X] Speed Step (XCPM, Partially working)
- [X] Intel Wi-Fi 6 AX200
- [X] USB 3.x & USB Port Map
- [X] Dell I2C TouchPad (Must set touchpad from ACPI to GPIO using RU.efi)
- [X] Integrated Webcam (Works in Teams, zoom, etc, not photobooth) (Update, I broke it, will update USBMAP soon)
- [X] Battery Percentage Indication


## ❌ Not Working
- [ ] Intel Iris Xe Graphics G7 QE/CI
- [ ] Intel 8260 Bluetooth
- [ ] Complete/Full Power Management
- [ ] Brightness Control
- [ ] Fn Keys (Brightness & Sound Volume Control)
- [ ] Sleep & Wake
