/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt6.dat, Tue Nov 12 10:13:50 2024
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000012D2 (4818)
 *     Revision         0x02
 *     Checksum         0xC9
 *     OEM ID           "INTEL "
 *     OEM Table ID     "IgfxSsdt"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "IgfxSsdt", 0x00003000)
{
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GFX0, DeviceObj)
    External (_SB_.PC00.GFX0.CPSC, UnknownObj)
    External (_SB_.PC00.GFX0.DSEN, UnknownObj)
    External (_SB_.PC00.GFX0.HNOT, MethodObj)    // 1 Arguments
    External (_SB_.PC00.GFX0.OSYS, IntObj)
    External (_SB_.PC00.GFX0.PCON, UnknownObj)
    External (_SB_.PC00.GFX0.PDI0, UnknownObj)
    External (_SB_.PC00.GFX0.PDI1, UnknownObj)
    External (_SB_.PC00.GFX0.PDIW, UnknownObj)
    External (_SB_.PC00.GFX0.S0ID, UnknownObj)
    External (_SB_.PC00.IMMC, MethodObj)    // 5 Arguments
    External (ASLB, UnknownObj)
    External (BRTL, UnknownObj)
    External (CSTE, UnknownObj)
    External (DID1, UnknownObj)
    External (DID2, UnknownObj)
    External (DID3, UnknownObj)
    External (DID4, UnknownObj)
    External (DID5, UnknownObj)
    External (DID6, UnknownObj)
    External (DID7, UnknownObj)
    External (DID8, UnknownObj)
    External (DID9, UnknownObj)
    External (DIDA, UnknownObj)
    External (DIDB, UnknownObj)
    External (DIDC, UnknownObj)
    External (DIDD, UnknownObj)
    External (DIDE, UnknownObj)
    External (DIDF, UnknownObj)
    External (DIDX, UnknownObj)
    External (DIDY, UnknownObj)
    External (ECON, IntObj)
    External (EDPV, UnknownObj)
    External (GUAM, MethodObj)    // 1 Arguments
    External (HGMD, UnknownObj)
    External (HVCO, UnknownObj)
    External (IBIA, UnknownObj)
    External (IBTT, UnknownObj)
    External (IDMS, UnknownObj)
    External (IF1E, UnknownObj)
    External (IPAT, UnknownObj)
    External (IPSC, UnknownObj)
    External (IPTP, UnknownObj)
    External (ISSC, UnknownObj)
    External (KSV0, UnknownObj)
    External (KSV1, UnknownObj)
    External (LIDS, UnknownObj)
    External (NDID, UnknownObj)
    External (NSTE, UnknownObj)
    External (NXD1, UnknownObj)
    External (NXD2, UnknownObj)
    External (NXD3, UnknownObj)
    External (NXD4, UnknownObj)
    External (NXD5, UnknownObj)
    External (NXD6, UnknownObj)
    External (NXD7, UnknownObj)
    External (NXD8, UnknownObj)
    External (NXDX, UnknownObj)
    External (NXDY, UnknownObj)
    External (PAVP, UnknownObj)
    External (PNHM, IntObj)

    Scope (\_SB.PC00.GFX0)
    {
        Name (DPLD, Package (0x01)
        {
            Buffer (0x14)
            {
                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                /* 0008 */  0x41, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x80, 0x01,  // A.......
                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
            }
        })
        Scope (\_SB.PC00)
        {
            OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
            Field (MCHP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x14), 
                AUDE,   8, 
                Offset (0x60), 
                TASM,   10, 
                Offset (0x62)
            }
        }

        OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
        Field (IGDP, AnyAcc, NoLock, Preserve)
        {
            Offset (0x10), 
                ,   1, 
            GIVD,   1, 
                ,   2, 
            GUMA,   3, 
            Offset (0x12), 
            Offset (0x14), 
                ,   4, 
            GMFN,   1, 
            Offset (0x18), 
            Offset (0xA4), 
            ASLE,   8, 
            Offset (0xA8), 
            GSSE,   1, 
            GSSB,   14, 
            GSES,   1, 
            Offset (0xB0), 
                ,   12, 
            CDVL,   1, 
            Offset (0xB2), 
            Offset (0xB5), 
            LBPC,   8, 
            Offset (0xBC), 
            ASLS,   32
        }

        OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
        Field (IGDM, AnyAcc, NoLock, Preserve)
        {
            SIGN,   128, 
            SIZE,   32, 
            OVER,   32, 
            SVER,   256, 
            VVER,   128, 
            GVER,   128, 
            MBOX,   32, 
            DMOD,   32, 
            PCON,   32, 
            DVER,   64, 
            Offset (0x100), 
            DRDY,   32, 
            CSTS,   32, 
            CEVT,   32, 
            Offset (0x120), 
            DIDL,   32, 
            DDL2,   32, 
            DDL3,   32, 
            DDL4,   32, 
            DDL5,   32, 
            DDL6,   32, 
            DDL7,   32, 
            DDL8,   32, 
            CPDL,   32, 
            CPL2,   32, 
            CPL3,   32, 
            CPL4,   32, 
            CPL5,   32, 
            CPL6,   32, 
            CPL7,   32, 
            CPL8,   32, 
            CADL,   32, 
            CAL2,   32, 
            CAL3,   32, 
            CAL4,   32, 
            CAL5,   32, 
            CAL6,   32, 
            CAL7,   32, 
            CAL8,   32, 
            NADL,   32, 
            NDL2,   32, 
            NDL3,   32, 
            NDL4,   32, 
            NDL5,   32, 
            NDL6,   32, 
            NDL7,   32, 
            NDL8,   32, 
            ASLP,   32, 
            TIDX,   32, 
            CHPD,   32, 
            CLID,   32, 
            CDCK,   32, 
            SXSW,   32, 
            EVTS,   32, 
            CNOT,   32, 
            NRDY,   32, 
            DDL9,   32, 
            DD10,   32, 
            DD11,   32, 
            DD12,   32, 
            DD13,   32, 
            DD14,   32, 
            DD15,   32, 
            CPL9,   32, 
            CP10,   32, 
            CP11,   32, 
            CP12,   32, 
            CP13,   32, 
            CP14,   32, 
            CP15,   32, 
            Offset (0x200), 
            SCIE,   1, 
            GEFC,   4, 
            GXFC,   3, 
            GESF,   8, 
            Offset (0x204), 
            PARM,   32, 
            DSLP,   32, 
            Offset (0x300), 
            ARDY,   32, 
            ASLC,   32, 
            TCHE,   32, 
            ALSI,   32, 
            BCLP,   32, 
            PFIT,   32, 
            CBLV,   32, 
            BCLM,   320, 
            CPFM,   32, 
            EPFM,   32, 
            PLUT,   592, 
            PFMB,   32, 
            CCDV,   32, 
            PCFT,   32, 
            SROT,   32, 
            IUER,   32, 
            FDSS,   64, 
            FDSP,   32, 
            STAT,   32, 
            RVDA,   64, 
            RVDS,   32, 
            Offset (0x400), 
            RVBT,   49152, 
            PHED,   32, 
            BDDC,   2048
        }

        Name (DBTB, Package (0x15)
        {
            Zero, 
            0x07, 
            0x38, 
            0x01C0, 
            0x0E00, 
            0x3F, 
            0x01C7, 
            0x0E07, 
            0x01F8, 
            0x0E38, 
            0x0FC0, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            0x7000, 
            0x7007, 
            0x7038, 
            0x71C0, 
            0x7E00
        })
        Name (CDCT, Package (0x05)
        {
            Package (0x02)
            {
                0xE4, 
                0x0140
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                Zero, 
                Zero
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }
        })
        Name (SUCC, One)
        Name (NVLD, 0x02)
        Name (CRIT, 0x04)
        Name (NCRT, 0x06)
        Method (GSCI, 0, Serialized)
        {
            Method (GBDA, 0, Serialized)
            {
                If ((GESF == Zero))
                {
                    PARM = 0x0659
                    GESF = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == One))
                {
                    PARM = 0x00300482
                    If ((S0ID == One))
                    {
                        PARM |= 0x0100
                    }

                    GESF = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x04))
                {
                    PARM &= 0xEFFF0000
                    PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                    PARM |= IBTT /* \_SB_.PC00.GFX0.PARM */
                    GESF = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x05))
                {
                    PARM = IPSC /* External reference */
                    PARM |= (IPAT << 0x08)
                    PARM += 0x0100
                    PARM |= (LIDS << 0x10)
                    PARM += 0x00010000
                    PARM |= (IBIA << 0x14)
                    GESF = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x07))
                {
                    PARM = GIVD /* \_SB_.PC00.GFX0.GIVD */
                    PARM ^= One
                    PARM |= (GMFN << One)
                    PARM |= 0x1800
                    PARM |= (IDMS << 0x11)
                    PARM |= (DerefOf (DerefOf (CDCT [HVCO]) [CDVL]) << 
                        0x15) /* \_SB_.PC00.GFX0.PARM */
                    GESF = One
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x0A))
                {
                    PARM = Zero
                    If (ISSC)
                    {
                        PARM |= 0x03
                    }

                    GESF = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x0B))
                {
                    PARM = KSV0 /* External reference */
                    GESF = KSV1 /* External reference */
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                GESF = Zero
                Return (CRIT) /* \_SB_.PC00.GFX0.CRIT */
            }

            Method (SBCB, 0, Serialized)
            {
                If ((GESF == Zero))
                {
                    PARM = Zero
                    PARM = 0x000F87DD
                    GESF = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == One))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x03))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x04))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x05))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x07))
                {
                    If (((S0ID == One) && (OSYS < 0x07DF)))
                    {
                        If (((PARM & 0xFF) == One))
                        {
                            \GUAM (One)
                        }

                        If (((PARM & 0xFF) == Zero))
                        {
                            \GUAM (Zero)
                        }
                    }

                    If ((PARM == Zero))
                    {
                        Local0 = CLID /* \_SB_.PC00.GFX0.CLID */
                        If ((0x80000000 & Local0))
                        {
                            CLID &= 0x0F
                            GLID (CLID)
                        }
                    }

                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x08))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x09))
                {
                    IBTT = (PARM & 0xFF)
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x0A))
                {
                    IPSC = (PARM & 0xFF)
                    If (((PARM >> 0x08) & 0xFF))
                    {
                        IPAT = ((PARM >> 0x08) & 0xFF)
                        IPAT--
                    }

                    IBIA = ((PARM >> 0x14) & 0x07)
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x0B))
                {
                    IF1E = ((PARM >> One) & One)
                    If ((PARM & 0x0001E000))
                    {
                        IDMS = ((PARM >> 0x0D) & 0x0F)
                    }
                    Else
                    {
                        IDMS = ((PARM >> 0x11) & 0x0F)
                    }

                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x10))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x11))
                {
                    PARM = (LIDS << 0x08)
                    PARM += 0x0100
                    GESF = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x12))
                {
                    If ((PARM & One))
                    {
                        If (((PARM >> One) == One))
                        {
                            ISSC = One
                        }
                        Else
                        {
                            GESF = Zero
                            Return (CRIT) /* \_SB_.PC00.GFX0.CRIT */
                        }
                    }
                    Else
                    {
                        ISSC = Zero
                    }

                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x13))
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                If ((GESF == 0x14))
                {
                    PAVP = (PARM & 0x0F)
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
                }

                GESF = Zero
                Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
            }

            If ((GEFC == 0x04))
            {
                GXFC = GBDA ()
            }

            If ((GEFC == 0x06))
            {
                GXFC = SBCB ()
            }

            GEFC = Zero
            CPSC = One
            GSSE = Zero
            SCIE = Zero
            Return (Zero)
        }

        Method (PDRD, 0, NotSerialized)
        {
            Return (!DRDY)
        }

        Method (PSTS, 0, NotSerialized)
        {
            If ((CSTS > 0x02))
            {
                Sleep (ASLP)
            }

            Return ((CSTS == 0x03))
        }

        Method (GNOT, 2, NotSerialized)
        {
            If (PDRD ())
            {
                Return (One)
            }

            CEVT = Arg0
            CSTS = 0x03
            If (((CHPD == Zero) && (Arg1 == Zero)))
            {
                Notify (\_SB.PC00.GFX0, Arg1)
            }

            If (CondRefOf (HNOT))
            {
                HNOT (Arg0)
            }
            Else
            {
                Notify (\_SB.PC00.GFX0, 0x80) // Status Change
            }

            Return (Zero)
        }

        Method (GHDS, 1, NotSerialized)
        {
            TIDX = Arg0
            Return (GNOT (One, Zero))
        }

        Method (GLID, 1, NotSerialized)
        {
            If ((Arg0 == One))
            {
                CLID = 0x03
            }
            Else
            {
                CLID = Arg0
            }

            If (GNOT (0x02, Zero))
            {
                CLID |= 0x80000000
                Return (One)
            }

            Return (Zero)
        }

        Method (GDCK, 1, NotSerialized)
        {
            CDCK = Arg0
            Return (GNOT (0x04, Zero))
        }

        Method (PARD, 0, NotSerialized)
        {
            If (!ARDY)
            {
                Sleep (ASLP)
            }

            Return (!ARDY)
        }

        Method (IUEH, 1, Serialized)
        {
            IUER &= 0xC0
            IUER ^= (One << Arg0)
            If ((Arg0 <= 0x04))
            {
                Return (AINT (0x05, Zero))
            }
            Else
            {
                Return (AINT (Arg0, Zero))
            }
        }

        Method (AINT, 2, NotSerialized)
        {
            If (!(TCHE & (One << Arg0)))
            {
                Return (One)
            }

            If (PARD ())
            {
                Return (One)
            }

            If (((Arg0 >= 0x05) && (Arg0 <= 0x07)))
            {
                ASLC = (One << Arg0)
                ASLE = One
                Local2 = Zero
                While (((Local2 < 0xFA) && (ASLC != Zero)))
                {
                    Sleep (0x04)
                    Local2++
                }

                Return (Zero)
            }

            If ((Arg0 == 0x02))
            {
                If (CPFM)
                {
                    Local0 = (CPFM & 0x0F)
                    Local1 = (EPFM & 0x0F)
                    If ((Local0 == One))
                    {
                        If ((Local1 & 0x06))
                        {
                            PFIT = 0x06
                        }
                        ElseIf ((Local1 & 0x08))
                        {
                            PFIT = 0x08
                        }
                        Else
                        {
                            PFIT = One
                        }
                    }

                    If ((Local0 == 0x06))
                    {
                        If ((Local1 & 0x08))
                        {
                            PFIT = 0x08
                        }
                        ElseIf ((Local1 & One))
                        {
                            PFIT = One
                        }
                        Else
                        {
                            PFIT = 0x06
                        }
                    }

                    If ((Local0 == 0x08))
                    {
                        If ((Local1 & One))
                        {
                            PFIT = One
                        }
                        ElseIf ((Local1 & 0x06))
                        {
                            PFIT = 0x06
                        }
                        Else
                        {
                            PFIT = 0x08
                        }
                    }
                }
                Else
                {
                    PFIT ^= 0x07
                }

                PFIT |= 0x80000000
                ASLC = 0x04
            }
            ElseIf ((Arg0 == One))
            {
                BCLP = Arg1
                BCLP |= 0x80000000
                ASLC = 0x02
            }
            ElseIf ((Arg0 == Zero))
            {
                ALSI = Arg1
                ASLC = One
            }
            Else
            {
                Return (One)
            }

            ASLE = One
            Return (Zero)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("3e5b41c6-eb1d-4260-9d15-c71fbadae414") /* Unknown UUID */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "iGfx Supported Functions Bitmap "
                            If (((PCON & 0x0180) == 0x0180))
                            {
                                If (((PDIW && One) && CondRefOf (PDIW)))
                                {
                                    Return (0x0011E7FF)
                                }
                            }

                            Return (0x0001E7FF)
                        }
                    }
                    Case (One)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = " Adapter Power State Notification "
                            If (((S0ID == One) && (OSYS < 0x07DF)))
                            {
                                If (((DerefOf (Arg3 [Zero]) & 0xFF) == One))
                                {
                                    \GUAM (One)
                                }

                                Local0 = (DerefOf (Arg3 [One]) & 0xFF)
                                If ((Local0 == Zero))
                                {
                                    \GUAM (Zero)
                                }
                            }

                            If ((DerefOf (Arg3 [Zero]) == Zero))
                            {
                                Local0 = CLID /* \_SB_.PC00.GFX0.CLID */
                                If ((0x80000000 & Local0))
                                {
                                    CLID &= 0x0F
                                    GLID (CLID)
                                }
                            }

                            Return (One)
                        }
                    }
                    Case (0x02)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Display Power State Notification "
                            Return (One)
                        }
                    }
                    Case (0x03)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "BIOS POST Completion Notification "
                            Return (One)
                        }
                    }
                    Case (0x04)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Pre-Hires Set Mode "
                            Return (One)
                        }
                    }
                    Case (0x05)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Post-Hires Set Mode "
                            Return (One)
                        }
                    }
                    Case (0x06)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "SetDisplayDeviceNotification"
                            Return (One)
                        }
                    }
                    Case (0x07)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "SetBootDevicePreference "
                            IBTT = (DerefOf (Arg3 [Zero]) & 0xFF)
                            Return (One)
                        }
                    }
                    Case (0x08)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "SetPanelPreference "
                            IPSC = (DerefOf (Arg3 [Zero]) & 0xFF)
                            If ((DerefOf (Arg3 [One]) & 0xFF))
                            {
                                IPAT = (DerefOf (Arg3 [One]) & 0xFF)
                                IPAT--
                            }

                            IBIA = ((DerefOf (Arg3 [0x02]) >> 0x04) & 0x07)
                            Return (One)
                        }
                    }
                    Case (0x09)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "FullScreenDOS "
                            Return (One)
                        }
                    }
                    Case (0x0A)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "APM Complete "
                            Local0 = (LIDS << 0x08)
                            Local0 += 0x0100
                            Return (Local0)
                        }
                    }
                    Case (0x0D)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "GetBootDisplayPreference "
                            Local0 = ((DerefOf (Arg3 [0x03]) << 0x18) | (DerefOf (
                                Arg3 [0x02]) << 0x10))
                            Local0 &= 0xEFFF0000
                            Local0 &= (DerefOf (DBTB [IBTT]) << 0x10)
                            Local0 |= IBTT
                            Return (Local0)
                        }
                    }
                    Case (0x0E)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "GetPanelDetails "
                            Local0 = IPSC /* External reference */
                            Local0 |= (IPAT << 0x08)
                            Local0 += 0x0100
                            Local0 |= (LIDS << 0x10)
                            Local0 += 0x00010000
                            Local0 |= (IBIA << 0x14)
                            Return (Local0)
                        }
                    }
                    Case (0x0F)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "GetInternalGraphics "
                            Local0 = GIVD /* \_SB_.PC00.GFX0.GIVD */
                            Local0 ^= One
                            Local0 |= (GMFN << One)
                            Local0 |= 0x1800
                            Local0 |= (IDMS << 0x11)
                            Local0 |= (DerefOf (DerefOf (CDCT [HVCO]) [CDVL]) << 
                                0x15)
                            Return (Local0)
                        }
                    }
                    Case (0x10)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "GetAKSV "
                            Name (KSVP, Package (0x02)
                            {
                                0x80000000, 
                                0x8000
                            })
                            KSVP [Zero] = KSV0 /* External reference */
                            KSVP [One] = KSV1 /* External reference */
                            Return (KSVP) /* \_SB_.PC00.GFX0._DSM.KSVP */
                        }
                    }
                    Case (0x14)
                    {
                        Name (OPTS, Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        })
                        CreateByteField (OPTS, Zero, CMST)
                        CreateByteField (OPTS, One, RTB1)
                        Name (GEDB, Buffer (0x0A)
                        {
                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0008 */  0x00, 0x00                                       // ..
                        })
                        CreateDWordField (GEDB, Zero, GEDF)
                        CreateByteField (GEDB, 0x04, GESF)
                        Sleep (PDI0)
                        OPTS = \_SB.PC00.IMMC (0x08, PDI1, Zero, Zero, Zero)
                        GESF = CMST /* \_SB_.PC00.GFX0._DSM.CMST */
                        GEDF = RTB1 /* \_SB_.PC00.GFX0._DSM.RTB1 */
                        Return (GEDB) /* \_SB_.PC00.GFX0._DSM.GEDB */
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }
}

