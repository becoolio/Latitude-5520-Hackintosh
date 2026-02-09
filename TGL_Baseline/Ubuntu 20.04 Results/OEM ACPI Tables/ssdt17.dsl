/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt17.dat, Tue Nov 12 10:13:50 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000004D4 (1236)
 *     Revision         0x02
 *     Checksum         0x9D
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApPsd"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "ApPsd", 0x00003000)
{
    External (_SB_.CFGD, FieldUnitObj)
    External (_SB_.PR00.GPSD, MethodObj)    // 1 Arguments
    External (_SB_.PR01, DeviceObj)
    External (_SB_.PR02, DeviceObj)
    External (_SB_.PR03, DeviceObj)
    External (_SB_.PR04, DeviceObj)
    External (_SB_.PR05, DeviceObj)
    External (_SB_.PR06, DeviceObj)
    External (_SB_.PR07, DeviceObj)
    External (_SB_.PR08, DeviceObj)
    External (_SB_.PR09, DeviceObj)
    External (_SB_.PR10, DeviceObj)
    External (_SB_.PR11, DeviceObj)
    External (_SB_.PR12, DeviceObj)
    External (_SB_.PR13, DeviceObj)
    External (_SB_.PR14, DeviceObj)
    External (_SB_.PR15, DeviceObj)
    External (_SB_.PR16, DeviceObj)
    External (_SB_.PR17, DeviceObj)
    External (_SB_.PR18, DeviceObj)
    External (_SB_.PR19, DeviceObj)
    External (_SB_.PR20, DeviceObj)
    External (_SB_.PR21, DeviceObj)
    External (_SB_.PR22, DeviceObj)
    External (_SB_.PR23, DeviceObj)
    External (PF00, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_SB.PR01)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (One))
        }
    }

    Scope (\_SB.PR02)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x02))
        }
    }

    Scope (\_SB.PR03)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x03))
        }
    }

    Scope (\_SB.PR04)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x04))
        }
    }

    Scope (\_SB.PR05)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x05))
        }
    }

    Scope (\_SB.PR06)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x06))
        }
    }

    Scope (\_SB.PR07)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x07))
        }
    }

    Scope (\_SB.PR08)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x08))
        }
    }

    Scope (\_SB.PR09)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x09))
        }
    }

    Scope (\_SB.PR10)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x0A))
        }
    }

    Scope (\_SB.PR11)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x0B))
        }
    }

    Scope (\_SB.PR12)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x0C))
        }
    }

    Scope (\_SB.PR13)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x0D))
        }
    }

    Scope (\_SB.PR14)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x0E))
        }
    }

    Scope (\_SB.PR15)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x0F))
        }
    }

    Scope (\_SB.PR16)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x10))
        }
    }

    Scope (\_SB.PR17)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x11))
        }
    }

    Scope (\_SB.PR18)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x12))
        }
    }

    Scope (\_SB.PR19)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x13))
        }
    }

    Scope (\_SB.PR20)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x14))
        }
    }

    Scope (\_SB.PR21)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x15))
        }
    }

    Scope (\_SB.PR22)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x16))
        }
    }

    Scope (\_SB.PR23)
    {
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (\_SB.PR00.GPSD (0x17))
        }
    }
}

