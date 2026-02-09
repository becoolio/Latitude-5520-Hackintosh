/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt19.dat, Tue Nov 12 10:13:50 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001CB (459)
 *     Revision         0x02
 *     Checksum         0xE3
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Psd"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Psd", 0x00003000)
{
    External (_SB_.CFGD, FieldUnitObj)
    External (_SB_.PR00, DeviceObj)
    External (BCNT, UnknownObj)
    External (CORE, UnknownObj)
    External (HTRO, UnknownObj)
    External (MDID, UnknownObj)
    External (PF00, IntObj)
    External (SCNT, UnknownObj)
    External (TCNT, FieldUnitObj)

    Scope (\_SB.PR00)
    {
        Method (GPSD, 1, NotSerialized)
        {
            Name (HPSD, Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    Zero, 
                    0xFE, 
                    0x80
                }
            })
            Name (SPSD, Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    Zero, 
                    0xFC, 
                    0x80
                }
            })
            If (((\_SB.CFGD & 0x02000000) && (\_SB.CFGD & 0x00400000)))
            {
                DerefOf (HPSD [Zero]) [0x02] = Arg0
                DerefOf (HPSD [Zero]) [0x04] = One
            }
            ElseIf (HTRO)
            {
                If (((CORE >> Arg0) & One))
                {
                    DerefOf (HPSD [Zero]) [0x04] = SCNT /* External reference */
                    DerefOf (SPSD [Zero]) [0x04] = SCNT /* External reference */
                    If ((MDID && One))
                    {
                        DerefOf (HPSD [Zero]) [0x02] = 0xFF
                    }
                    ElseIf ((MDID && 0x02))
                    {
                        DerefOf (HPSD [Zero]) [0x02] = 0xFE
                    }
                }
                Else
                {
                    DerefOf (HPSD [Zero]) [0x04] = BCNT /* External reference */
                    DerefOf (SPSD [Zero]) [0x04] = BCNT /* External reference */
                }
            }
            Else
            {
                DerefOf (HPSD [Zero]) [0x04] = TCNT /* External reference */
                DerefOf (SPSD [Zero]) [0x04] = TCNT /* External reference */
            }

            If ((PF00 & 0x0800))
            {
                Return (HPSD) /* \_SB_.PR00.GPSD.HPSD */
            }

            Return (SPSD) /* \_SB_.PR00.GPSD.SPSD */
        }

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (GPSD (Zero))
        }
    }
}

