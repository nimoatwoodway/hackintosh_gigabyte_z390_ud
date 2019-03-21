/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2-A M I.aml, Tue Mar 19 07:29:00 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00007B9E (31646)
 *     Revision         0x01
 *     Checksum         0x41
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "A M I"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 1, "ALASKA", "A M I", 0x00000001)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.GPC0, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PR00, DeviceObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.SHPO, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.SPC0, MethodObj)    // 2 Arguments (from opcode)

    Scope (\)
    {
        Device (GSA1)
        {
            Method (GIO2, 0, Serialized)
            {
            }

            Method (GIO0, 1, Serialized)
            {
                Return (Zero)
            }

            Method (GIO1, 2, Serialized)
            {
            }

            Method (PIOD, 1, Serialized)
            {
                Store (Add (Arg0, Zero), Local0)
                OperationRegion (VARM, SystemIO, 0x80, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (Local0, VARR)
            }

            Method (PIO0, 3, Serialized)
            {
                Add (Arg0, Zero, Local0)
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (VARR, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                And (ShiftRight (Local1, Arg1), ShiftRight (Local5, Subtract (0x20, Arg2)), Local2)
                Return (Local2)
            }

            Method (PIO1, 4, Serialized)
            {
                Add (Arg0, Zero, Local0)
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (VARR, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                Add (Arg1, Arg2, Local2)
                Subtract (0x20, Local2, Local2)
                ShiftRight (And (ShiftLeft (Local5, Local2), Local5), Local2, Local2)
                ShiftLeft (ShiftRight (Local2, Arg1), Arg1, Local2)
                ShiftLeft (Arg3, Arg1, Local3)
                Or (And (Local1, XOr (Local5, Local2)), Local3, Local4)
                Store (Local4, VARR)
            }

            Method (PIO6, 2, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        Return (VARP)
                    }
                    Case (One)
                    {
                        Return (VARQ)
                    }
                    Case (0x02)
                    {
                        Return (VARR)
                    }

                }

                Return (Zero)
            }

            Method (PIO7, 3, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        Store (Arg2, VARP)
                    }
                    Case (One)
                    {
                        Store (Arg2, VARQ)
                    }
                    Case (0x02)
                    {
                        Store (Arg2, VARR)
                    }

                }
            }

            Method (PFM8, 4, Serialized)
            {
                Store (Arg0, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                Add (Arg1, Arg2, Local2)
                Subtract (0x20, Local2, Local2)
                ShiftRight (And (ShiftLeft (Local5, Local2), Local5), Local2, Local2)
                ShiftLeft (ShiftRight (Local2, Arg1), Arg1, Local2)
                ShiftLeft (Arg3, Arg1, Local3)
                Or (And (Local1, XOr (Local5, Local2)), Local3, Local4)
                Return (Local4)
            }

            Method (PFM9, 3, Serialized)
            {
                Store (Arg0, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                And (ShiftRight (Local1, Arg1), ShiftRight (Local5, Subtract (0x20, Arg2)), Local2)
                Return (Local2)
            }

            Name (GGGD, "CNL:B360/H310/H370/Z390/C246")
            Method (PFM0, 0, Serialized)
            {
            }

            Method (PFM1, 1, Serialized)
            {
                PFM0 ()
            }

            Method (PFM2, 1, Serialized)
            {
            }

            Name (PFMH, Package (0x02)
            {
                Buffer (0x03)
                {
                     0x02, 0xA0, 0x00                               
                }, 

                Buffer (0x03)
                {
                     0x02, 0xA4, 0x00                               
                }
            })
            Method (PFM7, 0, Serialized)
            {
                Return (RefOf (PFMH))
            }

            Mutex (MEMB, 0x00)
            Method (MEM8, 0, Serialized)
            {
            }

            Method (MEM9, 1, Serialized)
            {
                MEM8 ()
            }

            Method (MEMA, 1, Serialized)
            {
            }

            Method (MEM0, 3, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (VARR, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                And (ShiftRight (Local1, Arg1), ShiftRight (Local5, Subtract (0x20, Arg2)), Local2)
                Return (Local2)
            }

            Method (MEM1, 4, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (VARR, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                Add (Arg1, Arg2, Local2)
                Subtract (0x20, Local2, Local2)
                ShiftRight (And (ShiftLeft (Local5, Local2), Local5), Local2, Local2)
                ShiftLeft (ShiftRight (Local2, Arg1), Arg1, Local2)
                ShiftLeft (Arg3, Arg1, Local3)
                Or (And (Local1, XOr (Local5, Local2)), Local3, Local4)
                Store (Local4, VARR)
            }

            Method (MEM4, 2, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        Return (VARP)
                    }
                    Case (One)
                    {
                        Return (VARQ)
                    }
                    Case (0x02)
                    {
                        Return (VARR)
                    }

                }

                Return (Zero)
            }

            Method (MEM5, 3, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        Store (Arg2, VARP)
                    }
                    Case (One)
                    {
                        Store (Arg2, VARQ)
                    }
                    Case (0x02)
                    {
                        Store (Arg2, VARR)
                    }

                }
            }

            Method (PCI0, 0, Serialized)
            {
            }

            Method (PCI1, 1, Serialized)
            {
                PCI0 ()
            }

            Method (PCI2, 1, Serialized)
            {
            }

            Method (PCI4, 0, Serialized)
            {
                Return (PCIB)
            }

            Name (PCIB, 0xE0000000)
            Method (PCI9, 5, Serialized)
            {
                Store (PCIB, Local0)
                Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
                Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
                Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
                Add (Arg3, Local0, Local0)
                Return (MEM4 (Local0, Arg4))
            }

            Method (PCIA, 6, Serialized)
            {
                Store (PCIB, Local0)
                Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
                Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
                Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
                Add (Arg3, Local0, Local0)
                MEM5 (Local0, Arg4, Arg5)
            }

            Method (PCIE, 4, Serialized)
            {
                Return (PCI9 (Arg0, Arg1, Arg2, Arg3, Zero))
            }

            Method (PCIF, 5, Serialized)
            {
                PCIA (Arg0, Arg1, Arg2, Arg3, Zero, Arg4)
            }

            Method (PCIG, 4, Serialized)
            {
                Return (PCI9 (Arg0, Arg1, Arg2, Arg3, One))
            }

            Method (PCIH, 5, Serialized)
            {
                PCIA (Arg0, Arg1, Arg2, Arg3, One, Arg4)
            }

            Method (PCI7, 4, Serialized)
            {
                Return (PCI9 (Arg0, Arg1, Arg2, Arg3, 0x02))
            }

            Method (PCI8, 5, Serialized)
            {
                PCIA (Arg0, Arg1, Arg2, Arg3, 0x02, Arg4)
            }

            Method (PCI5, 6, Serialized)
            {
                Store (PCIB, Local0)
                Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
                Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
                Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
                Return (MEM0 (Add (Local0, Arg3), Arg4, Arg5))
            }

            Method (PCI6, 7, Serialized)
            {
                Store (PCIB, Local0)
                Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
                Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
                Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
                If (LNotEqual (MEM0 (Local0, Zero, 0x20), Ones))
                {
                    MEM1 (Add (Local0, Arg3), Arg4, Arg5, Arg6)
                }
            }

            Method (SMBB, 0, Serialized)
            {
                Store (PCI7 (Zero, 0x1F, 0x04, 0x20), Local0)
                Return (And (Local0, 0xFFFFFFFE))
            }

            Mutex (SMMB, 0x00)
            Method (SMB8, 0, Serialized)
            {
            }

            Method (SMBG, 1, Serialized)
            {
                SMB8 ()
            }

            Method (SMBH, 1, Serialized)
            {
            }

            OperationRegion (SMBD, SystemIO, SMBB (), 0x20)
            Field (SMBD, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCNT,   8, 
                HCMD,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8
            }

            Method (KILL, 0, Serialized)
            {
                Or (HCNT, 0x02, HCNT)
                Or (HSTS, 0xFF, HSTS)
            }

            Method (CMPL, 0, Serialized)
            {
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Stall (0x32)
                        Decrement (Local0)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (SRDY, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Sleep (One)
                        Decrement (Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Store (0xBF, HSTS)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }

                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Stall (0x32)
                        Decrement (Local0)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (SMB0, 2, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCMD)
                Store (0x44, HCNT)
                If (CMPL ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SMB1, 1, Serialized)
            {
                If (SRDY ())
                {
                    Return (0xFFFF)
                }

                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (0x44, HCNT)
                If (CMPL ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SMB2, 3, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCMD)
                Store (Arg2, DAT0)
                Store (0x48, HCNT)
                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (Zero)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMB3, 2, Serialized)
            {
                If (SRDY ())
                {
                    Return (0xFFFF)
                }

                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCMD)
                Store (0x48, HCNT)
                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (0xFFFF)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (DAT0)
                    }
                }

                Return (0xFFFF)
            }

            Method (SMB4, 3, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCMD)
                And (Arg2, 0xFF, DAT0)
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT1)
                Store (0x4C, HCNT)
                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (Zero)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMB5, 2, Serialized)
            {
                If (SRDY ())
                {
                    Return (Ones)
                }

                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCMD)
                Store (0x4C, HCNT)
                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (Ones)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (Or (ShiftLeft (DAT1, 0x08), DAT0))
                    }
                }

                Return (Ones)
            }

            Method (SMB9, 4, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCMD)
                Store (SizeOf (Arg2), DAT0)
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR)
                Store (0x54, HCNT)
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (0x80, HSTS)
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR)
                    }
                }

                If (CMPL ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SMBA, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100){})
                If (SRDY ())
                {
                    Return (Zero)
                }

                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCMD)
                Store (0x54, HCNT)
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }

                If (LNot (Local0))
                {
                    KILL ()
                    Return (Zero)
                }

                Store (DAT0, Index (TBUF, Zero))
                Store (0x80, HSTS)
                Store (One, Local1)
                While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (HBDR, Index (TBUF, Local1))
                    Store (0x80, HSTS)
                    Increment (Local1)
                }

                If (CMPL ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (SMBF, 1, Serialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    SMB2 (0x6C, Zero, Zero)
                }
                Else
                {
                    SMB2 (0x6E, Zero, Zero)
                }
            }

            Method (SMBE, 2, Serialized)
            {
                Store (Zero, Local0)
                While (LLess (Local0, 0x0200))
                {
                    If (LEqual (Local0, Zero))
                    {
                        SMBF (Zero)
                    }

                    If (LEqual (Local0, 0x0100))
                    {
                        SMBF (One)
                    }

                    Store (SMB3 (Arg0, Mod (Local0, 0x0100)), Local1)
                    If (LEqual (Local1, 0xFFFF))
                    {
                        Return (0xFFFF)
                    }
                    Else
                    {
                        Store (Local1, Index (Arg1, Local0))
                        Increment (Local0)
                    }
                }

                SMBF (Zero)
                Return (Zero)
            }

            Method (SMM9, 1, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (Zero, Local0)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMMA, 1, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Store (Zero, Local0)
                    Release (SMMB)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM0, 3, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB0 (Arg1, Arg2), Local0)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (SMM1, 2, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Store (Zero, Local0)
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB1 (Arg1), Local0)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (SMM2, 4, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB2 (Arg1, Arg2, Arg3), Local0)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (SMM3, 3, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB3 (Arg1, Arg2), Local0)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (SMM4, 4, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB4 (Arg1, Arg2, Arg3), Local0)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (SMM5, 3, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB5 (Arg1, Arg2), Local0)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (SMM6, 5, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Store (Zero, Local0)
                    Acquire (SMMB, 0xFFFF)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (SMM7, 4, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Store (Zero, Local0)
                    Acquire (SMMB, 0xFFFF)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (SMM8, 3, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMBE (Arg1, Arg2), Local0)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (MM17, 1, NotSerialized)
            {
                Store (Arg0, Local7)
                Store (Zero, Local0)
                Store ("", Local1)
                While (LLess (Local0, SizeOf (Local7)))
                {
                    If (LNotEqual (Local0, Zero))
                    {
                        Concatenate (Local1, ":", Local1)
                    }

                    Store (ToHexString (DerefOf (Index (Local7, Local0)), Local2), Local6)
                    Concatenate (Local1, Local6, Local1)
                    Increment (Local0)
                }

                Return (Local1)
            }

            Method (MM18, 1, NotSerialized)
            {
                Store (Arg0, Local7)
                Store (Zero, Local0)
                Store ("", Local1)
                While (LLess (Local0, SizeOf (Local7)))
                {
                    If (LNotEqual (Local0, Zero))
                    {
                        Concatenate (Local1, ":", Local1)
                    }

                    Concatenate (Local1, DerefOf (Index (Local7, Local0)), Local1)
                    Increment (Local0)
                }

                Return (Local1)
            }

            Method (MM00, 0, NotSerialized)
            {
                If (LAnd (LEqual (CCNT, 0x08), LEqual (E8CV, One)))
                {
                    Return (SizeOf (GSA8))
                }
                Else
                {
                    Return (SizeOf (GSAT))
                }
            }

            Method (MM01, 1, NotSerialized)
            {
                If (LAnd (LEqual (CCNT, 0x08), LEqual (E8CV, One)))
                {
                    Store (Zero, Local0)
                    Store (SizeOf (GSA8), Local1)
                    While (LLess (Local0, Local1))
                    {
                        If (LEqual (DerefOf (Index (DerefOf (Index (GSA8, Local0)), Zero)), Arg0))
                        {
                            Return (DerefOf (Index (GSA8, Local0)))
                        }

                        Increment (Local0)
                    }
                }
                Else
                {
                    Store (Zero, Local0)
                    Store (SizeOf (GSAT), Local1)
                    While (LLess (Local0, Local1))
                    {
                        If (LEqual (DerefOf (Index (DerefOf (Index (GSAT, Local0)), Zero)), Arg0))
                        {
                            Return (DerefOf (Index (GSAT, Local0)))
                        }

                        Increment (Local0)
                    }
                }

                Return (Ones)
            }

            Method (MM02, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (Local0, One)))
                }

                Return (Ones)
            }

            Method (MM04, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (Local0, 0x02)))
                }

                Return (Ones)
            }

            Method (MM14, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (Local0, 0x03)))
                }

                Return (Ones)
            }

            Method (MM03, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (Local0, 0x04)))
                }

                Return (Ones)
            }

            Method (MM06, 2, Serialized)
            {
                Store (MM03 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Name (IFPK, Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    If (LGreaterEqual (Arg1, SizeOf (Local0)))
                    {
                        Return (Ones)
                    }

                    Store (DerefOf (Index (Local0, Arg1)), Local1)
                    If (LEqual (ObjectType (Local1), 0x04))
                    {
                        Store (DerefOf (Index (Local1, Zero)), Index (IFPK, Zero))
                        Store (DerefOf (Index (Local1, One)), Index (IFPK, One))
                        Store (DerefOf (Index (DerefOf (Index (Local1, 0x02)), Zero)), Index (IFPK, 0x02))
                        Store (DerefOf (Index (DerefOf (Index (Local1, 0x02)), One)), Index (IFPK, 0x03))
                        Store (DerefOf (Index (DerefOf (Index (Local1, 0x02)), 0x02)), Index (IFPK, 0x04))
                        Store (DerefOf (Index (DerefOf (Index (Local1, 0x02)), 0x03)), Index (IFPK, 0x05))
                        Return (IFPK)
                    }
                }

                Return (Ones)
            }

            Method (MM07, 2, Serialized)
            {
                Store (MM03 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Name (IFPK, Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Store (DerefOf (Index (Local0, Arg1)), Local1)
                    If (LEqual (ObjectType (Local1), 0x04))
                    {
                        Store (DerefOf (Index (Local1, Zero)), Index (IFPK, Zero))
                        Store (DerefOf (Index (Local1, One)), Index (IFPK, One))
                        Store (DerefOf (Index (DerefOf (Index (Local1, 0x03)), Zero)), Index (IFPK, 0x02))
                        Store (DerefOf (Index (DerefOf (Index (Local1, 0x03)), One)), Index (IFPK, 0x03))
                        Store (DerefOf (Index (DerefOf (Index (Local1, 0x03)), 0x02)), Index (IFPK, 0x04))
                        Store (DerefOf (Index (DerefOf (Index (Local1, 0x03)), 0x03)), Index (IFPK, 0x05))
                        Return (IFPK)
                    }
                }

                Return (Ones)
            }

            Method (MM10, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (MM11, 2, NotSerialized)
            {
                Return (Zero)
            }

            Method (MM12, 2, NotSerialized)
            {
                Store (Arg1, Local6)
                Store (Zero, Local0)
                While (One)
                {
                    Store (MM06 (Arg0, Local0), Local1)
                    If (LEqual (ObjectType (Local1), 0x04))
                    {
                        If (LLessEqual (DerefOf (Index (Local1, 0x02)), DerefOf (Index (Local1, 0x03))))
                        {
                            If (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x02))), LLessEqual (Local6, DerefOf (Index (Local1, 0x03)))))
                            {
                                Subtract (Local6, DerefOf (Index (Local1, 0x02)), Local3)
                                Store (DerefOf (Index (Local1, 0x04)), Local5)
                                If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                                {
                                    Store (MM07 (Arg0, Local0), Local2)
                                    Divide (Local3, DerefOf (Index (Local1, 0x04)), , Local3)
                                    If (LLessEqual (DerefOf (Index (Local2, 0x02)), DerefOf (Index (Local2, 0x03))))
                                    {
                                        Add (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04))), Local4)
                                    }
                                    Else
                                    {
                                        Subtract (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04))), Local4)
                                    }

                                    Return (Local4)
                                }
                            }
                        }
                        ElseIf (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x03))), LLessEqual (Local6, DerefOf (Index (Local1, 0x02)))))
                        {
                            Subtract (DerefOf (Index (Local1, 0x02)), Local6, Local3)
                            If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                            {
                                Store (MM07 (Arg0, Local0), Local2)
                                Divide (Local3, DerefOf (Index (Local1, 0x04)), , Local3)
                                If (LLessEqual (DerefOf (Index (Local2, 0x02)), DerefOf (Index (Local2, 0x03))))
                                {
                                    Add (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04))), Local4)
                                }
                                Else
                                {
                                    Subtract (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04))), Local4)
                                }

                                Return (Local4)
                            }
                        }

                        Increment (Local0)
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM13, 2, NotSerialized)
            {
                Store (Arg1, Local6)
                Store (Zero, Local0)
                While (One)
                {
                    Store (MM07 (Arg0, Local0), Local1)
                    If (LEqual (ObjectType (Local1), 0x04))
                    {
                        If (LLessEqual (DerefOf (Index (Local1, 0x02)), DerefOf (Index (Local1, 0x03))))
                        {
                            If (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x02))), LLessEqual (Local6, DerefOf (Index (Local1, 0x03)))))
                            {
                                Subtract (Local6, DerefOf (Index (Local1, 0x02)), Local3)
                                If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                                {
                                    Store (MM06 (Arg0, Local0), Local2)
                                    Divide (Local3, DerefOf (Index (Local1, 0x04)), , Local3)
                                    If (LLessEqual (DerefOf (Index (Local2, 0x02)), DerefOf (Index (Local2, 0x03))))
                                    {
                                        Add (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04))), Local4)
                                    }
                                    Else
                                    {
                                        Subtract (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04))), Local4)
                                    }

                                    Return (Local4)
                                }
                            }
                        }
                        ElseIf (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x03))), LLessEqual (Local6, DerefOf (Index (Local1, 0x02)))))
                        {
                            Subtract (DerefOf (Index (Local1, 0x02)), Local6, Local3)
                            If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                            {
                                Store (MM06 (Arg0, Local0), Local2)
                                Divide (Local3, DerefOf (Index (Local1, 0x04)), , Local3)
                                If (LLessEqual (DerefOf (Index (Local2, 0x02)), DerefOf (Index (Local2, 0x03))))
                                {
                                    Add (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04))), Local4)
                                }
                                Else
                                {
                                    Subtract (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04))), Local4)
                                }

                                Return (Local4)
                            }
                        }

                        Increment (Local0)
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM08, 1, NotSerialized)
            {
                Store (MM10 (Arg0), Local6)
                Store (Zero, Local0)
                While (One)
                {
                    Store (MM07 (Arg0, Local0), Local1)
                    If (LNotEqual (Local1, Ones))
                    {
                        If (LLessEqual (DerefOf (Index (Local1, 0x02)), DerefOf (Index (Local1, 0x03))))
                        {
                            If (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x02))), LLessEqual (Local6, DerefOf (Index (Local1, 0x03)))))
                            {
                                Subtract (Local6, DerefOf (Index (Local1, 0x02)), Local3)
                                If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                                {
                                    Store (MM06 (Arg0, Local0), Local2)
                                    Add (DerefOf (Index (Local2, 0x02)), Multiply (Divide (Local3, DerefOf (Index (Local1, 0x04)), ), DerefOf (Index (Local2, 0x04))), Local4)
                                    Return (Local4)
                                }
                            }
                        }
                        ElseIf (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x03))), LLessEqual (Local6, DerefOf (Index (Local1, 0x02)))))
                        {
                            Subtract (DerefOf (Index (Local1, 0x02)), Local6, Local3)
                            If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                            {
                                Store (MM06 (Arg0, Local0), Local2)
                                Add (DerefOf (Index (Local2, 0x02)), Multiply (Divide (Local3, DerefOf (Index (Local1, 0x04)), ), DerefOf (Index (Local2, 0x04))), Local4)
                                Return (Local4)
                            }
                        }

                        Increment (Local0)
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM09, 2, NotSerialized)
            {
                Store (Zero, Local0)
                While (One)
                {
                    Store (MM06 (Arg0, Local0), Local1)
                    If (LEqual (ObjectType (Local1), 0x04))
                    {
                        If (LAnd (LGreaterEqual (Arg1, DerefOf (Index (Local1, 0x02))), LLessEqual (Arg1, DerefOf (Index (Local1, 0x03)))))
                        {
                            Subtract (Arg1, DerefOf (Index (Local1, 0x02)), Local3)
                            If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                            {
                                Store (MM07 (Arg0, Local0), Local2)
                                Add (DerefOf (Index (Local2, 0x02)), Multiply (Divide (Local3, DerefOf (Index (Local1, 0x04)), ), DerefOf (Index (Local2, 0x04))), Local4)
                                Return (Zero)
                            }
                        }

                        Increment (Local0)
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM15, 2, NotSerialized)
            {
                Store (MM14 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (LEqual (DerefOf (Index (Local0, One)), One))
                    {
                        Store (DerefOf (Index (Local0, 0x02)), Local4)
                        Store (SizeOf (Local4), Local2)
                        Store (Zero, Local3)
                        While (LLess (Local3, Local2))
                        {
                            If (LEqual (Arg1, DerefOf (Index (Local4, Local3))))
                            {
                                Return (DerefOf (Index (DerefOf (Index (Local0, 0x03)), Local3)))
                            }

                            Increment (Local3)
                        }
                    }
                }

                Return (Ones)
            }

            Method (MM16, 2, NotSerialized)
            {
                Store (MM14 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (LEqual (DerefOf (Index (Local0, One)), One))
                    {
                        Store (Match (DerefOf (Index (Local0, 0x03)), MEQ, Arg1, MTR, Zero, Zero), Local1)
                        If (LNotEqual (Local1, Ones))
                        {
                            Return (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Local1)))
                        }
                    }
                }

                Return ("Unknown")
            }

            Name (GSAT, Package (0x0E)
            {
                Package (0x04)
                {
                    0x1B, 
                    "CPU Vcore Loadline Calibration", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100028
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x07)
                        {
                            "Standard", 
                            "Low", 
                            "Medium", 
                            "High", 
                            "Turbo", 
                            "Extreme", 
                            "Ultra Extreme"
                        }, 

                        Package (0x07)
                        {
                            0xD2, 
                            0x9D, 
                            0x78, 
                            0x69, 
                            0x34, 
                            0x1F, 
                            Zero
                        }, 

                        "Standard"
                    }
                }, 

                Package (0x06)
                {
                    0x06, 
                    "CPU VCore DVID Offset", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISL69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100023
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0xFFFFFED4, 
                            0x0190, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0xFFFFFED4, 
                                Ones, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0xFED4, 
                                0xFFFF, 
                                One, 
                                0x03E8
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                Zero, 
                                0x0190, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0190, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    Zero
                }, 

                Package (0x06)
                {
                    0x05, 
                    "CPU VCore", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100021
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0258, 
                            0x0708, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x01)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0258, 
                                0x0708, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x0258, 
                                0x0708, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    0x04B0
                }, 

                Package (0x04)
                {
                    0x80000005, 
                    "CPU VCore Mode", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x000204F0
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x03)
                        {
                            "Auto", 
                            "Dynamic Offset", 
                            "Static"
                        }, 

                        Package (0x03)
                        {
                            Zero, 
                            0x02, 
                            0x03
                        }, 

                        "Auto"
                    }
                }, 

                Package (0x06)
                {
                    0x0A, 
                    "CPU VAXG", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_A", 
                        0x82, 
                        Zero, 
                        0x00100021
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            Zero, 
                            0x05DC, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x01)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                Zero, 
                                0x05DC, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x05DC, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x04)
                {
                    0x8000000A, 
                    "GFX VCore Mode", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_A", 
                        0x82, 
                        Zero, 
                        0x000204F0
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x02)
                        {
                            "Auto", 
                            "Static"
                        }, 

                        Package (0x02)
                        {
                            Zero, 
                            0x03
                        }, 

                        "Auto"
                    }
                }, 

                Package (0x06)
                {
                    0x62, 
                    "CPU VCCIO", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF2", 
                        0x2A, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03BB, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0xA1, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03C0, 
                                0x05DC, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x6C, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03C0
                }, 

                Package (0x06)
                {
                    0x09, 
                    "CPU System Agent", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF3", 
                        0x2A, 
                        0x03, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x03)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03D4, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0xB5, 
                                0x91, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03D9, 
                                0x041F, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8F, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0424, 
                                0x05DC, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x58, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0424
                }, 

                Package (0x06)
                {
                    0x0C, 
                    "PCH Core", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF1", 
                        0x20, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x0514, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03D4, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8A, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x0514, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0F, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x06)
                {
                    0x0F, 
                    "DRAM Voltage (CH A/B)", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF3", 
                        0x20, 
                        0x03, 
                        0x0F
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x03E8, 
                            0x07D0, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x03)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x04A6, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x94, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04B0, 
                                0x05D2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x1D, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F3", 
                            Zero, 
                            Package (0x04)
                            {
                                0x05DC, 
                                0x07D0, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x1F, 
                                0x51, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x04B0
                }, 

                Package (0x06)
                {
                    0x18, 
                    "DDRVPP (CH A/B) Voltage", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF2", 
                        0x20, 
                        0x02, 
                        0x18
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x07BC, 
                            0x0B04, 
                            0x28, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x07BC, 
                                0x099C, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8D, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x09C4, 
                                0x0B04, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x08, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x09C4
                }, 

                Package (0x06)
                {
                    0x10, 
                    "DRAM CH(A/B) Termination", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF1", 
                        0x2A, 
                        One, 
                        0x10
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x01C2, 
                            0x03E8, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x01C2, 
                                0x0258, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x1E, 
                                Zero, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x025D, 
                                0x03E8, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x81, 
                                0xD0, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0258
                }, 

                Package (0x06)
                {
                    0x75, 
                    "VCCPLL_OC", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF1", 
                        0x26, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x032A, 
                            0x0BC2, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x032A, 
                                0x04CE, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04E2, 
                                0x0BC2, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x58, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x04E2
                }, 

                Package (0x06)
                {
                    0x73, 
                    "VCC Substained", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF3", 
                        0x26, 
                        0x03, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03F2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03FC, 
                                0x05DC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x30, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03FC
                }
            })
            Name (GSA8, Package (0x0E)
            {
                Package (0x04)
                {
                    0x1B, 
                    "CPU Vcore Loadline Calibration", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100028
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x07)
                        {
                            "Standard", 
                            "Low", 
                            "Medium", 
                            "High", 
                            "Turbo", 
                            "Extreme", 
                            "Ultra Extreme"
                        }, 

                        Package (0x07)
                        {
                            0xA0, 
                            0x78, 
                            0x60, 
                            0x50, 
                            0x28, 
                            0x18, 
                            Zero
                        }, 

                        "Standard"
                    }
                }, 

                Package (0x06)
                {
                    0x06, 
                    "CPU VCore DVID Offset", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISL69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100023
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0xFFFFFED4, 
                            0x0190, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0xFFFFFED4, 
                                Ones, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0xFED4, 
                                0xFFFF, 
                                One, 
                                0x03E8
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                Zero, 
                                0x0190, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0190, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    Zero
                }, 

                Package (0x06)
                {
                    0x05, 
                    "CPU VCore", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100021
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0258, 
                            0x0708, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x01)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0258, 
                                0x0708, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x0258, 
                                0x0708, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    0x04B0
                }, 

                Package (0x04)
                {
                    0x80000005, 
                    "CPU VCore Mode", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x000204F0
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x03)
                        {
                            "Auto", 
                            "Dynamic Offset", 
                            "Static"
                        }, 

                        Package (0x03)
                        {
                            Zero, 
                            0x02, 
                            0x03
                        }, 

                        "Auto"
                    }
                }, 

                Package (0x06)
                {
                    0x0A, 
                    "CPU VAXG", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_A", 
                        0x82, 
                        Zero, 
                        0x00100021
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            Zero, 
                            0x05DC, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x01)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                Zero, 
                                0x05DC, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x05DC, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x04)
                {
                    0x8000000A, 
                    "GFX VCore Mode", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_A", 
                        0x82, 
                        Zero, 
                        0x000204F0
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x02)
                        {
                            "Auto", 
                            "Static"
                        }, 

                        Package (0x02)
                        {
                            Zero, 
                            0x03
                        }, 

                        "Auto"
                    }
                }, 

                Package (0x06)
                {
                    0x62, 
                    "CPU VCCIO", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF2", 
                        0x2A, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03BB, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0xA1, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03C0, 
                                0x05DC, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x6C, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03C0
                }, 

                Package (0x06)
                {
                    0x09, 
                    "CPU System Agent", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF3", 
                        0x2A, 
                        0x03, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x03)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03D4, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0xB5, 
                                0x91, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03D9, 
                                0x041F, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8F, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0424, 
                                0x05DC, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x58, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0424
                }, 

                Package (0x06)
                {
                    0x0C, 
                    "PCH Core", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF1", 
                        0x20, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x0514, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03D4, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8A, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x0514, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0F, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x06)
                {
                    0x0F, 
                    "DRAM Voltage (CH A/B)", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF3", 
                        0x20, 
                        0x03, 
                        0x0F
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x03E8, 
                            0x07D0, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x03)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x04A6, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x94, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04B0, 
                                0x05D2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x1D, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F3", 
                            Zero, 
                            Package (0x04)
                            {
                                0x05DC, 
                                0x07D0, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x1F, 
                                0x51, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x04B0
                }, 

                Package (0x06)
                {
                    0x18, 
                    "DDRVPP (CH A/B) Voltage", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF2", 
                        0x20, 
                        0x02, 
                        0x18
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x07BC, 
                            0x0B04, 
                            0x28, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x07BC, 
                                0x099C, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8D, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x09C4, 
                                0x0B04, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x08, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x09C4
                }, 

                Package (0x06)
                {
                    0x10, 
                    "DRAM CH(A/B) Termination", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF1", 
                        0x2A, 
                        One, 
                        0x10
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x01C2, 
                            0x03E8, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x01C2, 
                                0x0258, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x1E, 
                                Zero, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x025D, 
                                0x03E8, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x81, 
                                0xD0, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0258
                }, 

                Package (0x06)
                {
                    0x75, 
                    "VCCPLL_OC", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF1", 
                        0x26, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x032A, 
                            0x0BC2, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x032A, 
                                0x04CE, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04E2, 
                                0x0BC2, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x58, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x04E2
                }, 

                Package (0x06)
                {
                    0x73, 
                    "VCC Substained", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF3", 
                        0x26, 
                        0x03, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03F2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03FC, 
                                0x05DC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x30, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03FC
                }
            })
            Method (IRCU, 1, Serialized)
            {
                Return (Ones)
            }

            Method (IRCE, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCF, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRC9, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCA, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCC, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCB, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCD, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCM, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCN, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCO, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCP, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCQ, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCR, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCS, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCT, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (ISM0, 1, Serialized)
            {
                Return (Zero)
            }

            Method (ISMD, 1, Serialized)
            {
                Return (Zero)
            }

            Method (ISMF, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x000204F0, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local2)
                Store (PFM9 (Local2, And (ShiftRight (Local1, 0x08), 0xFF), And (ShiftRight (Local1, 0x10), 0xFF)), Local2)
                Return (Local2)
            }

            Method (ISMG, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x000204F0, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local2)
                Store (PFM8 (Local2, And (ShiftRight (Local1, 0x08), 0xFF), And (ShiftRight (Local1, 0x10), 0xFF), Arg2), Local2)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), Local2)
                Return (Zero)
            }

            Method (ISM5, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100028, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local3)
                Return (Local3)
            }

            Method (ISM6, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100028, Local1)
                Store (0x000800E7, Local2)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                SMM2 (0x02, Arg0, And (Local2, 0xFF), One)
                Return (Zero)
            }

            Method (ISME, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x0010008B, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Return (SMM5 (0x02, Arg0, And (Local1, 0xFF)))
            }

            Method (ISM4, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100023, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Return (SMM5 (0x02, Arg0, And (Local1, 0xFF)))
            }

            Method (ISM3, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100023, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISM2, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100021, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Return (SMM5 (0x02, Arg0, And (Local1, 0xFF)))
            }

            Method (ISM1, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100021, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISM7, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100055, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local3)
                Return (Local3)
            }

            Method (ISM8, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100055, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISM9, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x0010005B, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local3)
                Return (Local3)
            }

            Method (ISMA, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x0010005B, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM2 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISK0, 1, Serialized)
            {
                If (ISMD (Arg0))
                {
                    Return (Zero)
                }

                Return (Ones)
            }

            Method (ISK5, 2, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    Return (ISM5 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK6, 3, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    ISM6 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK4, 2, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    Return (ISM4 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK3, 3, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    ISM3 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK2, 2, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    Return (ISM2 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK1, 3, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    ISM1 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK7, 2, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    Return (ISM7 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK8, 3, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    ISM8 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK9, 2, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    Return (ISM9 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISKA, 3, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    ISMA (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (NCT0, 1, Serialized)
            {
                Return (Or (SMM3 (0x02, Arg0, 0x5D), ShiftLeft (SMM3 (0x02, Arg0, 0x5E), 0x08)))
            }

            Method (NCT1, 2, Serialized)
            {
                Return (SMM3 (0x02, Arg0, Arg1))
            }

            Method (NCT2, 3, Serialized)
            {
                Store (SMM2 (0x02, Arg0, Arg1, Arg2), Local1)
                Return (Local1)
            }

            Name (EZVT, 0xFF)
            Method (EZV7, 1, Serialized)
            {
                EZV4 (0x0C, EZVT)
                PIOD (0x66)
            }

            Method (EZV8, 1, Serialized)
            {
                If (LEqual (Arg0, 0x05)){}
                Else
                {
                    Store (EZV3 (0x0C), EZVT)
                }
            }

            Method (EZV5, 0, Serialized)
            {
                EZVM ()
            }

            Method (EZVM, 0, Serialized)
            {
            }

            Name (EZW2, "1.0")
            Name (EZVZ, "")
            Method (EZVY, 3, NotSerialized)
            {
                Store (EZVZ, Local7)
                Store (DerefOf (Index (Local7, 0x02)), Local6)
                Return (Zero)
            }

            Method (EZV6, 0, Serialized)
            {
                Return (0x0143)
            }

            Method (EZV0, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Store (DerefOf (Index (Local0, One)), Local1)
                    If (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x03)), One)), Zero))
                    {
                        Store ("I", Local7)
                        Store (ToHexString (DerefOf (Index (Local0, 0x05)), Local4), Local3)
                        Store (MM17 (DerefOf (Index (DerefOf (Index (Local0, 0x03)), 0x02))), Local2)
                    }
                    Else
                    {
                        Store ("S", Local7)
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x03)), 0x04)), Local3)
                        Store (MM18 (DerefOf (Index (DerefOf (Index (Local0, 0x03)), 0x02))), Local2)
                    }

                    Concatenate (Local1, ":", Local1)
                    Store (ToHexString (DerefOf (Index (DerefOf (Index (Local0, 0x03)), Zero))), Local4)
                    Concatenate (Local1, Local4, Local1)
                    Concatenate (Local1, ":", Local1)
                    Concatenate (Local1, Local7, Local1)
                    Concatenate (Local1, ":", Local1)
                    Concatenate (Local1, Local3, Local1)
                    Concatenate (Local1, ":", Local1)
                    Concatenate (Local1, Local2, Local1)
                    Return (Local1)
                }

                Return (Ones)
            }

            Method (EZVC, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x04)))
                }

                Return (Ones)
            }

            Method (EZVB, 1, NotSerialized)
            {
                Store (EZVC (Arg0), Local0)
                Store (MM01 (Local0), Local1)
                If (LEqual (ObjectType (Local1), 0x04))
                {
                    Return (DerefOf (Index (Local1, 0x02)))
                }

                Return (Ones)
            }

            Method (EZV1, 1, NotSerialized)
            {
                Store (EZVB (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Store (Zero, Local2)
                    If (LEqual (Local2, DerefOf (Index (Local0, 0x03))))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Return (Ones)
            }

            Method (EZV2, 2, NotSerialized)
            {
                Store (EZVB (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (LEqual (Arg1, One))
                    {
                        Store (DerefOf (Index (Local0, 0x03)), Local1)
                    }
                    Else
                    {
                        Store (DerefOf (Index (Local0, 0x04)), Local1)
                    }
                }
            }

            Method (EZV3, 1, Serialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (Zero){}
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), Zero))
                    {
                        Store (NCT1 (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03))), Local1)
                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM13 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x08))
                    {
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local7)
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local6)
                        Switch (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x04)))
                        {
                            Case (0x00100021)
                            {
                                Store (ISME (Local7, Local6), Local1)
                                If (LEqual (Local1, Zero))
                                {
                                    Return (Local1)
                                }

                                If (LEqual (Arg0, 0x0A))
                                {
                                    If (LGreater (Local1, 0x05DC))
                                    {
                                        Store (Zero, Local1)
                                    }
                                }
                            }
                            Case (0x00100023)
                            {
                                Store (ISM4 (Local7, Local6), Local1)
                                If (LEqual (Local1, Zero))
                                {
                                    Return (Local1)
                                }
                            }
                            Default
                            {
                                Store (Ones, Local1)
                            }

                        }

                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM13 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                }

                Return (Ones)
            }

            Method (EZV4, 2, Serialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (Zero){}
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), Zero))
                    {
                        Store (MM12 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (NCT2 (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local2), Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x08))
                    {
                        Store (MM12 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local7)
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local6)
                            Switch (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x04)))
                            {
                                Case (0x00100021)
                                {
                                    Store (ISMG (Local7, Local6, 0x03), Local1)
                                    Store (ISM3 (Local7, Local6, Zero), Local1)
                                    Store (ISM1 (Local7, Local6, Local2), Local1)
                                }
                                Case (0x00100023)
                                {
                                    Store (ISMG (Local7, Local6, 0x02), Local1)
                                    Store (ISM3 (Local7, Local6, Local2), Local1)
                                }
                                Default
                                {
                                    Store (0xFFFF, Local1)
                                }

                            }

                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (Ones)
                    }
                }

                Return (One)
            }

            Method (EZV9, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (Local0, 0x05)))
                }

                Return (One)
            }

            Method (EZVA, 1, NotSerialized)
            {
                Store (MM02 (Arg0), Local0)
                Return (Local0)
            }

            Method (EZVF, 2, NotSerialized)
            {
                Store (MM13 (Arg0, Arg1), Local0)
                Return (Local0)
            }

            Method (EZVG, 2, NotSerialized)
            {
                Store (MM12 (Arg0, Arg1), Local0)
                Return (Local0)
            }

            Method (EZVH, 1, Serialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (Zero){}
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x08))
                    {
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local7)
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local6)
                        Switch (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x04)))
                        {
                            Case (0x000204F0)
                            {
                                Store (ISMF (Local7, Local6), Local1)
                            }
                            Case (0x00100028)
                            {
                                Store (ISM5 (Local7, Local6), Local1)
                            }
                            Default
                            {
                                Store (Ones, Local1)
                            }

                        }

                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), Zero))
                    {
                        Store (NCT1 (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03))), Local1)
                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x03))
                    {
                        Store (\_SB.GGOV (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02))), Local1)
                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x0A))
                    {
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local3)
                        Store (Zero, Local2)
                        Store (Zero, Local1)
                        While (LLess (Local2, Local3))
                        {
                            Or (ShiftLeft (Local1, One), \_SB.GGOV (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Add (0x03, Local2)))), Local1)
                            Increment (Local2)
                        }

                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x0C))
                    {
                        Subtract (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), 0x10, Local4)
                        Store (PIO0 (Add (0x0A00, ShiftRight (Local4, 0x04)), And (Local4, 0x0F), One), Local1)
                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x0D))
                    {
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local3)
                        Store (Zero, Local2)
                        Store (Zero, Local1)
                        While (LLess (Local2, Local3))
                        {
                            Subtract (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Add (0x03, Local2))), 0x10, Local4)
                            Or (ShiftLeft (Local1, One), PIO0 (Add (0x0A00, ShiftRight (Local4, 0x04)), And (Local4, 0x0F), One), Local1)
                            Increment (Local2)
                        }

                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                }

                Return (Ones)
            }

            Method (EZVI, 2, Serialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (Zero){}
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x08))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local7)
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local6)
                            Switch (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x04)))
                            {
                                Case (0x000204F0)
                                {
                                    If (LEqual (Local2, 0x03))
                                    {
                                        If (LEqual (Arg0, 0x80000005))
                                        {
                                            Store (0x04B0, Local1)
                                            Store (ISM1 (Local7, Local6, Local1), Local1)
                                            ISM3 (Local7, Local6, Zero)
                                        }

                                        If (LEqual (Arg0, 0x8000000A))
                                        {
                                            Store (0x04B0, Local1)
                                            Store (ISM1 (Local7, Local6, Local1), Local1)
                                            ISM3 (Local7, Local6, Zero)
                                        }

                                        Store (ISMG (Local7, Local6, Local2), Local1)
                                        If (LEqual (Arg0, 0x80000005))
                                        {
                                            Store (0x04B0, Local1)
                                            Store (ISM1 (Local7, Local6, Local1), Local1)
                                            ISM3 (Local7, Local6, Zero)
                                        }

                                        If (LEqual (Arg0, 0x8000000A))
                                        {
                                            Store (0x04B0, Local1)
                                            Store (ISM1 (Local7, Local6, Local1), Local1)
                                            ISM3 (Local7, Local6, Zero)
                                        }
                                    }

                                    If (LEqual (Local2, 0x02))
                                    {
                                        Store (ISMG (Local7, Local6, Local2), Local1)
                                        Store (ISM3 (Local7, Local6, Zero), Local1)
                                    }

                                    If (LEqual (Local2, Zero))
                                    {
                                        Store (ISMG (Local7, Local6, Local2), Local1)
                                        Store (ISM3 (Local7, Local6, Zero), Local1)
                                    }
                                }
                                Case (0x00100028)
                                {
                                    Store (ISM6 (Local7, Local6, Local2), Local1)
                                }
                                Default
                                {
                                    Store (0xFFFF, Local1)
                                }

                            }

                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (One)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), Zero))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (NCT2 (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local2), Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (One)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x03))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            \_SB.SGOV (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local2)
                            Store (Zero, Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x0A))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local3)
                            Store (Zero, Local1)
                            While (LLess (Local1, Local3))
                            {
                                And (ShiftRight (Local2, Subtract (Subtract (Local3, Local1), One)), One, Local4)
                                \_SB.SGOV (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Add (0x03, Local1))), Local4)
                                Increment (Local1)
                            }

                            Store (Zero, Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x0C))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Subtract (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Add (0x03, Local1))), 0x10, Local5)
                            PIO1 (Add (0x0A00, ShiftRight (Local5, 0x04)), And (Local5, 0x0F), One, Local2)
                            Store (Zero, Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 0x0D))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local3)
                            Store (Zero, Local1)
                            While (LLess (Local1, Local3))
                            {
                                And (ShiftRight (Local2, Subtract (Subtract (Local3, Local1), One)), One, Local4)
                                Subtract (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Add (0x03, Local1))), 0x10, Local5)
                                PIO1 (Add (0x0A00, ShiftRight (Local5, 0x04)), And (Local5, 0x0F), One, Local4)
                                Increment (Local1)
                            }

                            Store (Zero, Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Return (One)
            }

            Method (EZVJ, 2, NotSerialized)
            {
                Store (MM16 (Arg0, Arg1), Local0)
                Return (Local0)
            }

            Method (EZVK, 2, NotSerialized)
            {
                Store (MM15 (Arg0, Arg1), Local0)
                Return (Local0)
            }

            Name (SIOG, 0x0A45)
            OperationRegion (SIO1, SystemIO, SIOG, 0x02)
            Field (SIO1, ByteAcc, NoLock, WriteAsZeros)
            {
                SIO2,   8, 
                SIO3,   8
            }

            IndexField (SIO2, SIO3, ByteAcc, NoLock, Preserve)
            {
                Offset (0x0B), 
                FTD1,   3, 
                FTD2,   3, 
                Offset (0x0D), 
                FTA1,   8, 
                FTA2,   8, 
                FTA3,   8, 
                Offset (0x13), 
                FAE1,   1, 
                FAE2,   1, 
                FAE3,   1, 
                REV1,   1, 
                FTE1,   1, 
                FTE2,   1, 
                FTE3,   1, 
                Offset (0x14), 
                FBE1,   1, 
                FBE2,   1, 
                FBE3,   1, 
                REV2,   4, 
                Offset (0x15), 
                FP10,   7, 
                FP17,   1, 
                FP20,   7, 
                FP27,   1, 
                FP30,   7, 
                FP37,   1, 
                FTB1,   8, 
                FTB2,   8, 
                FTB3,   8, 
                Offset (0x29), 
                FET1,   8, 
                FET2,   8, 
                FET3,   8, 
                FET4,   8, 
                FET5,   8, 
                FET6,   8, 
                Offset (0x4C), 
                FTA6,   8, 
                FTB6,   8, 
                Offset (0x5C), 
                FBEC,   3, 
                Offset (0x60), 
                FC10,   8, 
                FC11,   8, 
                FC12,   8, 
                FC13,   8, 
                FC14,   8, 
                FC15,   8, 
                FC16,   8, 
                FC17,   8, 
                FC20,   8, 
                FC21,   8, 
                FC22,   8, 
                FC23,   8, 
                FC24,   8, 
                FC25,   8, 
                FC26,   8, 
                FC27,   8, 
                FC30,   8, 
                FC31,   8, 
                FC32,   8, 
                FC33,   8, 
                FC34,   8, 
                FC35,   8, 
                FC36,   8, 
                FC37,   8, 
                FC40,   8, 
                FC41,   8, 
                FC42,   8, 
                FC43,   8, 
                FC44,   8, 
                FC45,   8, 
                FC46,   8, 
                FC47,   8, 
                FTA4,   8, 
                FTB4,   8, 
                FTA5,   8, 
                FTB5,   8, 
                Offset (0xA0), 
                FC50,   8, 
                FC51,   8, 
                FC52,   8, 
                FC53,   8, 
                FC54,   8, 
                FC55,   8, 
                FC56,   8, 
                FC57,   8, 
                FC60,   8, 
                FC61,   8, 
                FC62,   8, 
                FC63,   8, 
                FC64,   8, 
                FC65,   8, 
                FC66,   8, 
                FC67,   8
            }

            Method (SIOE, 0, NotSerialized)
            {
                Return (FBEC)
            }

            Method (SIOF, 1, NotSerialized)
            {
                Store (Arg0, FBEC)
            }

            Method (SIOA, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (Zero, FBE1)
                        Store (Zero, FAE1)
                    }
                    Case (One)
                    {
                        Store (Zero, FBE2)
                        Store (Zero, FAE2)
                    }
                    Case (0x02)
                    {
                        Store (Zero, FBE3)
                        Store (Zero, FAE3)
                    }

                }
            }

            Method (SIO9, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (Zero, FBE1)
                        Store (One, FAE1)
                    }
                    Case (One)
                    {
                        Store (Zero, FBE2)
                        Store (One, FAE2)
                    }
                    Case (0x02)
                    {
                        Store (Zero, FBE3)
                        Store (One, FAE3)
                    }

                }
            }

            Method (SIOD, 1, Serialized)
            {
                Store (Zero, Local1)
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        If (LAnd (LEqual (FBE1, Zero), LEqual (FAE1, Zero)))
                        {
                            Store (One, Local1)
                        }
                    }
                    Case (One)
                    {
                        If (LAnd (LEqual (FBE2, Zero), LEqual (FAE2, Zero)))
                        {
                            Store (One, Local1)
                        }
                    }
                    Case (0x02)
                    {
                        If (LAnd (LEqual (FBE3, Zero), LEqual (FAE3, Zero)))
                        {
                            Store (One, Local1)
                        }
                    }

                }

                Return (Local1)
            }

            Method (SIO0, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FET1)
                    }
                    Case (One)
                    {
                        Return (FET2)
                    }
                    Case (0x02)
                    {
                        Return (FET3)
                    }
                    Case (0x03)
                    {
                        Return (FET4)
                    }
                    Case (0x04)
                    {
                        Return (FET5)
                    }
                    Case (0x05)
                    {
                        Return (FET6)
                    }

                }
            }

            Method (SIO4, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (Or (ShiftLeft (FTB1, 0x08), FTA1))
                    }
                    Case (One)
                    {
                        Return (Or (ShiftLeft (FTB2, 0x08), FTA2))
                    }
                    Case (0x02)
                    {
                        Return (Or (ShiftLeft (FTB3, 0x08), FTA3))
                    }
                    Case (0x03)
                    {
                        Return (Or (ShiftLeft (FTB4, 0x08), FTA4))
                    }
                    Case (0x04)
                    {
                        Return (Or (ShiftLeft (FTB5, 0x08), FTA5))
                    }
                    Case (0x05)
                    {
                        Return (Or (ShiftRight (FTB6, 0x08), FTA6))
                    }

                }
            }

            Method (SIOC, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (Arg1, FP10)
                    }
                    Case (One)
                    {
                        Store (Arg1, FP20)
                    }
                    Case (0x02)
                    {
                        Store (Arg1, FP30)
                    }

                }
            }

            Method (SIOB, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FP10)
                    }
                    Case (One)
                    {
                        Return (FP20)
                    }
                    Case (0x02)
                    {
                        Return (FP30)
                    }

                }

                Return (Zero)
            }

            Method (SIO7, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FC10)
                    }
                    Case (One)
                    {
                        Return (FC20)
                    }
                    Case (0x02)
                    {
                        Return (FC30)
                    }
                    Case (0x03)
                    {
                        Return (FC40)
                    }
                    Case (0x04)
                    {
                        Return (FC50)
                    }
                    Case (0x05)
                    {
                        Return (FC60)
                    }

                }

                Return (Zero)
            }

            Method (SIO5, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FC11)
                    }
                    Case (One)
                    {
                        Return (FC21)
                    }
                    Case (0x02)
                    {
                        Return (FC31)
                    }
                    Case (0x03)
                    {
                        Return (FC41)
                    }
                    Case (0x04)
                    {
                        Return (FC51)
                    }
                    Case (0x05)
                    {
                        Return (FC61)
                    }

                }

                Return (Zero)
            }

            Method (SIO8, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (Arg1, FC10)
                    }
                    Case (One)
                    {
                        Store (Arg1, FC20)
                    }
                    Case (0x02)
                    {
                        Store (Arg1, FC30)
                    }
                    Case (0x03)
                    {
                        Store (Arg1, FC40)
                    }
                    Case (0x04)
                    {
                        Store (Arg1, FC50)
                    }
                    Case (0x05)
                    {
                        Store (Arg1, FC60)
                    }

                }
            }

            Method (SIO6, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (Arg1, FC11)
                    }
                    Case (One)
                    {
                        Store (Arg1, FC21)
                    }
                    Case (0x02)
                    {
                        Store (Arg1, FC31)
                    }
                    Case (0x03)
                    {
                        Store (Arg1, FC41)
                    }
                    Case (0x04)
                    {
                        Store (Arg1, FC51)
                    }
                    Case (0x05)
                    {
                        Store (Arg1, FC61)
                    }

                }
            }

            Scope (\_TZ)
            {
                ThermalZone (TZ10)
                {
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        \GSA1.ZRC0 ()
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0B)
                    }

                    Name (PSL, Package (0x01)
                    {
                        \_SB.PR00
                    })
                    Method (_PSL, 0, Serialized)  // _PSL: Passive List
                    {
                        Return (PSL)
                    }

                    Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
                    {
                        Return (0x04)
                    }

                    Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
                    {
                        Return (0x03)
                    }

                    Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
                    {
                        Return (0x0B54)
                    }

                    Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
                    {
                        Return (0x0B68)
                    }

                    Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
                    {
                        Return (0x0A)
                    }

                    Method (_TZP, 0, Serialized)  // _TZP: Thermal Zone Polling
                    {
                        Return (0x0A)
                    }

                    Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
                    {
                        Return (0x0B5E)
                    }

                    Method (_TMP, 0, Serialized)  // _TMP: Temperature
                    {
                        \GSA1.ZRC3 ()
                        Return (0x0B54)
                    }
                }
            }

            Name (ZRC8, Package (0x05)
            {
                Package (0x02)
                {
                    Zero, 
                    0x03010003
                }, 

                Package (0x02)
                {
                    One, 
                    0x03010004
                }, 

                Package (0x02)
                {
                    0x02, 
                    0x0301000F
                }, 

                Package (0x02)
                {
                    0x03, 
                    0x03010010
                }, 

                Package (0x02)
                {
                    0x04, 
                    0x03010011
                }
            })
            Name (ZRCL, Buffer (0x23)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
                /* 0018 */  0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0020 */  0x00, 0x02, 0x00                               
            })
            Name (ZRCT, Zero)
            Name (ZRCF, Zero)
            Name (ZRCG, 0x1E)
            Method (ZRCQ, 0, NotSerialized)
            {
                ZRCU (Zero)
                Store (SIOE (), Local0)
                SIOF (Zero)
                Store (Zero, Local6)
                Store (SizeOf (ZRC8), Local5)
                While (LLess (Local6, Local5))
                {
                    Store (ZRCJ (Local6), Local7)
                    If (LEqual (ObjectType (Local7), 0x04))
                    {
                        Store (DerefOf (Index (Local7, Zero)), Local1)
                        Store (ZRC1 (Local1), Index (ZRCL, Add (Multiply (Local6, 0x07), 0x02)))
                        ZRC2 (Local1, 0x02)
                        If (LNotEqual (SIO4 (Local1), 0xFFFF))
                        {
                            Store (0xFF, Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03)))
                        }
                        Else
                        {
                            Store (Zero, Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03)))
                        }

                        If (LEqual (Local1, 0x02))
                        {
                            Store (0xFF, Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03)))
                        }
                    }

                    Increment (Local6)
                }

                Store (Zero, Local6)
                Store (SizeOf (ZRC8), Local5)
                While (LLess (Local6, Local5))
                {
                    Store (ZRCJ (Local6), Local7)
                    If (LEqual (ObjectType (Local7), 0x04))
                    {
                        Store (DerefOf (Index (Local7, Zero)), Local1)
                        If (DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03))))
                        {
                            ZRC2 (Local1, 0x02)
                            SIOA (Local1)
                        }
                    }

                    Increment (Local6)
                }

                Sleep (0x1770)
                Store (Zero, Local6)
                Store (SizeOf (ZRC8), Local5)
                While (LLess (Local6, Local5))
                {
                    Store (ZRCJ (Local6), Local7)
                    If (LEqual (ObjectType (Local7), 0x04))
                    {
                        Store (DerefOf (Index (Local7, Zero)), Local1)
                        If (DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03))))
                        {
                            Store (SIO4 (Local1), Local3)
                            If (LAnd (LEqual (Local3, 0xFFFF), LNotEqual (Local1, 0x02)))
                            {
                                ZRC2 (Local1, DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x02))))
                                Store (0x03, Index (ZRCL, Add (Multiply (Local6, 0x07), 0x04)))
                            }
                            Else
                            {
                                ZRC2 (Local1, DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x02))))
                                Store (0x04, Index (ZRCL, Add (Multiply (Local6, 0x07), 0x04)))
                            }

                            SIO9 (Local1)
                        }
                    }

                    Increment (Local6)
                }

                Sleep (0x03E8)
                SIOF (Local0)
                ZRCU (One)
            }

            Method (ZRCB, 1, Serialized)
            {
                ZRCU (Zero)
            }

            Method (ZRCP, 1, Serialized)
            {
                ZRC0 ()
            }

            Name (ZRD0, Zero)
            Method (ZRC0, 0, NotSerialized)
            {
                ZRCU (Zero)
                ZRCV ()
                Store (One, ZRD0)
                ZRCU (One)
            }

            Method (ZRCU, 1, Serialized)
            {
                If (Arg0)
                {
                    Store (One, ZRCT)
                }
                Else
                {
                    Store (Zero, ZRCT)
                }
            }

            Method (ZRC9, 0, Serialized)
            {
                Return (One)
            }

            Method (ZRCW, 1, NotSerialized)
            {
                Return (DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x05))))
            }

            Method (ZRCX, 2, NotSerialized)
            {
                Store (Arg1, Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x05)))
            }

            Method (ZRCY, 1, NotSerialized)
            {
                Return (DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x06))))
            }

            Method (ZRCZ, 2, NotSerialized)
            {
                If (LEqual (Arg1, Zero))
                {
                    ZRCM (Arg0, One)
                }

                Store (Arg1, Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x06)))
            }

            Method (ZRC5, 1, NotSerialized)
            {
                Return (SIO4 (Arg0))
            }

            Method (ZRCD, 1, NotSerialized)
            {
                If (ZRCF)
                {
                    Return (ZRCG)
                }
                ElseIf (LEqual (Arg0, 0x0A))
                {
                    Return (ZRCG)
                }
                Else
                {
                    Return (SIO0 (Arg0))
                }
            }

            Method (ZRCE, 1, NotSerialized)
            {
                Store (Arg0, ZRCG)
            }

            Method (ZRCJ, 1, NotSerialized)
            {
                Store (Zero, Local0)
                Store (SizeOf (ZRC8), Local1)
                While (LLess (Local0, Local1))
                {
                    If (LEqual (DerefOf (Index (DerefOf (Index (ZRC8, Local0)), Zero)), Arg0))
                    {
                        Return (DerefOf (Index (ZRC8, Local0)))
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (ZRCK, 1, NotSerialized)
            {
                Store (Zero, Local0)
                Store (SizeOf (ZRC8), Local1)
                While (LLess (Local0, Local1))
                {
                    If (LEqual (DerefOf (Index (DerefOf (Index (ZRC8, Local0)), Zero)), Arg0))
                    {
                        Return (Local0)
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (ZRCV, 0, NotSerialized)
            {
                Store (And (\_SB.GPC0 (0x03010014), 0x0001FCFF), Local0)
                \_SB.SPC0 (0x03010014, Or (Local0, 0x82000300))
            }

            Method (ZRC1, 1, NotSerialized)
            {
                Store (ZRCJ (Arg0), Local7)
                If (LEqual (ObjectType (Local7), 0x04))
                {
                    Store (DerefOf (Index (Local7, One)), Local1)
                    If (LNotEqual (And (\_SB.GPC0 (Local1), 0x0100), Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        If (LEqual (And (\_SB.GPC0 (Local1), One), Zero))
                        {
                            Return (Zero)
                        }

                        Return (One)
                    }
                }

                Return (Ones)
            }

            Method (ZRC2, 2, NotSerialized)
            {
                Store (ZRCJ (Arg0), Local7)
                If (LEqual (ObjectType (Local7), 0x04))
                {
                    Store (DerefOf (Index (Local7, One)), Local1)
                    If (LEqual (Arg1, One))
                    {
                        Store (And (\_SB.GPC0 (Local1), 0x0001FCFE), Local0)
                        \_SB.SPC0 (Local1, Or (Local0, 0x84000201))
                    }
                    ElseIf (LEqual (Arg1, Zero))
                    {
                        Store (And (\_SB.GPC0 (Local1), 0x0001FCFE), Local0)
                        \_SB.SPC0 (Local1, Or (Local0, 0x84000200))
                    }
                    Else
                    {
                        Store (And (\_SB.GPC0 (Local1), 0x0001FCFE), Local0)
                        \_SB.SPC0 (Local1, Or (Local0, 0x84000101))
                    }

                    If (LEqual (Arg0, 0x02))
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store (And (\_SB.GPC0 (0x03010015), 0x0001FCFE), Local0)
                            \_SB.SPC0 (0x03010015, Or (Local0, 0x84000201))
                        }
                        ElseIf (LEqual (Arg1, Zero))
                        {
                            Store (And (\_SB.GPC0 (0x03010015), 0x0001FCFE), Local0)
                            \_SB.SPC0 (0x03010015, Or (Local0, 0x84000200))
                        }
                        Else
                        {
                            Store (And (\_SB.GPC0 (0x03010015), 0x0001FCFE), Local0)
                            \_SB.SPC0 (0x03010015, Or (Local0, 0x84000101))
                        }
                    }
                }
            }

            Method (ZRC7, 3, NotSerialized)
            {
                Store (ZRCJ (Arg0), Local7)
                If (LEqual (ObjectType (Local7), 0x04))
                {
                    Store (Arg1, Index (ZRCL, Add (Multiply (Arg0, 0x07), Zero)))
                    Store (Arg2, Index (ZRCL, Add (Multiply (Arg0, 0x07), One)))
                }
            }

            Method (ZRCA, 1, NotSerialized)
            {
                Store (ZRCJ (Arg0), Local7)
                If (LEqual (ObjectType (Local7), 0x04))
                {
                    Store (DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), Zero))), Local0)
                    Store (DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), One))), Local1)
                    Return (Or (Local0, ShiftLeft (Local1, 0x08)))
                }

                Return (Ones)
            }

            Method (ZRCR, 1, NotSerialized)
            {
                Return (DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x04))))
            }

            Method (ZRCM, 2, NotSerialized)
            {
                Store (ZRCK (Arg0), Local7)
                If (LNotEqual (Local7, Ones))
                {
                    If (Arg1)
                    {
                        If (LEqual (ZRCR (Arg0), 0x04))
                        {
                            ZRC2 (Arg0, One)
                            SIO9 (Arg0)
                            ZRC2 (Arg0, DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x02))))
                        }
                        Else
                        {
                            ZRC2 (Arg0, One)
                            SIO9 (Arg0)
                            ZRC2 (Arg0, DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x02))))
                        }
                    }
                    Else
                    {
                        ZRC2 (Arg0, Zero)
                        SIOA (Arg0)
                    }
                }
            }

            Method (ZRC3, 0, NotSerialized)
            {
                If (ZRCT)
                {
                    If (LEqual (ZRD0, One))
                    {
                        ZRCU (Zero)
                        ZRCQ ()
                        Store (Zero, ZRD0)
                        ZRCU (One)
                    }

                    Store (Zero, Local6)
                    Store (SizeOf (ZRC8), Local5)
                    While (LLess (Local6, Local5))
                    {
                        If (DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x06))))
                        {
                            Store (ZRCD (DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x05)))), Local0)
                            Store (ZRCJ (Local6), Local7)
                            If (LEqual (ObjectType (Local7), 0x04))
                            {
                                Store (DerefOf (Index (Local7, Zero)), Local1)
                                If (DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03))))
                                {
                                    Store (DerefOf (Index (ZRCL, Add (Multiply (Local1, 0x07), One))), Local2)
                                    Store (DerefOf (Index (ZRCL, Add (Multiply (Local1, 0x07), Zero))), Local3)
                                    Store (SIO4 (Local1), Local4)
                                    If (LEqual (Local1, 0x02))
                                    {
                                        If (LEqual (Local4, 0xFFFF))
                                        {
                                            If (SIOD (Local1))
                                            {
                                                Store (0xFFFF, Local4)
                                            }
                                            Else
                                            {
                                                Store (0x0BB8, Local4)
                                            }
                                        }
                                    }

                                    If (LNotEqual (Local4, 0xFFFF))
                                    {
                                        If (LLessEqual (Local0, Local3))
                                        {
                                            ZRCM (Local1, Zero)
                                        }
                                    }
                                    ElseIf (LGreaterEqual (Local0, Local2))
                                    {
                                        ZRCM (Local1, One)
                                    }
                                }
                            }
                        }

                        Increment (Local6)
                    }
                }
            }

            Name (DIC3, Package (0x04)
            {
                Buffer (0x04)
                {
                     0x09, 0x09, 0x01, 0x07                         
                }, 

                Buffer (0x04)
                {
                     0x04, 0x04, 0x02, 0x07                         
                }, 

                Buffer (0x04)
                {
                     0x01, 0x01, 0x02, 0x01                         
                }, 

                Buffer (0x04)
                {
                     0x00, 0x01, 0x02, 0x01                         
                }
            })
            Method (DIM0, 0, Serialized)
            {
                Store (PFM7 (), Local2)
                Store (DerefOf (Local2), Local7)
                Store (SizeOf (Local7), Local0)
                Store (Zero, Local1)
                While (LLess (Local1, Local0))
                {
                    Store (DerefOf (Index (DerefOf (Index (Local7, Local1)), Zero)), Local5)
                    Store (DerefOf (Index (DerefOf (Index (Local7, Local1)), One)), Local6)
                    Store (Zero, Local4)
                    If (LNotEqual (SMM3 (Local5, Local6, Zero), 0xFFFF))
                    {
                        Store (One, Local4)
                        If (LNotEqual (SMM3 (Local5, Or (And (Local6, 0x0F), 0x30), Zero), 0xFFFF))
                        {
                            Or (Local4, 0x04, Local4)
                        }
                    }

                    Store (Local4, Index (DerefOf (Index (DerefOf (Local2), Local1)), 0x02))
                    Increment (Local1)
                }
            }

            Method (DIM6, 1, Serialized)
            {
                Return ("KingStone")
            }

            Method (DIMC, 0, Serialized)
            {
                Name (DIMG, Buffer (0x03){})
                Store (PFM7 (), Local2)
                Store (DerefOf (Local2), Local7)
                Store (SizeOf (Local7), Local0)
                Store (Zero, Local1)
                While (LLess (Local1, Local0))
                {
                    Store (DerefOf (Index (DerefOf (Index (Local7, Local1)), 0x02)), Local4)
                    ShiftLeft (One, Local1, Local5)
                    If (And (Local4, One))
                    {
                        Store (Or (DerefOf (Index (DIMG, Zero)), Local5), Index (DIMG, Zero))
                    }

                    If (And (Local4, 0x02))
                    {
                        Store (Or (DerefOf (Index (DIMG, One)), Local5), Index (DIMG, One))
                    }

                    If (And (Local4, 0x04))
                    {
                        Store (Or (DerefOf (Index (DIMG, 0x02)), Local5), Index (DIMG, 0x02))
                    }

                    Increment (Local1)
                }

                Return (DIMG)
            }

            Method (DIMD, 1, Serialized)
            {
                Store (PFM7 (), Local2)
                Store (DerefOf (Local2), Local7)
                If (LLess (Arg0, SizeOf (Local7)))
                {
                    Store (DerefOf (Index (DerefOf (Index (Local7, Arg0)), Zero)), Local5)
                    Or (And (DerefOf (Index (DerefOf (Index (Local7, Arg0)), One)), 0x0F), 0x30, Local6)
                    Store (DerefOf (Index (DerefOf (Index (Local7, Arg0)), 0x02)), Local4)
                    If (And (Local4, 0x04))
                    {
                        Return (And (SMM5 (Local5, Local6, 0x05), 0x1FFF))
                    }
                }

                Return (Ones)
            }

            Method (DIM1, 1, Serialized)
            {
                Name (DATB, Buffer (0x0200){})
                Name (DATC, Buffer (0x04){})
                CreateWordField (DATC, Zero, DIM8)
                CreateWordField (DATC, 0x02, DIM9)
                Store (PFM7 (), Local2)
                Store (DerefOf (Local2), Local7)
                If (LLess (Arg0, SizeOf (Local7)))
                {
                    Store (SMM8 (DerefOf (Index (DerefOf (Index (Local7, Arg0)), Zero)), DerefOf (Index (DerefOf (Index (Local7, Arg0)), One)), DATB), Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Store (Zero, DIM8)
                        Store (0x0200, DIM9)
                        Concatenate (DATC, DATB, Local1)
                        Return (Local1)
                    }
                }

                Store (0xFFFF, DIM8)
                Store (Zero, DIM9)
                Concatenate (DATC, DATB, Local1)
                Return (Local1)
            }

            Method (ETB7, 1, Serialized)
            {
                ETB0 ()
                ETB4 (ETB1)
            }

            Method (ETB8, 1, Serialized)
            {
                Store (ETB3 (), ETB1)
            }

            Method (ETB6, 0, Serialized)
            {
                Return (0x04)
            }

            Name (ETB1, Zero)
            Name (ETBE, Zero)
            Method (ETB0, 0, Serialized)
            {
                ETB5 ()
                If (LEqual (ETBE, One))
                {
                    ETB2 (One)
                }
            }

            Method (ETB5, 0, Serialized)
            {
                \_SB.SHPO (0x03030004, Zero)
                Store (And (\_SB.GPC0 (0x0303000F), 0x0001FCFE), Local0)
                \_SB.SPC0 (0x0303000F, Or (Local0, 0x84000201))
            }

            Method (ETB2, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (And (\_SB.GPC0 (0x03030004), 0x0001FCFF), Local0)
                        \_SB.SPC0 (0x03030004, Or (Local0, 0x42040100))
                        Store (Zero, ETBE)
                    }
                    Case (One)
                    {
                        Store (And (\_SB.GPC0 (0x03030004), 0x0001FCFF), Local0)
                        \_SB.SPC0 (0x03030004, Or (Local0, 0x42080100))
                        Store (One, ETBE)
                    }
                    Case (0x02)
                    {
                        Store (And (\_SB.GPC0 (0x03030004), 0x0001FCFF), Local0)
                        \_SB.SPC0 (0x03030004, Or (Local0, 0x42000100))
                        Store (Zero, ETBE)
                    }

                }
            }

            Method (ETB3, 0, Serialized)
            {
                Store (Zero, Local0)
                If (LEqual (\_SB.GGOV (0x0303000F), Zero))
                {
                    Store (0x02, Local0)
                }

                Return (Local0)
            }

            Method (ETB4, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        \_SB.SGOV (0x0303000F, One)
                    }
                    Case (One)
                    {
                        \_SB.SGOV (0x0303000F, One)
                    }
                    Case (0x02)
                    {
                        \_SB.SGOV (0x0303000F, Zero)
                    }

                }
            }

            Method (\_GPE._L24, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Sleep (0xFA)
                If (LEqual (\_SB.GGOV (0x0303000F), Zero))
                {
                    \_SB.SGOV (0x0303000F, One)
                    Store (Zero, \GSA1.ETB1)
                    \GSA1.GGGH (0x04, 0x96, 0x32)
                }
                Else
                {
                    \_SB.SGOV (0x0303000F, Zero)
                    Store (0x02, \GSA1.ETB1)
                    \GSA1.GGGH (0x04, 0x0258, 0x32)
                }

                Notify (\GSA1, 0xE1)
            }

            Name (EVT1, Zero)
            Method (EVT0, 0, Serialized)
            {
            }

            Method (EVT2, 1, Serialized)
            {
                Store (Arg0, EVT1)
                Notify (\GSA1, 0xE2)
            }

            Name (GGGA, Package (0x05)
            {
                "F6", 
                "Z390 UD", 
                "Z390UD", 
                "8A1FAG0M", 
                0x01000000
            })
            Name (GGGB, "20181031")
            Name (GGGC, Zero)
            Method (GGG1, 0, Serialized)
            {
                Return (GGGB)
            }

            Method (GGG2, 0, Serialized)
            {
                Return (GGGD)
            }

            Method (GGG3, 0, Serialized)
            {
                Return (DerefOf (Index (GGGA, 0x03)))
            }

            Method (GGG4, 0, Serialized)
            {
                Return (DerefOf (Index (GGGA, Zero)))
            }

            Method (GGG5, 0, Serialized)
            {
                Return (DerefOf (Index (GGGA, One)))
            }

            Method (GGG6, 0, Serialized)
            {
                Return (DerefOf (Index (GGGA, 0x04)))
            }

            Method (GGG7, 0, Serialized)
            {
                Return (GGG9 (Zero))
            }

            Method (GGG8, 0, Serialized)
            {
                Return (GGGB)
            }

            Method (GGG9, 1, Serialized)
            {
                Store (Zero, Local0)
                Switch (ToInteger (Arg0))
                {
                    Case (Zero)
                    {
                        Store (GGGC, Local0)
                    }
                    Case (0x04)
                    {
                        Store (0x40040607, Local0)
                    }
                    Case (0x08)
                    {
                        Store (0x0143104F, Local0)
                    }
                    Case (0x0C)
                    {
                        Store (0x0143, Local0)
                    }

                }

                Return (Local0)
            }

            Name (GGGK, Package (0x16)
            {
                0x23A1, 
                0x1FBE, 
                0x1C48, 
                0x1AB1, 
                0x17C8, 
                0x1530, 
                0x12E0, 
                0x11D1, 
                0x0FDF, 
                0x0E24, 
                0x0D59, 
                0x0BE4, 
                0x0A98, 
                0x0970, 
                0x08E8, 
                0x07F0, 
                0x0712, 
                0x06AC, 
                0x05F2, 
                0x054C, 
                0x04B8, 
                0x0474
            })
            Method (GGGH, 3, Serialized)
            {
                Store (0x11D1, Local0)
                If (LEqual (Arg0, 0x03))
                {
                    Store (SizeOf (GGGK), Local5)
                    Store (Zero, Local0)
                    If (LAnd (LGreater (Arg1, Zero), LLessEqual (Arg1, Local5)))
                    {
                        Store (DerefOf (Index (GGGK, Subtract (Arg1, One))), Local0)
                    }

                    Store (Arg2, Local1)
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (Arg1, Local0)
                    Store (Arg2, Local1)
                }
                ElseIf (LEqual (Arg0, 0x04))
                {
                    Divide (Add (0x001234DE, ShiftRight (Arg1, One)), Arg1, , Local0)
                    Store (Arg2, Local1)
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (0x11D1, Local0)
                    Store (0x03E8, Local1)
                }
                ElseIf (LEqual (Arg0, Zero))
                {
                    Store (0x11D1, Local0)
                    Store (0x03E8, Local1)
                }

                If (Local0)
                {
                    PIO7 (0x53, Zero, 0xB6)
                    PIO7 (0x52, Zero, And (Local0, 0xFF))
                    PIO7 (0x52, Zero, And (ShiftRight (Local0, 0x08), 0xFF))
                    PIO7 (0x61, Zero, Or (PIO6 (0x61, Zero), 0x03))
                    Sleep (Local1)
                    PIO7 (0x61, Zero, And (PIO6 (0x61, Zero), 0xFC))
                }
                Else
                {
                    Sleep (Local1)
                }
            }

            OperationRegion (DBS0, SystemIO, 0x2E, 0x02)
            Field (DBS0, ByteAcc, NoLock, Preserve)
            {
                DBS1,   8, 
                DBS2,   8
            }

            IndexField (DBS1, DBS2, ByteAcc, NoLock, Preserve)
            {
                Offset (0x07), 
                DBS4,   8, 
                Offset (0xEF), 
                DBS8,   1, 
                DBS9,   1
            }

            Mutex (DBS3, 0x00)
            Method (DBS5, 1, NotSerialized)
            {
                Acquire (DBS3, 0xFFFF)
                Store (0x87, DBS1)
                Store (One, DBS1)
                Store (0x55, DBS1)
                If (Ones)
                {
                    Store (0x55, DBS1)
                }
                Else
                {
                    Store (0xAA, DBS1)
                }

                Store (Arg0, DBS4)
            }

            Method (DBS6, 0, NotSerialized)
            {
                Store (0x02, DBS1)
                Store (0x02, DBS2)
                Release (DBS3)
            }

            Method (GGGG, 0, Serialized)
            {
                DBS5 (0x07)
                Store (DBS9, Local0)
                DBS6 ()
                Return (Local0)
            }

            Method (GGGE, 0, Serialized)
            {
                DBS5 (0x07)
                Store (DBS8, Local0)
                DBS6 ()
                Return (Local0)
            }

            Method (GGGF, 1, Serialized)
            {
                DBS5 (0x07)
                Store (Arg0, DBS8)
                Store (DBS8, Local0)
                DBS6 ()
                Return (Local0)
            }

            Method (MPTS, 1, NotSerialized)
            {
                EZV8 (Arg0)
            }

            Method (MWAK, 1, NotSerialized)
            {
                PFM1 (Arg0)
                ETB7 (Arg0)
                EZV7 (Arg0)
            }

            OperationRegion (GGGT, SystemMemory, 0x3E5C0118, 0x0100)
            Field (GGGT, DWordAcc, Lock, Preserve)
            {
                Offset (0x09), 
                CCNT,   8, 
                E8CV,   8
            }

            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, "GSADEV0")  // _UID: Unique ID
            Name (MARK, "Mark Tsai<mark@gigabyte.com><marktsai0316@gmail.com>")
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                If (LEqual (GGGG (), One))
                {
                    Store (Or (GGGC, 0x00040000), GGGC)
                }

                PFM0 ()
                Store (Or (GGGC, 0x10), GGGC)
                Store (Or (GGGC, 0x20), GGGC)
                Store (Or (GGGC, 0x40), GGGC)
                Store (Or (GGGC, 0x80), GGGC)
                Store (Or (GGGC, 0x0400), GGGC)
                ETB0 ()
                Store (Or (GGGC, 0x0800), GGGC)
                EVT0 ()
                Store (Or (GGGC, 0x2000), GGGC)
                EZV5 ()
                DIM0 ()
                Store (Or (GGGC, 0x4000), GGGC)
            }

            Method (_WDG, 0, Serialized)
            {
                Return (QWDG)
            }

            Name (QWDG, Buffer (0x64)
            {
                /* 0000 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 0008 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 0010 */  0x43, 0x43, 0x01, 0x00, 0xEF, 0xBE, 0xAD, 0xDE,
                /* 0018 */  0x00, 0x10, 0x00, 0x00, 0x00, 0xA0, 0xC9, 0x06,
                /* 0020 */  0x29, 0x10, 0x00, 0x00, 0x41, 0x41, 0x01, 0x01,
                /* 0028 */  0xEF, 0xBE, 0xAD, 0xDE, 0x01, 0x20, 0x00, 0x00,
                /* 0030 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                /* 0038 */  0x42, 0x42, 0x01, 0x02, 0xEF, 0xBE, 0xAD, 0xDE,
                /* 0040 */  0x01, 0x40, 0x00, 0x00, 0x00, 0xA0, 0xC9, 0x06,
                /* 0048 */  0x29, 0x10, 0x00, 0x00, 0xE1, 0x00, 0x01, 0x08,
                /* 0050 */  0xEF, 0xBE, 0xAD, 0xDE, 0x02, 0x40, 0x00, 0x00,
                /* 0058 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,
                /* 0060 */  0xE2, 0x00, 0x01, 0x08                         
            })
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0B)
            }

            Name (WQCC, Buffer (0x2776)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x66, 0x27, 0x00, 0x00, 0x92, 0xB2, 0x01, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0xA8, 0xAF, 0x90, 0x01, 0x01, 0x08, 0x09, 0x42,
                /* 0020 */  0xD8, 0x06, 0x84, 0xC4, 0x39, 0xA0, 0x10, 0x81,
                /* 0028 */  0xE4, 0x13, 0x49, 0x0E, 0x0C, 0x4A, 0x02, 0x88,
                /* 0030 */  0xE4, 0x40, 0xC8, 0x05, 0x13, 0x13, 0x20, 0x02,
                /* 0038 */  0x42, 0x5E, 0x05, 0xD8, 0x14, 0x60, 0x12, 0x44,
                /* 0040 */  0xFD, 0xFB, 0x43, 0x94, 0x06, 0x45, 0x09, 0x2C,
                /* 0048 */  0x04, 0x42, 0x32, 0x05, 0xF8, 0x16, 0xE0, 0x58,
                /* 0050 */  0x80, 0x61, 0x01, 0xB2, 0x05, 0x58, 0x86, 0x22,
                /* 0058 */  0xA8, 0x9D, 0x0A, 0x90, 0x2B, 0x40, 0x98, 0x00,
                /* 0060 */  0xF1, 0xA8, 0xC2, 0x68, 0x0E, 0x8A, 0x84, 0x83,
                /* 0068 */  0x46, 0x89, 0x81, 0x90, 0x44, 0x58, 0x39, 0xC7,
                /* 0070 */  0x96, 0x72, 0x01, 0xA6, 0x05, 0x08, 0x17, 0x20,
                /* 0078 */  0x1D, 0x43, 0x23, 0xA8, 0x1B, 0x4C, 0x52, 0x05,
                /* 0080 */  0x88, 0x86, 0x11, 0x5A, 0x41, 0x70, 0x1A, 0xC4,
                /* 0088 */  0x51, 0x44, 0x09, 0xC3, 0xF0, 0x8C, 0x19, 0x28,
                /* 0090 */  0x5C, 0x90, 0x48, 0x86, 0x09, 0x7A, 0x02, 0x41,
                /* 0098 */  0x4A, 0xC6, 0x90, 0x66, 0x2C, 0x02, 0x71, 0x06,
                /* 00A0 */  0x1C, 0x2B, 0x46, 0xA8, 0x90, 0x98, 0x81, 0x04,
                /* 00A8 */  0x3F, 0x81, 0xAE, 0x31, 0xE4, 0x19, 0x88, 0x58,
                /* 00B0 */  0x9F, 0x80, 0x40, 0xA2, 0x47, 0x09, 0x6E, 0x5C,
                /* 00B8 */  0xA3, 0xB2, 0x31, 0x9D, 0x0D, 0x6E, 0x60, 0x26,
                /* 00C0 */  0x88, 0x73, 0x78, 0x18, 0x19, 0x10, 0x9A, 0x40,
                /* 00C8 */  0xFC, 0xD8, 0xE1, 0x13, 0xD8, 0xFD, 0x0C, 0x65,
                /* 00D0 */  0x51, 0x80, 0x41, 0x0C, 0x29, 0x04, 0x11, 0x42,
                /* 00D8 */  0x8D, 0x02, 0x6C, 0x0D, 0x56, 0xC6, 0x20, 0x84,
                /* 00E0 */  0x10, 0xC5, 0x08, 0x0C, 0x85, 0x61, 0x46, 0xB1,
                /* 00E8 */  0xC3, 0x39, 0x0B, 0xA4, 0x36, 0x01, 0xCA, 0x40,
                /* 00F0 */  0x04, 0xCA, 0x10, 0x98, 0xFD, 0x41, 0x90, 0x40,
                /* 00F8 */  0xE7, 0x01, 0xFD, 0x08, 0x2C, 0x09, 0x44, 0x46,
                /* 0100 */  0xB6, 0x94, 0x80, 0x1C, 0x06, 0x12, 0x1C, 0x8E,
                /* 0108 */  0x27, 0xD2, 0xFC, 0xCC, 0x34, 0x2A, 0x26, 0x01,
                /* 0110 */  0x50, 0x1A, 0x40, 0x24, 0x0A, 0x42, 0xBF, 0x03,
                /* 0118 */  0x2A, 0x40, 0xCA, 0xC9, 0x80, 0xD8, 0x1E, 0x97,
                /* 0120 */  0xE6, 0x74, 0x80, 0xA7, 0xEE, 0xBB, 0xC1, 0x99,
                /* 0128 */  0xF9, 0xAC, 0xE0, 0x2D, 0xF8, 0xFF, 0x7F, 0x46,
                /* 0130 */  0xE0, 0x63, 0xF0, 0x50, 0x0F, 0x21, 0xE0, 0x11,
                /* 0138 */  0xB2, 0x43, 0x82, 0x01, 0xF1, 0xDE, 0x6F, 0x05,
                /* 0140 */  0x64, 0x2E, 0x06, 0x64, 0x07, 0x85, 0xE7, 0x03,
                /* 0148 */  0xB0, 0x4C, 0xF2, 0x34, 0x8F, 0xA1, 0xE2, 0xA9,
                /* 0150 */  0x21, 0x8E, 0x04, 0x7C, 0x2A, 0x27, 0xC5, 0x08,
                /* 0158 */  0x7C, 0x8C, 0xF0, 0xE8, 0xF8, 0x28, 0x7C, 0x76,
                /* 0160 */  0x38, 0xED, 0x62, 0x8F, 0x10, 0x54, 0xD6, 0x31,
                /* 0168 */  0x02, 0x3D, 0xF7, 0x23, 0x0C, 0xF8, 0xD2, 0xD0,
                /* 0170 */  0xAC, 0x00, 0xA1, 0xF7, 0x00, 0x11, 0xBC, 0x0E,
                /* 0178 */  0xF8, 0xC6, 0x60, 0x71, 0x30, 0x3A, 0x51, 0xE0,
                /* 0180 */  0x87, 0x6E, 0xBF, 0x02, 0x10, 0x42, 0x9F, 0xDB,
                /* 0188 */  0x49, 0x3C, 0x50, 0x44, 0x48, 0xD0, 0x23, 0x86,
                /* 0190 */  0x60, 0xCE, 0x2A, 0xD6, 0x01, 0x3C, 0x09, 0x24,
                /* 0198 */  0x28, 0x70, 0x88, 0x68, 0x68, 0xAE, 0x13, 0x53,
                /* 01A0 */  0x43, 0x39, 0x91, 0xB8, 0x41, 0xA3, 0x9C, 0xC0,
                /* 01A8 */  0xB1, 0x78, 0x9C, 0xC7, 0xF7, 0xD8, 0xE0, 0x23,
                /* 01B0 */  0xC6, 0x39, 0xBF, 0x05, 0x78, 0x70, 0x9C, 0xC0,
                /* 01B8 */  0x12, 0x1F, 0x1E, 0x3E, 0x7B, 0x50, 0x51, 0x30,
                /* 01C0 */  0xA8, 0xE3, 0x07, 0xE0, 0xE6, 0xFF, 0x7F, 0xFC,
                /* 01C8 */  0x00, 0x2C, 0x41, 0x3C, 0x7E, 0x80, 0x33, 0x96,
                /* 01D0 */  0x82, 0xF3, 0x00, 0x3B, 0x7E, 0x00, 0xDC, 0xF8,
                /* 01D8 */  0xFF, 0x1F, 0x3F, 0xB8, 0x8C, 0x91, 0x1B, 0x96,
                /* 01E0 */  0x8E, 0xDC, 0xC0, 0xBE, 0x4D, 0x9C, 0x89, 0x21,
                /* 01E8 */  0x1E, 0x14, 0x4C, 0xE0, 0xD0, 0x10, 0xB2, 0x30,
                /* 01F0 */  0x74, 0xD0, 0x7C, 0x07, 0x34, 0x74, 0x40, 0xC6,
                /* 01F8 */  0x09, 0x06, 0xB8, 0x61, 0x3C, 0xC1, 0x00, 0x93,
                /* 0200 */  0xF0, 0x67, 0x04, 0x54, 0x5C, 0x18, 0x14, 0x81,
                /* 0208 */  0xA3, 0x1E, 0x07, 0xE8, 0xC8, 0x3C, 0x30, 0xF8,
                /* 0210 */  0x07, 0x19, 0x36, 0x97, 0xDA, 0x27, 0xAD, 0x61,
                /* 0218 */  0x9A, 0xC0, 0x23, 0x83, 0xF3, 0xFF, 0x1F, 0x19,
                /* 0220 */  0xB8, 0xE6, 0x7E, 0x00, 0x98, 0xE3, 0x84, 0x07,
                /* 0228 */  0xC0, 0xC1, 0x5B, 0xBD, 0x01, 0x10, 0xA5, 0x13,
                /* 0230 */  0x42, 0x12, 0x84, 0x33, 0xD6, 0xDB, 0xCD, 0x19,
                /* 0238 */  0xBC, 0x1C, 0xF8, 0x28, 0x63, 0x8C, 0xF7, 0x83,
                /* 0240 */  0xA3, 0xC2, 0x9E, 0x7F, 0x10, 0x47, 0x39, 0x94,
                /* 0248 */  0xA8, 0xD3, 0x1C, 0x40, 0xA4, 0xCB, 0x0F, 0xEE,
                /* 0250 */  0xFC, 0x03, 0xEB, 0xFF, 0x7F, 0xFE, 0x81, 0x78,
                /* 0258 */  0x9A, 0x03, 0xA8, 0x72, 0x0C, 0xC1, 0x1D, 0x5E,
                /* 0260 */  0xC0, 0x71, 0x61, 0xC0, 0x1D, 0x4B, 0x80, 0x03,
                /* 0268 */  0x3C, 0x17, 0x78, 0xFC, 0x40, 0x49, 0x3A, 0x81,
                /* 0270 */  0x80, 0xE6, 0xFF, 0x7F, 0x02, 0x01, 0x58, 0x72,
                /* 0278 */  0xA0, 0x03, 0x6B, 0xA8, 0x13, 0x08, 0x15, 0x74,
                /* 0280 */  0x02, 0x81, 0xFE, 0xEC, 0xF0, 0x09, 0x04, 0xB8,
                /* 0288 */  0x8A, 0x1C, 0x31, 0xEA, 0xFF, 0x7F, 0x3E, 0x80,
                /* 0290 */  0x6B, 0x6D, 0x94, 0x9A, 0xE6, 0x1B, 0x08, 0xF6,
                /* 0298 */  0x00, 0x02, 0x8E, 0xF7, 0x9A, 0x0F, 0x20, 0xC0,
                /* 02A0 */  0x0C, 0xE4, 0xC8, 0xCE, 0xE8, 0xAC, 0xF9, 0x01,
                /* 02A8 */  0x04, 0xB8, 0x08, 0x7A, 0xE7, 0xF9, 0xF4, 0xC1,
                /* 02B0 */  0x61, 0x70, 0x07, 0x10, 0x40, 0xED, 0xFF, 0xFF,
                /* 02B8 */  0x00, 0x02, 0x2C, 0x6F, 0x10, 0x0F, 0x20, 0xE0,
                /* 02C0 */  0x0C, 0xF1, 0x8E, 0xD0, 0x8F, 0xC0, 0xC1, 0x21,
                /* 02C8 */  0xA4, 0xE4, 0x5C, 0x09, 0x3D, 0xE6, 0xB9, 0x12,
                /* 02D0 */  0x54, 0x27, 0x10, 0xE0, 0x70, 0xD0, 0xC0, 0x1D,
                /* 02D8 */  0x10, 0xE0, 0x12, 0xF8, 0x24, 0xED, 0x33, 0x07,
                /* 02E0 */  0x38, 0x4E, 0x57, 0x26, 0xF0, 0x60, 0xE1, 0x9C,
                /* 02E8 */  0x22, 0x9E, 0xFE, 0x7C, 0x17, 0x78, 0x2D, 0xF0,
                /* 02F0 */  0x60, 0xC1, 0x77, 0x26, 0x85, 0xFB, 0xFF, 0x1F,
                /* 02F8 */  0x2C, 0xE0, 0xE0, 0xE0, 0x03, 0x5C, 0x0E, 0x43,
                /* 0300 */  0xE4, 0xE0, 0x03, 0xC8, 0x9F, 0x7E, 0xF8, 0x77,
                /* 0308 */  0x95, 0x08, 0xE7, 0xE5, 0x83, 0x00, 0x3B, 0xF8,
                /* 0310 */  0xC0, 0xFD, 0xFF, 0x1F, 0x7C, 0x00, 0x16, 0x3A,
                /* 0318 */  0x3B, 0xF8, 0x00, 0xF1, 0xFF, 0xFF, 0xC1, 0x07,
                /* 0320 */  0xE0, 0xFF, 0xFF, 0xFF, 0xE0, 0x03, 0xDC, 0x2E,
                /* 0328 */  0x17, 0xBE, 0x5E, 0x3C, 0xA5, 0xBC, 0xF8, 0xC0,
                /* 0330 */  0x3B, 0xF8, 0x40, 0x7C, 0xC4, 0xE8, 0xE0, 0x03,
                /* 0338 */  0x0C, 0xE7, 0xC5, 0x06, 0x80, 0x3F, 0xF8, 0x00,
                /* 0340 */  0xBE, 0xFF, 0xFF, 0x07, 0x1F, 0xC0, 0xD2, 0x70,
                /* 0348 */  0x1F, 0x7C, 0x00, 0x5E, 0xFD, 0xFF, 0x0F, 0x3E,
                /* 0350 */  0x00, 0xF7, 0xEE, 0x28, 0x6C, 0x84, 0x0F, 0x3E,
                /* 0358 */  0x20, 0x5C, 0xB5, 0x0E, 0x3E, 0xC0, 0xE3, 0xFF,
                /* 0360 */  0x7F, 0xF0, 0x81, 0x39, 0xAF, 0x97, 0x10, 0x76,
                /* 0368 */  0xF0, 0x01, 0x26, 0xA9, 0x7D, 0x5F, 0x3F, 0x4C,
                /* 0370 */  0x30, 0x06, 0x87, 0xC4, 0x2D, 0x93, 0xC2, 0xF8,
                /* 0378 */  0x5C, 0xE0, 0x83, 0x0F, 0x5C, 0x49, 0x70, 0xA8,
                /* 0380 */  0x01, 0xFA, 0x10, 0x70, 0xEE, 0xC7, 0x79, 0xE2,
                /* 0388 */  0x07, 0xE2, 0x5B, 0xC0, 0x13, 0x10, 0x8C, 0x73,
                /* 0390 */  0x82, 0x27, 0x75, 0x4A, 0xD6, 0x7E, 0x8E, 0x21,
                /* 0398 */  0x57, 0x1A, 0x13, 0xF8, 0xB0, 0xC0, 0xD0, 0xF8,
                /* 03A0 */  0x71, 0x08, 0xAC, 0x07, 0x84, 0xE7, 0x04, 0xB0,
                /* 03A8 */  0xCC, 0xF9, 0x5D, 0x08, 0x73, 0xF0, 0xC1, 0x00,
                /* 03B0 */  0xC6, 0x7B, 0xF0, 0x31, 0xEA, 0x51, 0xF9, 0xA8,
                /* 03B8 */  0xE0, 0x03, 0x90, 0xC7, 0x1F, 0x36, 0x42, 0x90,
                /* 03C0 */  0xF3, 0x8A, 0xF3, 0x60, 0x62, 0xC0, 0xB0, 0xC1,
                /* 03C8 */  0x4D, 0xE0, 0xC3, 0x0F, 0xF8, 0xAE, 0x3C, 0x4F,
                /* 03D0 */  0x07, 0xBE, 0x1E, 0x3C, 0xFC, 0x80, 0xE7, 0xFF,
                /* 03D8 */  0x7F, 0xF8, 0xC1, 0xC5, 0x3A, 0x5B, 0xD1, 0x48,
                /* 03E0 */  0xA3, 0x41, 0x9D, 0x15, 0x7C, 0x2E, 0xF0, 0x99,
                /* 03E8 */  0xE0, 0xD1, 0xC9, 0xC7, 0x0A, 0x83, 0x9C, 0xEB,
                /* 03F0 */  0xA1, 0x3D, 0x2F, 0x3C, 0x10, 0x78, 0xE8, 0x0C,
                /* 03F8 */  0xEB, 0xD1, 0x82, 0x9D, 0x10, 0xF0, 0x17, 0xA7,
                /* 0400 */  0x80, 0xAF, 0x06, 0x4F, 0x1F, 0xB0, 0x4E, 0x21,
                /* 0408 */  0xF8, 0xD3, 0x0A, 0xFC, 0xF1, 0xF8, 0x24, 0xE0,
                /* 0410 */  0x13, 0x8E, 0x8F, 0x61, 0x64, 0x10, 0xA8, 0x93,
                /* 0418 */  0x0E, 0x1F, 0xE9, 0x69, 0xBD, 0x10, 0xF8, 0x9C,
                /* 0420 */  0x70, 0x58, 0xEC, 0xEC, 0xE1, 0xF3, 0x0D, 0x38,
                /* 0428 */  0xC6, 0x03, 0xFF, 0x5E, 0xF2, 0x94, 0xE1, 0x5B,
                /* 0430 */  0x83, 0xE7, 0xEB, 0xD3, 0x82, 0x0F, 0x21, 0xE0,
                /* 0438 */  0xBA, 0x76, 0x78, 0x08, 0x27, 0xE1, 0x7B, 0x02,
                /* 0440 */  0xE6, 0x14, 0x02, 0x0C, 0xF2, 0xC8, 0x7E, 0x1B,
                /* 0448 */  0x84, 0x7A, 0x04, 0xD1, 0x42, 0x65, 0xE3, 0xBC,
                /* 0450 */  0x43, 0xC7, 0x64, 0xB1, 0x27, 0x04, 0x8D, 0xE7,
                /* 0458 */  0xDC, 0x4F, 0xED, 0x00, 0x5F, 0x2B, 0x7C, 0x2E,
                /* 0460 */  0xB0, 0x48, 0x28, 0x5D, 0x47, 0x0C, 0x61, 0x79,
                /* 0468 */  0xE7, 0x11, 0x43, 0x68, 0x30, 0x86, 0xF6, 0xFF,
                /* 0470 */  0x5F, 0x0E, 0x1C, 0x05, 0xF1, 0xD8, 0x1D, 0x15,
                /* 0478 */  0x42, 0x36, 0x8E, 0x01, 0xA8, 0xC1, 0xFB, 0xE2,
                /* 0480 */  0xC3, 0x09, 0x1C, 0xED, 0x5F, 0xC8, 0xCE, 0x0A,
                /* 0488 */  0x10, 0xC6, 0xF4, 0x58, 0x71, 0x2C, 0x3E, 0x2B,
                /* 0490 */  0x81, 0xEF, 0xA4, 0x83, 0x1F, 0xFA, 0x7B, 0x80,
                /* 0498 */  0x09, 0xD8, 0x11, 0x08, 0x77, 0x2C, 0x80, 0x33,
                /* 04A0 */  0x83, 0xD7, 0x82, 0xAA, 0xC7, 0xA1, 0xDB, 0x82,
                /* 04A8 */  0xD5, 0x5D, 0x06, 0x50, 0x78, 0x0F, 0x76, 0xB8,
                /* 04B0 */  0x03, 0x0F, 0x58, 0x80, 0x7C, 0x19, 0xB0, 0xD2,
                /* 04B8 */  0x03, 0x01, 0x9D, 0x49, 0x88, 0x30, 0xD1, 0x0C,
                /* 04C0 */  0x8F, 0x39, 0x7D, 0xF1, 0x81, 0x7A, 0x74, 0x7C,
                /* 04C8 */  0xA0, 0x3E, 0xC6, 0xB0, 0x83, 0x02, 0xEE, 0xE8,
                /* 04D0 */  0x86, 0x81, 0xF5, 0xD0, 0x39, 0xAC, 0xD1, 0xC2,
                /* 04D8 */  0x1E, 0xF1, 0x33, 0x84, 0xEF, 0x1F, 0xBE, 0x18,
                /* 04E0 */  0xF9, 0xDA, 0xE2, 0x93, 0x07, 0x58, 0x4E, 0x62,
                /* 04E8 */  0xC0, 0x45, 0xDA, 0xF1, 0x81, 0xFE, 0xFF, 0x09,
                /* 04F0 */  0x7C, 0x10, 0xB2, 0xD4, 0xE3, 0x03, 0x02, 0xE3,
                /* 04F8 */  0x10, 0x7D, 0x1E, 0x38, 0xCB, 0x67, 0x02, 0x1F,
                /* 0500 */  0xFD, 0x7C, 0x1C, 0xC1, 0x09, 0x3B, 0x43, 0xA0,
                /* 0508 */  0x24, 0x51, 0xE8, 0x3C, 0xE6, 0x33, 0x04, 0x97,
                /* 0510 */  0x00, 0x47, 0x41, 0x7C, 0x86, 0x70, 0xBC, 0x23,
                /* 0518 */  0x0C, 0x7A, 0x74, 0xD6, 0x7A, 0x10, 0x22, 0x67,
                /* 0520 */  0x87, 0xA3, 0x73, 0x9C, 0x33, 0x04, 0x50, 0x3D,
                /* 0528 */  0xC8, 0x80, 0xEF, 0xF4, 0x00, 0xBC, 0x87, 0xEF,
                /* 0530 */  0xD3, 0x03, 0x70, 0xFD, 0xFF, 0x9F, 0x1E, 0x80,
                /* 0538 */  0xCB, 0x81, 0xEA, 0x2C, 0x8F, 0xF8, 0x6D, 0xC4,
                /* 0540 */  0xB7, 0x07, 0xEC, 0xE9, 0x01, 0xE0, 0x17, 0xA4,
                /* 0548 */  0x4F, 0x0F, 0xE0, 0xFD, 0xFF, 0x9F, 0x1E, 0x00,
                /* 0550 */  0x07, 0x07, 0x85, 0x77, 0x3E, 0x9F, 0x1E, 0x00,
                /* 0558 */  0xB6, 0x0D, 0xDA, 0xB0, 0xFE, 0xFF, 0x9F, 0x1E,
                /* 0560 */  0x00, 0x6F, 0x37, 0x54, 0x9F, 0xD7, 0x9E, 0x1E,
                /* 0568 */  0x00, 0x06, 0xFD, 0xFF, 0x4F, 0x0F, 0xE0, 0x82,
                /* 0570 */  0xE5, 0xA7, 0x07, 0xC0, 0x89, 0xB0, 0xD3, 0x03,
                /* 0578 */  0x8A, 0xC3, 0x42, 0x4F, 0x0F, 0x10, 0x0E, 0xC5,
                /* 0580 */  0x6C, 0x90, 0x47, 0x1C, 0xBC, 0xFA, 0x91, 0x90,
                /* 0588 */  0xC3, 0x03, 0xF8, 0x9C, 0x1C, 0x1E, 0x00, 0x4D,
                /* 0590 */  0xE7, 0x75, 0xEE, 0xEC, 0xA8, 0xAC, 0xC3, 0x03,
                /* 0598 */  0xFC, 0xFF, 0xFF, 0xE1, 0x01, 0xB8, 0x1D, 0xD3,
                /* 05A0 */  0x7D, 0x78, 0x00, 0xBC, 0x1C, 0x7F, 0x71, 0xA2,
                /* 05A8 */  0x8E, 0xBF, 0xC8, 0xC3, 0x03, 0x1B, 0x77, 0x94,
                /* 05B0 */  0xD0, 0x21, 0x5E, 0x64, 0x63, 0x9F, 0xDB, 0x99,
                /* 05B8 */  0xF8, 0x8A, 0x7D, 0x10, 0xAF, 0x03, 0x3E, 0x3E,
                /* 05C0 */  0x00, 0x36, 0xFF, 0xFF, 0xC7, 0x07, 0xC0, 0x89,
                /* 05C8 */  0x87, 0x73, 0x15, 0xA0, 0xEE, 0x46, 0xCD, 0x2E,
                /* 05D0 */  0x79, 0x0C, 0x2B, 0x3A, 0xE6, 0x5C, 0x05, 0x78,
                /* 05D8 */  0xF9, 0xFF, 0x9F, 0xAB, 0x00, 0x8F, 0xE0, 0x3E,
                /* 05E0 */  0x3D, 0x00, 0x5E, 0x64, 0x9D, 0x1E, 0x50, 0x67,
                /* 05E8 */  0x01, 0xCB, 0x3C, 0x2A, 0x68, 0xB2, 0xD5, 0x9E,
                /* 05F0 */  0x12, 0x74, 0x7A, 0x60, 0x77, 0x07, 0xFC, 0xD9,
                /* 05F8 */  0x01, 0xB8, 0xFE, 0xFF, 0xCF, 0x0E, 0x80, 0x73,
                /* 0600 */  0x13, 0x67, 0x07, 0x40, 0x8D, 0xBE, 0x05, 0xEA,
                /* 0608 */  0x88, 0x87, 0xD3, 0xFB, 0x52, 0xD0, 0x41, 0x06,
                /* 0610 */  0x27, 0x72, 0x96, 0x1A, 0x78, 0x60, 0x6B, 0x06,
                /* 0618 */  0xD7, 0x11, 0x80, 0xE9, 0x83, 0xD4, 0xA9, 0xC1,
                /* 0620 */  0x87, 0x06, 0x2B, 0xA3, 0x90, 0x8E, 0xC3, 0x03,
                /* 0628 */  0x2A, 0xF9, 0x11, 0x82, 0x82, 0x18, 0xD0, 0xB1,
                /* 0630 */  0x0E, 0x55, 0xE8, 0xFF, 0xFF, 0xC9, 0xCC, 0x43,
                /* 0638 */  0x38, 0x46, 0x27, 0xB9, 0x3A, 0xD0, 0x89, 0x79,
                /* 0640 */  0x8E, 0x1C, 0x8F, 0x8D, 0xCB, 0xA8, 0x55, 0xCD,
                /* 0648 */  0x10, 0x44, 0x6A, 0x8E, 0x04, 0xA8, 0x09, 0xF8,
                /* 0650 */  0xE4, 0x80, 0xD1, 0x75, 0xA1, 0x02, 0x99, 0xBE,
                /* 0658 */  0x83, 0x03, 0xC8, 0xD1, 0xF9, 0xBD, 0x0C, 0x70,
                /* 0660 */  0x34, 0x2A, 0xDF, 0xCB, 0x80, 0xF5, 0xFF, 0xFF,
                /* 0668 */  0xFE, 0x01, 0x46, 0x15, 0x37, 0x56, 0x40, 0x1D,
                /* 0670 */  0x7C, 0x85, 0xF3, 0x16, 0x70, 0xFC, 0x48, 0x27,
                /* 0678 */  0xC2, 0xEE, 0x88, 0x80, 0xFF, 0xFF, 0xFF, 0xE1,
                /* 0680 */  0x01, 0x18, 0x0E, 0xD9, 0x77, 0x21, 0xC0, 0xD8,
                /* 0688 */  0x68, 0x1F, 0x1E, 0xE0, 0xDD, 0x85, 0x80, 0xC1,
                /* 0690 */  0x7C, 0x7C, 0x17, 0x02, 0x3C, 0xFC, 0xFF, 0xEF,
                /* 0698 */  0x42, 0x00, 0x3F, 0x47, 0xEE, 0xFB, 0x07, 0x70,
                /* 06A0 */  0xFB, 0xFF, 0xDF, 0x3F, 0xC0, 0x1D, 0xEB, 0xFE,
                /* 06A8 */  0x81, 0x8E, 0x79, 0xFF, 0x20, 0x07, 0x5E, 0x43,
                /* 06B0 */  0x84, 0x3D, 0x1C, 0xBB, 0xBE, 0x66, 0x92, 0x13,
                /* 06B8 */  0x48, 0x8C, 0x08, 0x91, 0x42, 0x93, 0xFB, 0x07,
                /* 06C0 */  0x85, 0x70, 0x20, 0x18, 0xC5, 0x81, 0xD0, 0xE1,
                /* 06C8 */  0x81, 0x07, 0x80, 0xA3, 0x20, 0x3E, 0x32, 0xF8,
                /* 06D0 */  0xF0, 0x60, 0x25, 0x87, 0x07, 0xF4, 0x94, 0x8E,
                /* 06D8 */  0xDB, 0x57, 0x12, 0x76, 0x78, 0x80, 0x77, 0x02,
                /* 06E0 */  0x61, 0x77, 0x21, 0x60, 0x6D, 0x4C, 0x80, 0x36,
                /* 06E8 */  0x48, 0x32, 0x3E, 0x38, 0xDA, 0xCF, 0x1A, 0xA0,
                /* 06F0 */  0x18, 0x1F, 0xF0, 0x39, 0x6B, 0xC0, 0xFF, 0xFF,
                /* 06F8 */  0x8F, 0x0F, 0x4E, 0xC0, 0xF1, 0xA1, 0xA1, 0x7D,
                /* 0700 */  0x1A, 0x88, 0x79, 0x38, 0x47, 0x83, 0x19, 0x20,
                /* 0708 */  0xF0, 0x3C, 0xBE, 0x78, 0x80, 0xE0, 0x3B, 0x9B,
                /* 0710 */  0x00, 0x6F, 0x1B, 0x67, 0x13, 0x40, 0x8D, 0xA0,
                /* 0718 */  0x6B, 0x1F, 0x6A, 0xD4, 0x16, 0xF8, 0x6C, 0xD0,
                /* 0720 */  0x04, 0x9B, 0x17, 0xF0, 0xFF, 0x9F, 0x83, 0x8F,
                /* 0728 */  0xC5, 0x1E, 0xFF, 0xE3, 0x34, 0xC0, 0xB0, 0x41,
                /* 0730 */  0x3C, 0x38, 0x00, 0x46, 0xFE, 0xFF, 0x07, 0x07,
                /* 0738 */  0xF0, 0xDC, 0xB8, 0x7C, 0x70, 0x00, 0xF8, 0x65,
                /* 0740 */  0xF4, 0xE0, 0x00, 0x94, 0xFF, 0xFF, 0x07, 0x07,
                /* 0748 */  0xE0, 0x71, 0xF4, 0x7B, 0x70, 0x00, 0x18, 0x36,
                /* 0750 */  0x80, 0x07, 0x07, 0x60, 0xF4, 0xFF, 0x3F, 0x38,
                /* 0758 */  0x00, 0x0F, 0x59, 0x07, 0x07, 0xD4, 0x59, 0xC0,
                /* 0760 */  0x32, 0x8F, 0x0A, 0x9A, 0xEB, 0x11, 0x3E, 0x2F,
                /* 0768 */  0x9E, 0x58, 0xCC, 0x18, 0x87, 0x13, 0x3D, 0xFE,
                /* 0770 */  0x31, 0x9F, 0x4F, 0x84, 0x03, 0x78, 0x76, 0x00,
                /* 0778 */  0xE3, 0x19, 0x10, 0x3F, 0x83, 0x97, 0x62, 0x43,
                /* 0780 */  0x3C, 0x32, 0xC2, 0xBD, 0x8D, 0x03, 0xF7, 0x33,
                /* 0788 */  0x1D, 0xF0, 0x87, 0xF0, 0xD9, 0x01, 0x1C, 0xFF,
                /* 0790 */  0xFF, 0xB3, 0x03, 0x70, 0x4E, 0xF2, 0x36, 0xD0,
                /* 0798 */  0xD9, 0x81, 0xC3, 0x3A, 0xD9, 0x22, 0x75, 0x76,
                /* 07A0 */  0x60, 0xB7, 0x71, 0x63, 0x9E, 0x4D, 0x94, 0xD7,
                /* 07A8 */  0x18, 0x46, 0x30, 0x0D, 0x9C, 0xEE, 0xE2, 0x3C,
                /* 07B0 */  0x07, 0x8C, 0x54, 0x1F, 0x5E, 0x51, 0x3A, 0x0F,
                /* 07B8 */  0xAF, 0x14, 0xC4, 0x07, 0x06, 0xDF, 0xC5, 0x6D,
                /* 07C0 */  0xE4, 0xE8, 0x80, 0x1A, 0x94, 0x15, 0x5F, 0x0A,
                /* 07C8 */  0x34, 0xA4, 0x04, 0x83, 0x1C, 0xC6, 0x81, 0xE2,
                /* 07D0 */  0x88, 0x71, 0xE7, 0x06, 0xB8, 0xE2, 0x60, 0x94,
                /* 07D8 */  0x6B, 0x6C, 0x68, 0x15, 0x20, 0x3A, 0x0C, 0xF8,
                /* 07E0 */  0xDE, 0xC1, 0xE6, 0x06, 0xFC, 0x66, 0xEF, 0xB9,
                /* 07E8 */  0xB1, 0xFF, 0xFF, 0xDC, 0xC0, 0x7C, 0x21, 0xC1,
                /* 07F0 */  0xCC, 0x0D, 0xF8, 0x9D, 0x17, 0x3C, 0x37, 0x70,
                /* 07F8 */  0x5D, 0xF1, 0x81, 0xE5, 0xA0, 0x71, 0x33, 0xF1,
                /* 0800 */  0xCD, 0xC9, 0x93, 0xF6, 0x61, 0x82, 0x11, 0x0C,
                /* 0808 */  0x73, 0xAB, 0x01, 0x9A, 0x50, 0x9E, 0x37, 0xB8,
                /* 0810 */  0x2E, 0x35, 0xD8, 0xFF, 0xFF, 0xA5, 0x06, 0x98,
                /* 0818 */  0xDE, 0x51, 0x7C, 0xA9, 0x01, 0xBC, 0x44, 0xBA,
                /* 0820 */  0xD4, 0xA0, 0x38, 0x1C, 0xF1, 0x52, 0x83, 0x98,
                /* 0828 */  0x6D, 0xEC, 0xD0, 0x21, 0xE2, 0xBE, 0x9F, 0xC7,
                /* 0830 */  0x78, 0xAC, 0xC1, 0x40, 0xEB, 0x5A, 0x83, 0x0A,
                /* 0838 */  0x03, 0xA3, 0x78, 0x87, 0x07, 0x54, 0xA0, 0xC3,
                /* 0840 */  0x03, 0x05, 0xF1, 0xB8, 0x7D, 0xAD, 0x01, 0xCC,
                /* 0848 */  0xFC, 0xFF, 0xAF, 0x35, 0x80, 0xBF, 0xB3, 0x0A,
                /* 0850 */  0xB0, 0x08, 0x7B, 0x3E, 0x40, 0x1D, 0x11, 0x3C,
                /* 0858 */  0x23, 0x83, 0x78, 0x60, 0x0E, 0x37, 0x68, 0xF4,
                /* 0860 */  0x7D, 0x0E, 0x7F, 0x54, 0x01, 0x9E, 0x37, 0x1E,
                /* 0868 */  0xF0, 0x9D, 0x6C, 0xC0, 0xF2, 0xFF, 0x3F, 0xD9,
                /* 0870 */  0x00, 0x6C, 0xD0, 0x7C, 0xB2, 0x01, 0xD4, 0x28,
                /* 0878 */  0x5C, 0xA2, 0x2E, 0xA2, 0x38, 0xC5, 0xCF, 0x03,
                /* 0880 */  0x9D, 0x6C, 0xD8, 0x1C, 0xCF, 0x82, 0x1F, 0x6C,
                /* 0888 */  0x70, 0x1A, 0x01, 0x75, 0xB0, 0xE1, 0xEA, 0x60,
                /* 0890 */  0xA4, 0x65, 0xC1, 0x3A, 0x69, 0xF0, 0xF4, 0xD7,
                /* 0898 */  0x3F, 0x0A, 0xF2, 0xFF, 0x3F, 0x70, 0x76, 0xB0,
                /* 08A0 */  0x01, 0x98, 0x75, 0x0D, 0x80, 0x33, 0x97, 0x57,
                /* 08A8 */  0x88, 0x27, 0x07, 0x1F, 0xFF, 0x00, 0x07, 0xFF,
                /* 08B0 */  0xFF, 0x9B, 0x22, 0x60, 0xE2, 0xE4, 0x02, 0xBE,
                /* 08B8 */  0x9B, 0x22, 0x60, 0x7B, 0x24, 0xBE, 0x00, 0x01,
                /* 08C0 */  0xA7, 0xFF, 0xFF, 0x05, 0x08, 0xF8, 0x5C, 0xFC,
                /* 08C8 */  0x7D, 0x01, 0x02, 0xBC, 0x88, 0xBC, 0x00, 0xA1,
                /* 08D0 */  0x60, 0x2D, 0xFA, 0x02, 0x84, 0xB8, 0x29, 0x7A,
                /* 08D8 */  0x36, 0x3E, 0x00, 0x61, 0x84, 0xDE, 0x7F, 0x50,
                /* 08E0 */  0x12, 0x61, 0x24, 0xFA, 0x38, 0x8D, 0x92, 0x79,
                /* 08E8 */  0xFF, 0xA1, 0x20, 0x3E, 0x4E, 0x03, 0xFE, 0xFE,
                /* 08F0 */  0xFF, 0xF7, 0x1F, 0x80, 0x49, 0x57, 0x4A, 0xC0,
                /* 08F8 */  0xDA, 0xFF, 0xFF, 0x8E, 0x08, 0x1C, 0x8F, 0x40,
                /* 0900 */  0x00, 0x67, 0x60, 0x1E, 0x81, 0x80, 0xE5, 0xFF,
                /* 0908 */  0xFF, 0x08, 0x04, 0xFE, 0xA3, 0x80, 0x8F, 0x40,
                /* 0910 */  0x98, 0x2B, 0x25, 0x06, 0x25, 0x70, 0x98, 0x03,
                /* 0918 */  0x62, 0x32, 0xCF, 0x40, 0x28, 0x81, 0x30, 0x12,
                /* 0920 */  0x73, 0xA5, 0x44, 0xC5, 0x3F, 0x03, 0x51, 0x10,
                /* 0928 */  0x5F, 0x29, 0x01, 0xCE, 0xFD, 0xFF, 0xCF, 0x40,
                /* 0930 */  0x80, 0x95, 0x60, 0x10, 0x52, 0x72, 0xA5, 0x84,
                /* 0938 */  0x98, 0xE4, 0x4A, 0x09, 0x14, 0x75, 0xCD, 0x0D,
                /* 0940 */  0x34, 0xC6, 0x04, 0x68, 0x3B, 0x2F, 0x01, 0x11,
                /* 0948 */  0x49, 0xE7, 0x25, 0x94, 0x88, 0xF3, 0x12, 0x05,
                /* 0950 */  0xF1, 0xFC, 0x1D, 0x70, 0xD2, 0xE8, 0x13, 0x10,
                /* 0958 */  0x9C, 0x38, 0x27, 0x20, 0x50, 0xFE, 0xFF, 0x4F,
                /* 0960 */  0x40, 0xE0, 0x15, 0x36, 0x70, 0x90, 0x1D, 0x81,
                /* 0968 */  0x80, 0x39, 0xD4, 0x23, 0x10, 0x60, 0x46, 0xE8,
                /* 0970 */  0xA1, 0x12, 0x2D, 0xFC, 0x50, 0x09, 0xE1, 0x06,
                /* 0978 */  0x84, 0x11, 0x7B, 0x02, 0x42, 0x1D, 0x82, 0x7C,
                /* 0980 */  0xA8, 0x04, 0x1E, 0xFF, 0xFF, 0x43, 0x25, 0xC0,
                /* 0988 */  0xFF, 0xFF, 0xFF, 0xA9, 0x06, 0x7E, 0xE0, 0x53,
                /* 0990 */  0x0D, 0x2A, 0xE2, 0xA9, 0x86, 0x82, 0x78, 0x60,
                /* 0998 */  0x3E, 0x26, 0xFA, 0x54, 0x83, 0x3B, 0x54, 0xE2,
                /* 09A0 */  0x0F, 0x35, 0xC0, 0x13, 0xCA, 0x87, 0x1A, 0xF0,
                /* 09A8 */  0x1D, 0x82, 0x00, 0x1E, 0xFC, 0xFF, 0x0F, 0x41,
                /* 09B0 */  0xE0, 0x53, 0x7D, 0x08, 0x02, 0xD4, 0x28, 0x5B,
                /* 09B8 */  0xA0, 0x0E, 0x41, 0x5C, 0x0A, 0x84, 0x94, 0x7E,
                /* 09C0 */  0x3E, 0x34, 0xE0, 0xF3, 0xEA, 0xF3, 0x10, 0x84,
                /* 09C8 */  0x38, 0x76, 0xF8, 0xDA, 0xA1, 0xC3, 0x0F, 0xBD,
                /* 09D0 */  0x84, 0x58, 0x19, 0x85, 0x94, 0x9C, 0x34, 0x50,
                /* 09D8 */  0xD9, 0x6F, 0x2D, 0x14, 0xC4, 0x80, 0xBE, 0xD2,
                /* 09E0 */  0xC1, 0x19, 0xCE, 0x5B, 0x91, 0x2F, 0x0C, 0xBE,
                /* 09E8 */  0xD2, 0x01, 0x3F, 0x02, 0x5F, 0xE9, 0x80, 0xDD,
                /* 09F0 */  0xFF, 0xFF, 0xB6, 0x02, 0x4B, 0xCE, 0xA4, 0x51,
                /* 09F8 */  0x7B, 0xF6, 0xA4, 0x4D, 0xE1, 0x49, 0xFB, 0x46,
                /* 0A00 */  0x0D, 0x78, 0x38, 0x1F, 0x81, 0xEF, 0xF2, 0x01,
                /* 0A08 */  0xBC, 0x87, 0xE8, 0xCB, 0x07, 0xE0, 0x25, 0xAE,
                /* 0A10 */  0x82, 0xFF, 0xFF, 0xE5, 0x03, 0x1B, 0xFF, 0x15,
                /* 0A18 */  0xA0, 0xCB, 0x07, 0xBB, 0x22, 0x63, 0xC6, 0xEF,
                /* 0A20 */  0xD0, 0x27, 0x06, 0x0A, 0xE1, 0xB8, 0x14, 0xBA,
                /* 0A28 */  0xD9, 0xC3, 0xBD, 0x35, 0xC1, 0xB9, 0x7C, 0x60,
                /* 0A30 */  0x6E, 0x41, 0x30, 0x4F, 0x1F, 0xEC, 0xE0, 0x00,
                /* 0A38 */  0x4C, 0x08, 0x7C, 0x0B, 0x02, 0xDF, 0x39, 0x03,
                /* 0A40 */  0xBC, 0xE3, 0x03, 0x3E, 0xE7, 0x0C, 0x60, 0xFA,
                /* 0A48 */  0xFF, 0x3F, 0x67, 0x80, 0x1D, 0xE5, 0x39, 0x03,
                /* 0A50 */  0x30, 0xA3, 0xED, 0xCE, 0x84, 0xD6, 0x7A, 0x67,
                /* 0A58 */  0x82, 0x70, 0x5B, 0x60, 0x0A, 0xEF, 0x4C, 0x28,
                /* 0A60 */  0x6D, 0x77, 0x26, 0x40, 0xF8, 0xFF, 0xFF, 0xCE,
                /* 0A68 */  0x04, 0x0E, 0x41, 0x93, 0x46, 0x49, 0xB8, 0xAB,
                /* 0A70 */  0x50, 0x10, 0x4F, 0xDA, 0x27, 0x46, 0xC0, 0xC3,
                /* 0A78 */  0xA8, 0x7C, 0x02, 0x04, 0x3C, 0x8D, 0xF2, 0xED,
                /* 0A80 */  0x03, 0x30, 0xF1, 0xFF, 0x3F, 0x08, 0xE0, 0x23,
                /* 0A88 */  0x5F, 0x9A, 0x50, 0xB0, 0x96, 0x70, 0xFB, 0x40,
                /* 0A90 */  0x5C, 0x9A, 0x30, 0x07, 0x00, 0x1E, 0xFB, 0xD6,
                /* 0A98 */  0x84, 0x3A, 0xBA, 0xFA, 0xDA, 0xE4, 0xA3, 0x03,
                /* 0AA0 */  0x0F, 0x08, 0x47, 0x41, 0x7C, 0x6B, 0x02, 0xFC,
                /* 0AA8 */  0x9D, 0x34, 0xC0, 0x7B, 0x6B, 0x02, 0x4E, 0x27,
                /* 0AB0 */  0x0D, 0xE0, 0xF3, 0xFF, 0x3F, 0x69, 0x00, 0x2F,
                /* 0AB8 */  0xE3, 0xD7, 0x26, 0x40, 0x9E, 0xB3, 0x63, 0xEB,
                /* 0AC0 */  0x6B, 0x13, 0xA0, 0xF9, 0xFF, 0x7F, 0x6D, 0x02,
                /* 0AC8 */  0x76, 0x4E, 0xAE, 0x4D, 0x80, 0xAE, 0xE3, 0x02,
                /* 0AD0 */  0xBB, 0x7D, 0x00, 0xF3, 0x61, 0xBE, 0x7D, 0x00,
                /* 0AD8 */  0xDF, 0xFF, 0xFF, 0xB5, 0x09, 0xD8, 0x1C, 0x00,
                /* 0AE0 */  0xF8, 0xB5, 0x09, 0x70, 0x7D, 0xD2, 0x00, 0xE7,
                /* 0AE8 */  0xB5, 0x09, 0xB8, 0x9F, 0x34, 0xB0, 0xFF, 0xFF,
                /* 0AF0 */  0x93, 0x06, 0x30, 0x1E, 0xE7, 0x93, 0x06, 0x60,
                /* 0AF8 */  0x46, 0xE0, 0x49, 0x03, 0x75, 0x08, 0xB0, 0xE0,
                /* 0B00 */  0x43, 0x37, 0xB9, 0x02, 0xD8, 0xE3, 0x10, 0x09,
                /* 0B08 */  0x4C, 0xF0, 0xC0, 0x51, 0xCE, 0xF2, 0x38, 0x0D,
                /* 0B10 */  0x5E, 0xE1, 0x94, 0x34, 0x86, 0x40, 0xE7, 0x7D,
                /* 0B18 */  0x50, 0x11, 0xDE, 0x4F, 0x0C, 0xAE, 0xF3, 0x06,
                /* 0B20 */  0x4A, 0x12, 0x85, 0x4E, 0x3E, 0x80, 0x9D, 0xFF,
                /* 0B28 */  0xFF, 0x79, 0x03, 0x8C, 0x07, 0x08, 0xE0, 0x2F,
                /* 0B30 */  0xFE, 0x00, 0x01, 0xA8, 0x51, 0xB9, 0x44, 0x5D,
                /* 0B38 */  0xE3, 0x70, 0xAA, 0xDF, 0x07, 0x3A, 0x40, 0xB0,
                /* 0B40 */  0x6B, 0x1C, 0xBF, 0x9B, 0xFB, 0x32, 0x27, 0x30,
                /* 0B48 */  0x5D, 0xE3, 0xB8, 0x4A, 0x18, 0xA9, 0x5A, 0xAE,
                /* 0B50 */  0x4E, 0x0E, 0x5C, 0x07, 0x8C, 0xE0, 0x0C, 0xE2,
                /* 0B58 */  0x61, 0x3B, 0xD6, 0xA9, 0x1E, 0x3D, 0x26, 0x2B,
                /* 0B60 */  0xBE, 0x13, 0xE8, 0x08, 0xE2, 0x20, 0xC7, 0x38,
                /* 0B68 */  0x20, 0xF0, 0xFF, 0x3F, 0xC6, 0x81, 0xE1, 0x48,
                /* 0B70 */  0x0F, 0xAE, 0x6C, 0x63, 0x43, 0x1F, 0x93, 0xAC,
                /* 0B78 */  0x19, 0x51, 0x80, 0x47, 0x73, 0x2E, 0x98, 0xD9,
                /* 0B80 */  0x01, 0xBF, 0xFB, 0x3F, 0xF8, 0x92, 0xCD, 0x0E,
                /* 0B88 */  0xAD, 0xE3, 0x46, 0x42, 0x46, 0x53, 0x3B, 0xA4,
                /* 0B90 */  0x66, 0xF3, 0xC8, 0xE0, 0xC9, 0x01, 0xBF, 0x23,
                /* 0B98 */  0x83, 0x27, 0x07, 0xAE, 0x68, 0xA7, 0x2F, 0xF4,
                /* 0BA0 */  0xE4, 0x3C, 0x91, 0x57, 0x81, 0x08, 0xEF, 0x34,
                /* 0BA8 */  0xBE, 0x4C, 0x82, 0xEB, 0xFF, 0x3F, 0x39, 0xF0,
                /* 0BB0 */  0x22, 0xF9, 0x32, 0x09, 0x9C, 0xE5, 0xDC, 0x81,
                /* 0BB8 */  0x50, 0x4F, 0x05, 0x9F, 0x15, 0x4C, 0xE1, 0x0B,
                /* 0BC0 */  0x80, 0xC3, 0x1D, 0x11, 0xD0, 0x77, 0x20, 0x7C,
                /* 0BC8 */  0x98, 0x3B, 0x10, 0xD0, 0x1C, 0x89, 0xEF, 0x08,
                /* 0BD0 */  0xE0, 0xBA, 0x02, 0x01, 0x6F, 0xF3, 0x10, 0xFA,
                /* 0BD8 */  0xFF, 0x5F, 0x81, 0x00, 0x2F, 0x42, 0xAE, 0x40,
                /* 0BE0 */  0x68, 0x61, 0x57, 0x20, 0xC4, 0x5D, 0x12, 0x33,
                /* 0BE8 */  0x7E, 0xCB, 0xB9, 0x02, 0x51, 0x08, 0x0B, 0x81,
                /* 0BF0 */  0x91, 0x0C, 0x08, 0x1D, 0x1C, 0x78, 0xF0, 0x2B,
                /* 0BF8 */  0x10, 0x05, 0xF1, 0xF5, 0xC2, 0xB7, 0x0F, 0x5F,
                /* 0C00 */  0x81, 0xE0, 0x9D, 0x1B, 0xE0, 0xDD, 0x24, 0x81,
                /* 0C08 */  0xD3, 0xB9, 0x01, 0x5C, 0x01, 0x47, 0x87, 0x1E,
                /* 0C10 */  0xB3, 0x2F, 0x41, 0x30, 0x06, 0x08, 0xE6, 0xFF,
                /* 0C18 */  0xFF, 0x55, 0x12, 0x9C, 0x03, 0x04, 0xD7, 0x45,
                /* 0C20 */  0xCF, 0x03, 0xC4, 0x01, 0xFB, 0x1C, 0x84, 0x1D,
                /* 0C28 */  0x1F, 0x30, 0xBD, 0x09, 0x81, 0xEF, 0x3C, 0xE0,
                /* 0C30 */  0x9B, 0x10, 0x0E, 0xD8, 0x37, 0x21, 0xEC, 0x45,
                /* 0C38 */  0x15, 0x98, 0x42, 0xF9, 0x5E, 0x0B, 0xBE, 0x43,
                /* 0C40 */  0x0F, 0x38, 0xFE, 0xFF, 0xE3, 0x03, 0x8E, 0x87,
                /* 0C48 */  0x1E, 0xC0, 0x93, 0xFA, 0x43, 0x0F, 0xA0, 0x46,
                /* 0C50 */  0xE7, 0xA1, 0x07, 0xAD, 0xFB, 0x1A, 0x09, 0xE1,
                /* 0C58 */  0xB6, 0xC0, 0xD4, 0x5E, 0x23, 0x51, 0x3A, 0xAF,
                /* 0C60 */  0x91, 0xA0, 0xF8, 0xFF, 0x5F, 0x23, 0x01, 0xFE,
                /* 0C68 */  0xFF, 0xFF, 0xAF, 0x91, 0x00, 0x13, 0x8E, 0xE6,
                /* 0C70 */  0xF0, 0x67, 0x8D, 0x3B, 0x9A, 0x03, 0xEF, 0x91,
                /* 0C78 */  0xF8, 0xC6, 0x04, 0xBE, 0x3B, 0x10, 0xEC, 0xFF,
                /* 0C80 */  0xFF, 0x1D, 0x08, 0x98, 0xB9, 0xBF, 0x03, 0x01,
                /* 0C88 */  0x6A, 0xC4, 0xDC, 0x81, 0x50, 0xB0, 0x16, 0x77,
                /* 0C90 */  0x8F, 0x84, 0x72, 0x00, 0xE0, 0x82, 0x2E, 0x92,
                /* 0C98 */  0x28, 0x29, 0x30, 0xBA, 0x49, 0xFA, 0xE8, 0xC0,
                /* 0CA0 */  0xA3, 0x5F, 0x82, 0x28, 0x88, 0x2F, 0x92, 0x80,
                /* 0CA8 */  0xB5, 0xFF, 0xFF, 0x45, 0x12, 0xE0, 0xFF, 0xFF,
                /* 0CB0 */  0xFF, 0x22, 0x09, 0xF6, 0x63, 0x0F, 0x78, 0x2F,
                /* 0CB8 */  0x92, 0xC0, 0xE9, 0xD8, 0x03, 0x78, 0x92, 0x7F,
                /* 0CC0 */  0xEC, 0x01, 0x64, 0xFC, 0xFF, 0x6F, 0x92, 0xE0,
                /* 0CC8 */  0x73, 0x26, 0x40, 0xD9, 0x4D, 0x12, 0x20, 0xF3,
                /* 0CD0 */  0xFF, 0xFF, 0x26, 0x09, 0xF0, 0xD1, 0xC9, 0x4D,
                /* 0CD8 */  0x12, 0xE8, 0xFE, 0xFF, 0xEF, 0x40, 0xE0, 0x3F,
                /* 0CE0 */  0xB4, 0xB0, 0x3B, 0x10, 0x30, 0xB7, 0x7F, 0x93,
                /* 0CE8 */  0x04, 0xF4, 0x1D, 0x00, 0xF8, 0x4D, 0x12, 0x78,
                /* 0CF0 */  0xFF, 0xFF, 0x6F, 0x92, 0x00, 0xFF, 0xFF, 0xFF,
                /* 0CF8 */  0x37, 0x49, 0xC0, 0xD3, 0xB1, 0x07, 0x9C, 0x37,
                /* 0D00 */  0x49, 0xE0, 0x7E, 0xEC, 0x01, 0xFE, 0xFA, 0x8F,
                /* 0D08 */  0x3D, 0xA0, 0xF9, 0xFF, 0x1F, 0x7B, 0x80, 0x73,
                /* 0D10 */  0xB6, 0x17, 0x8E, 0x8E, 0x3D, 0xFC, 0x2C, 0xE0,
                /* 0D18 */  0xAC, 0xCB, 0xD4, 0x4D, 0x12, 0x86, 0xC2, 0x81,
                /* 0D20 */  0x90, 0x53, 0x8E, 0xD3, 0x01, 0xEA, 0x2E, 0xC9,
                /* 0D28 */  0x73, 0xC1, 0x28, 0xC5, 0xB9, 0x07, 0x75, 0xB1,
                /* 0D30 */  0x34, 0x9C, 0x41, 0xEC, 0xE1, 0x2E, 0x09, 0x50,
                /* 0D38 */  0xE6, 0xFF, 0x7F, 0x97, 0x04, 0x78, 0x19, 0xEC,
                /* 0D40 */  0x26, 0x80, 0x3E, 0x8D, 0x78, 0x32, 0x2F, 0x3B,
                /* 0D48 */  0x1E, 0xCD, 0xC9, 0xF9, 0x24, 0x00, 0x3C, 0xFE,
                /* 0D50 */  0xFF, 0x93, 0x83, 0x37, 0x0E, 0x9F, 0x04, 0xC0,
                /* 0D58 */  0x35, 0x38, 0x38, 0x27, 0x97, 0x80, 0xAF, 0x0D,
                /* 0D60 */  0x8F, 0x35, 0x1E, 0x1C, 0x30, 0x3C, 0xF7, 0xF0,
                /* 0D68 */  0xC1, 0x81, 0xE7, 0x8E, 0x0A, 0x98, 0x1E, 0xB9,
                /* 0D70 */  0x6F, 0x57, 0x30, 0xFF, 0xFF, 0xB7, 0x2B, 0xC0,
                /* 0D78 */  0x86, 0xFF, 0xDB, 0x15, 0xA0, 0x26, 0xC8, 0xED,
                /* 0D80 */  0x0A, 0xC5, 0xE1, 0x60, 0xB7, 0x2B, 0xC4, 0x1D,
                /* 0D88 */  0x15, 0x7B, 0xBC, 0xC2, 0x40, 0xEB, 0x7A, 0x45,
                /* 0D90 */  0x21, 0x1C, 0x01, 0x46, 0x01, 0x20, 0x74, 0x78,
                /* 0D98 */  0xE0, 0x92, 0xE1, 0x28, 0x88, 0x47, 0xE4, 0x5B,
                /* 0DA0 */  0x2A, 0xB0, 0xFE, 0xFF, 0xDF, 0x52, 0x01, 0xFE,
                /* 0DA8 */  0xFF, 0xFF, 0x6F, 0xA9, 0xC0, 0x3C, 0xDC, 0x45,
                /* 0DB0 */  0x0B, 0xFA, 0x71, 0x00, 0x78, 0x5E, 0xB5, 0xC0,
                /* 0DB8 */  0x37, 0x3C, 0x38, 0x57, 0x2D, 0xDC, 0xF0, 0x80,
                /* 0DC0 */  0xE7, 0x65, 0x0B, 0x7C, 0x87, 0x2A, 0x58, 0xFF,
                /* 0DC8 */  0xFF, 0x1B, 0x30, 0x30, 0x3E, 0x54, 0x01, 0xAE,
                /* 0DD0 */  0x02, 0x1C, 0xAA, 0x00, 0x35, 0xCA, 0x16, 0xA8,
                /* 0DD8 */  0x43, 0x15, 0x3F, 0x0E, 0x59, 0xE9, 0x03, 0x46,
                /* 0DE0 */  0xC3, 0x35, 0xC4, 0x1B, 0x30, 0xBF, 0x2D, 0xF8,
                /* 0DE8 */  0xAA, 0x27, 0x30, 0xDD, 0x7F, 0xB9, 0x32, 0x0A,
                /* 0DF0 */  0x29, 0x39, 0xDD, 0xA1, 0xB2, 0x0B, 0xF8, 0xFF,
                /* 0DF8 */  0xC3, 0x31, 0x10, 0x03, 0xFA, 0x86, 0xE8, 0x93,
                /* 0E00 */  0x03, 0x4E, 0x05, 0x88, 0xA6, 0x60, 0x84, 0x13,
                /* 0E08 */  0x7A, 0xF3, 0x04, 0x86, 0x04, 0xBE, 0x79, 0x82,
                /* 0E10 */  0xE7, 0xDA, 0xC0, 0x6E, 0x88, 0xC0, 0x42, 0xCE,
                /* 0E18 */  0xA4, 0x51, 0x7B, 0xF6, 0xA4, 0x4D, 0xE1, 0x49,
                /* 0E20 */  0xFB, 0xAE, 0x02, 0xE7, 0xF6, 0x81, 0xBB, 0xAB,
                /* 0E28 */  0xC0, 0xBB, 0x21, 0x02, 0x9F, 0x6B, 0x16, 0xF8,
                /* 0E30 */  0x2E, 0x1F, 0xE0, 0xF9, 0xFF, 0x5F, 0x3E, 0x80,
                /* 0E38 */  0x4F, 0x82, 0xCB, 0x07, 0xA0, 0x26, 0xEE, 0x23,
                /* 0E40 */  0x41, 0x97, 0x0F, 0x5C, 0xFC, 0x57, 0x80, 0x2E,
                /* 0E48 */  0x1F, 0xEC, 0x82, 0x88, 0x19, 0xBF, 0x43, 0x9F,
                /* 0E50 */  0x18, 0x28, 0x84, 0xE3, 0x52, 0x28, 0xEC, 0xC1,
                /* 0E58 */  0x01, 0x15, 0x0F, 0x8E, 0x82, 0x78, 0xD0, 0xBE,
                /* 0E60 */  0x05, 0xC1, 0xB9, 0x7C, 0x60, 0x6E, 0x41, 0xC0,
                /* 0E68 */  0x94, 0xC0, 0xB7, 0x20, 0xF0, 0x9D, 0x33, 0xFC,
                /* 0E70 */  0xFF, 0x3F, 0x67, 0x80, 0xF3, 0x76, 0x08, 0xFC,
                /* 0E78 */  0xCF, 0x19, 0xC0, 0xBB, 0xC1, 0x39, 0x03, 0x50,
                /* 0E80 */  0xA3, 0xED, 0xCE, 0x84, 0xD6, 0x7A, 0x67, 0x82,
                /* 0E88 */  0x70, 0x1C, 0x64, 0x0A, 0xEF, 0x4C, 0x28, 0x6D,
                /* 0E90 */  0x14, 0xFA, 0xFF, 0xDF, 0x99, 0x00, 0x46, 0x9C,
                /* 0E98 */  0xD2, 0xE1, 0x9F, 0x46, 0x71, 0xA7, 0x74, 0xE0,
                /* 0EA0 */  0x3D, 0x2A, 0x1F, 0x46, 0xC1, 0x77, 0xFB, 0x80,
                /* 0EA8 */  0xF5, 0xFF, 0xBF, 0x7D, 0x00, 0xC3, 0x08, 0xB7,
                /* 0EB0 */  0x0F, 0x40, 0x4D, 0xE4, 0x4B, 0x13, 0x0A, 0xD6,
                /* 0EB8 */  0x12, 0x6E, 0x1F, 0x88, 0x4B, 0x13, 0xE6, 0x00,
                /* 0EC0 */  0xC0, 0x63, 0xDF, 0x9A, 0x50, 0x81, 0x29, 0x74,
                /* 0EC8 */  0x6D, 0xF2, 0xD1, 0x81, 0x07, 0x84, 0xA3, 0x20,
                /* 0ED0 */  0xBE, 0x35, 0x01, 0xB6, 0xFE, 0xFF, 0xB7, 0x26,
                /* 0ED8 */  0x18, 0x27, 0x0D, 0xF0, 0xDE, 0x9A, 0x80, 0xD3,
                /* 0EE0 */  0x49, 0x03, 0xF0, 0x54, 0xE1, 0xDA, 0x04, 0x88,
                /* 0EE8 */  0xFB, 0xFF, 0xCF, 0xC6, 0xD7, 0x05, 0x76, 0x6D,
                /* 0EF0 */  0x02, 0x18, 0x74, 0x0F, 0x07, 0xE7, 0xB5, 0x09,
                /* 0EF8 */  0xB8, 0x8F, 0xDB, 0xFF, 0xFF, 0xDB, 0x07, 0x70,
                /* 0F00 */  0xCF, 0x70, 0x6D, 0x02, 0xF4, 0x1D, 0x00, 0xF8,
                /* 0F08 */  0xB5, 0x09, 0x70, 0xF7, 0xFF, 0xBF, 0x36, 0x81,
                /* 0F10 */  0xEF, 0xA4, 0x01, 0xCE, 0x6B, 0x13, 0x70, 0x3F,
                /* 0F18 */  0x69, 0x00, 0xFF, 0x0E, 0x27, 0x0D, 0x40, 0x4D,
                /* 0F20 */  0x9E, 0xB7, 0x81, 0xFE, 0xFF, 0x27, 0x0D, 0x7E,
                /* 0F28 */  0x16, 0x70, 0xBE, 0x45, 0xEA, 0xDA, 0x04, 0x43,
                /* 0F30 */  0xE1, 0x40, 0xC8, 0x08, 0x12, 0x4C, 0x04, 0xA8,
                /* 0F38 */  0x8B, 0x13, 0xCF, 0x02, 0x23, 0xE5, 0x24, 0x3A,
                /* 0F40 */  0x6A, 0xF0, 0x5B, 0x94, 0xE1, 0x0C, 0xE2, 0x13,
                /* 0F48 */  0x83, 0x2F, 0x4E, 0x80, 0xAF, 0xC1, 0xF9, 0xCC,
                /* 0F50 */  0x8D, 0x9F, 0xCC, 0x6B, 0x86, 0x47, 0xF3, 0x60,
                /* 0F58 */  0xE4, 0x20, 0x93, 0x03, 0x7A, 0x27, 0x6E, 0xF0,
                /* 0F60 */  0x0D, 0x0E, 0xCE, 0x99, 0x21, 0xE0, 0x83, 0xC0,
                /* 0F68 */  0x03, 0x85, 0x07, 0x07, 0xA6, 0xFF, 0xFF, 0xE0,
                /* 0F70 */  0xC0, 0x7B, 0x62, 0xF0, 0xE0, 0xC0, 0x75, 0x21,
                /* 0F78 */  0x03, 0x4C, 0x43, 0xF9, 0x5E, 0x03, 0x78, 0x0A,
                /* 0F80 */  0x21, 0xE0, 0xFF, 0x7F, 0xAF, 0x01, 0xCC, 0xC8,
                /* 0F88 */  0xBD, 0xD7, 0xA0, 0x38, 0x2C, 0xFF, 0x5E, 0x83,
                /* 0F90 */  0xB8, 0x90, 0x61, 0x0F, 0x36, 0x18, 0x68, 0x5D,
                /* 0F98 */  0x6C, 0x28, 0x84, 0x85, 0xC2, 0x48, 0x26, 0x84,
                /* 0FA0 */  0x0E, 0x0F, 0x5C, 0x18, 0x1C, 0x05, 0xF1, 0xC8,
                /* 0FA8 */  0x7D, 0x25, 0x03, 0xDC, 0x85, 0xBB, 0xDB, 0x40,
                /* 0FB0 */  0x0F, 0x33, 0x3E, 0x10, 0xFD, 0xFF, 0xAF, 0x64,
                /* 0FB8 */  0xC0, 0xE0, 0xC6, 0x02, 0xAE, 0xE1, 0xC1, 0xB9,
                /* 0FC0 */  0xDD, 0xE0, 0x86, 0x07, 0x3C, 0xEF, 0x37, 0xE0,
                /* 0FC8 */  0xBB, 0xEE, 0x01, 0x1E, 0xCE, 0x31, 0xC0, 0xE8,
                /* 0FD0 */  0xFF, 0x7F, 0x8E, 0x01, 0x66, 0x25, 0xCE, 0x31,
                /* 0FD8 */  0x80, 0x1A, 0x71, 0xF7, 0x54, 0x94, 0x28, 0x08,
                /* 0FE0 */  0x89, 0x7D, 0x62, 0xE8, 0x08, 0x73, 0xB2, 0x7D,
                /* 0FE8 */  0x0E, 0x58, 0xE0, 0xA7, 0x7D, 0xD8, 0x1E, 0xF1,
                /* 0FF0 */  0x51, 0xC7, 0x38, 0x33, 0x8F, 0xE8, 0x9C, 0x6B,
                /* 0FF8 */  0x1F, 0x1C, 0x3D, 0x10, 0xE8, 0xAE, 0x8A, 0x92,
                /* 1000 */  0x44, 0xA1, 0x53, 0x15, 0xF8, 0xA6, 0x70, 0x96,
                /* 1008 */  0x27, 0xFC, 0x66, 0x70, 0x78, 0x3E, 0x55, 0x01,
                /* 1010 */  0xCF, 0x93, 0x0C, 0xCC, 0xFF, 0xFF, 0xF1, 0x01,
                /* 1018 */  0x30, 0x92, 0xEF, 0xF8, 0x00, 0xA8, 0x11, 0x75,
                /* 1020 */  0x6B, 0x46, 0x8B, 0x3C, 0x2A, 0xE8, 0xF2, 0x60,
                /* 1028 */  0x95, 0x02, 0x3C, 0x0E, 0x91, 0x4C, 0xF7, 0xA5,
                /* 1030 */  0xC5, 0x9E, 0xC7, 0x41, 0x8E, 0x0E, 0xE0, 0x53,
                /* 1038 */  0x72, 0x74, 0x00, 0xD2, 0xFF, 0xFF, 0xA3, 0x03,
                /* 1040 */  0x98, 0x8D, 0x09, 0xD0, 0x76, 0x74, 0x00, 0xF2,
                /* 1048 */  0x71, 0x8F, 0x0E, 0x80, 0x1A, 0x49, 0x47, 0x07,
                /* 1050 */  0xB4, 0xC4, 0xA3, 0x03, 0x5A, 0xE4, 0x3C, 0x34,
                /* 1058 */  0x43, 0x36, 0x0C, 0x1D, 0x1D, 0x50, 0x27, 0x07,
                /* 1060 */  0xCB, 0x39, 0x3A, 0xA0, 0xA8, 0x0C, 0x66, 0x0A,
                /* 1068 */  0x1F, 0x1D, 0x7C, 0x00, 0x83, 0x73, 0x74, 0xC0,
                /* 1070 */  0x1D, 0xC0, 0xE0, 0x1D, 0x1D, 0x60, 0xFE, 0xFF,
                /* 1078 */  0x8F, 0x0E, 0x60, 0x3E, 0x80, 0x81, 0xEB, 0xE4,
                /* 1080 */  0x00, 0xBC, 0xEB, 0x9E, 0x1C, 0x00, 0x35, 0x82,
                /* 1088 */  0x4E, 0x0E, 0x28, 0x29, 0x23, 0xF7, 0x49, 0x41,
                /* 1090 */  0xB3, 0xF5, 0x91, 0x2A, 0x46, 0xC8, 0xB3, 0xA9,
                /* 1098 */  0x78, 0x64, 0xE4, 0xE0, 0x00, 0xFC, 0xFE, 0xFF,
                /* 10A0 */  0xA7, 0x4C, 0x60, 0x76, 0x70, 0x00, 0x1C, 0x65,
                /* 10A8 */  0x3E, 0xC1, 0x00, 0xBA, 0x0E, 0x0E, 0xEC, 0x04,
                /* 10B0 */  0xC3, 0xE6, 0x78, 0x88, 0x9E, 0x86, 0x4F, 0x0E,
                /* 10B8 */  0xE0, 0xFE, 0xFF, 0x9F, 0x60, 0x00, 0x86, 0x74,
                /* 10C0 */  0x3E, 0x39, 0x00, 0xD2, 0xAE, 0x97, 0x3E, 0x39,
                /* 10C8 */  0x80, 0xE3, 0xFF, 0x7F, 0x84, 0x01, 0x58, 0x14,
                /* 10D0 */  0xFA, 0x08, 0x03, 0x88, 0xFB, 0xFF, 0x9F, 0xE9,
                /* 10D8 */  0x00, 0xA6, 0x95, 0x3E, 0x39, 0x00, 0x52, 0xFE,
                /* 10E0 */  0xFF, 0xC7, 0x5C, 0x18, 0x47, 0x01, 0x1F, 0x73,
                /* 10E8 */  0x6D, 0x75, 0xB0, 0x1A, 0xE3, 0x63, 0x2E, 0x0E,
                /* 10F0 */  0xE2, 0x11, 0xE0, 0x04, 0x1E, 0x1D, 0x00, 0x7E,
                /* 10F8 */  0x05, 0x3F, 0x3A, 0x00, 0xD9, 0xFF, 0xFF, 0xD1,
                /* 1100 */  0x01, 0x78, 0x1C, 0xA6, 0xD8, 0xD1, 0x01, 0x38,
                /* 1108 */  0x9F, 0xA6, 0x00, 0xEF, 0xC5, 0x8F, 0x0E, 0x40,
                /* 1110 */  0xE2, 0xFF, 0x7F, 0x9A, 0x02, 0xA6, 0x87, 0x18,
                /* 1118 */  0xDC, 0x69, 0x0A, 0xE0, 0x59, 0xF2, 0x93, 0x03,
                /* 1120 */  0x08, 0xFE, 0xFF, 0x27, 0x07, 0x60, 0x2E, 0x70,
                /* 1128 */  0x81, 0x3A, 0x39, 0x70, 0x0E, 0x0B, 0x7E, 0x28,
                /* 1130 */  0x48, 0xE7, 0xA4, 0x35, 0xDC, 0x27, 0x07, 0x86,
                /* 1138 */  0x72, 0x8A, 0xB1, 0x3D, 0xB8, 0xC8, 0x35, 0x83,
                /* 1140 */  0x0B, 0x9A, 0x40, 0xEA, 0xD0, 0xE0, 0x33, 0x83,
                /* 1148 */  0xA5, 0x51, 0x48, 0xC8, 0xD9, 0x01, 0x15, 0xFD,
                /* 1150 */  0x04, 0x41, 0x41, 0x0C, 0xE8, 0x5C, 0x67, 0x07,
                /* 1158 */  0xB4, 0x0A, 0x10, 0x5D, 0x03, 0x8E, 0x31, 0xC2,
                /* 1160 */  0x39, 0x25, 0x18, 0xE4, 0xEA, 0x40, 0x67, 0xE6,
                /* 1168 */  0x49, 0x72, 0x0D, 0x77, 0x18, 0x04, 0x6E, 0x55,
                /* 1170 */  0x53, 0x04, 0x91, 0x9A, 0x33, 0x01, 0x6A, 0x02,
                /* 1178 */  0x3E, 0x39, 0x60, 0x2E, 0x0E, 0xE0, 0xD2, 0x77,
                /* 1180 */  0x71, 0x00, 0x39, 0x3A, 0x3F, 0x80, 0x78, 0xD0,
                /* 1188 */  0x5C, 0xC2, 0xF9, 0x83, 0x82, 0x78, 0xD0, 0x8E,
                /* 1190 */  0x07, 0x21, 0x25, 0xE7, 0x0F, 0x08, 0xFF, 0xFF,
                /* 1198 */  0xF3, 0x07, 0x26, 0xCE, 0xF9, 0x03, 0x68, 0x8E,
                /* 11A0 */  0xCA, 0xC2, 0xA6, 0x0D, 0x1A, 0x63, 0x02, 0xB4,
                /* 11A8 */  0x1D, 0x17, 0xD8, 0x01, 0x04, 0x68, 0xA7, 0x3F,
                /* 11B0 */  0x80, 0x00, 0x6A, 0xA4, 0xBC, 0x0D, 0x74, 0x26,
                /* 11B8 */  0xC3, 0x89, 0x58, 0xA4, 0x0E, 0x20, 0x38, 0xAD,
                /* 11C0 */  0xF3, 0x95, 0x46, 0x08, 0xC1, 0xF4, 0x0C, 0x49,
                /* 11C8 */  0x62, 0x9F, 0x3F, 0x50, 0x81, 0x29, 0x14, 0xF0,
                /* 11D0 */  0xEC, 0x40, 0xFE, 0xFF, 0x67, 0x07, 0x16, 0xE9,
                /* 11D8 */  0xEC, 0x40, 0x41, 0x3C, 0x6C, 0x9F, 0x3F, 0x00,
                /* 11E0 */  0x5B, 0xC1, 0x6E, 0x4D, 0x50, 0x6E, 0x2F, 0xBE,
                /* 11E8 */  0x6E, 0x5B, 0xFC, 0xE0, 0x80, 0xE2, 0xF4, 0x7D,
                /* 11F0 */  0x56, 0x01, 0xC6, 0x47, 0x2F, 0xF0, 0x1D, 0x1A,
                /* 11F8 */  0x1E, 0xBD, 0xE0, 0xFC, 0xFF, 0xCF, 0x2A, 0xC0,
                /* 1200 */  0x6E, 0x4C, 0x3E, 0x7A, 0x01, 0xE7, 0xF0, 0x47,
                /* 1208 */  0x15, 0xD0, 0xB5, 0x3F, 0xAA, 0x00, 0x5D, 0xB1,
                /* 1210 */  0xE7, 0x00, 0xD0, 0x60, 0xBC, 0x6E, 0x45, 0x38,
                /* 1218 */  0xAD, 0x50, 0x67, 0x7E, 0x4A, 0x11, 0x63, 0x86,
                /* 1220 */  0x39, 0xE6, 0x58, 0x61, 0x42, 0x84, 0x3D, 0x93,
                /* 1228 */  0x30, 0xCD, 0x63, 0x6B, 0x64, 0x9E, 0x9F, 0x8F,
                /* 1230 */  0x09, 0x3A, 0x85, 0xA1, 0x4E, 0x05, 0x0E, 0x77,
                /* 1238 */  0x0A, 0x43, 0x1C, 0x4C, 0xD9, 0xA9, 0x05, 0x1F,
                /* 1240 */  0x47, 0xC1, 0xFF, 0xFF, 0x3C, 0x88, 0x09, 0x02,
                /* 1248 */  0xA3, 0x18, 0x10, 0x3A, 0x45, 0x70, 0xE1, 0x70,
                /* 1250 */  0x14, 0xC4, 0x67, 0x07, 0x9F, 0x22, 0xE0, 0x9C,
                /* 1258 */  0x5A, 0x30, 0x07, 0x53, 0xC0, 0xCC, 0xF0, 0xE0,
                /* 1260 */  0xDC, 0x5B, 0x70, 0xC3, 0x03, 0x9E, 0x37, 0x17,
                /* 1268 */  0xF0, 0x9D, 0x50, 0xC0, 0x3B, 0x3C, 0xB0, 0xFD,
                /* 1270 */  0xFF, 0x4F, 0x28, 0x80, 0x99, 0xB3, 0x19, 0xF8,
                /* 1278 */  0xE2, 0x9F, 0x35, 0x01, 0x5D, 0xE3, 0x3A, 0xD9,
                /* 1280 */  0x33, 0x7E, 0xD6, 0x04, 0xFE, 0xFF, 0xFF, 0xB3,
                /* 1288 */  0x26, 0x60, 0xD6, 0xC9, 0x59, 0x13, 0xD0, 0xE5,
                /* 1290 */  0x4C, 0x80, 0xB2, 0xB3, 0x26, 0x50, 0xFE, 0xFF,
                /* 1298 */  0x1F, 0x40, 0x30, 0xE3, 0xF7, 0x01, 0x04, 0xF0,
                /* 12A0 */  0x12, 0xFE, 0x00, 0x82, 0x12, 0x05, 0x6C, 0x20,
                /* 12A8 */  0x1D, 0x40, 0x70, 0x73, 0x3C, 0x9D, 0xB0, 0xAF,
                /* 12B0 */  0x00, 0x2F, 0x0A, 0x3E, 0xF9, 0x44, 0x3F, 0xA3,
                /* 12B8 */  0x27, 0x2D, 0x4C, 0xF0, 0x23, 0x08, 0x2A, 0xF2,
                /* 12C0 */  0x71, 0x13, 0x20, 0xC4, 0xFF, 0xFF, 0xB8, 0x09,
                /* 12C8 */  0x18, 0x3B, 0x69, 0x83, 0xEF, 0xF4, 0x85, 0x3B,
                /* 12D0 */  0xAE, 0x00, 0xCF, 0x31, 0xF9, 0xA4, 0x0D, 0x58,
                /* 12D8 */  0xFA, 0xFF, 0xC3, 0xEA, 0xB8, 0x02, 0xA8, 0x09,
                /* 12E0 */  0x75, 0x5C, 0x41, 0x87, 0x3C, 0x7E, 0x21, 0x0E,
                /* 12E8 */  0x99, 0xEC, 0xB8, 0x02, 0x37, 0xD0, 0x39, 0x13,
                /* 12F0 */  0x15, 0x05, 0x46, 0x07, 0x4D, 0x1F, 0x1F, 0xB8,
                /* 12F8 */  0x74, 0x38, 0x0A, 0xE2, 0x73, 0x26, 0x60, 0xFF,
                /* 1300 */  0xFF, 0x7F, 0xCE, 0x04, 0xD6, 0x47, 0x13, 0xF0,
                /* 1308 */  0x9E, 0x33, 0x81, 0xD3, 0xD1, 0x04, 0xF0, 0xA4,
                /* 1310 */  0xE1, 0x68, 0x02, 0xA4, 0xFE, 0xFF, 0x47, 0x13,
                /* 1318 */  0x60, 0x11, 0xFD, 0x68, 0x82, 0x92, 0x04, 0x21,
                /* 1320 */  0x29, 0x07, 0x33, 0xF4, 0xB4, 0xC3, 0x1E, 0x8F,
                /* 1328 */  0x41, 0x9E, 0x01, 0x8C, 0xF4, 0x66, 0xC2, 0xCF,
                /* 1330 */  0x65, 0x00, 0x03, 0xFF, 0xFF, 0xE7, 0x32, 0x80,
                /* 1338 */  0x9D, 0x1E, 0x4E, 0x2B, 0x40, 0xF0, 0xFF, 0x7F,
                /* 1340 */  0x5A, 0x01, 0x73, 0xA4, 0xD3, 0x0A, 0x3A, 0xE2,
                /* 1348 */  0xB9, 0x0C, 0x7D, 0x5A, 0x81, 0x77, 0x2C, 0x03,
                /* 1350 */  0xD8, 0xF8, 0xFF, 0x3F, 0x96, 0x01, 0x0C, 0x12,
                /* 1358 */  0x71, 0xFC, 0x06, 0xD4, 0x9D, 0x13, 0xFE, 0xFF,
                /* 1360 */  0xEF, 0x41, 0xCC, 0xA7, 0x00, 0xCD, 0x08, 0x9A,
                /* 1368 */  0x41, 0x28, 0x9F, 0xCB, 0x00, 0xB6, 0xFF, 0xFF,
                /* 1370 */  0xCF, 0x65, 0x00, 0x73, 0x4C, 0x1C, 0xBF, 0x01,
                /* 1378 */  0x75, 0xC7, 0x15, 0xCC, 0xFF, 0xFF, 0xB8, 0x02,
                /* 1380 */  0xE3, 0x60, 0x06, 0xB0, 0xFD, 0xFF, 0x7F, 0x34,
                /* 1388 */  0x01, 0x0C, 0xAB, 0x38, 0x9A, 0x00, 0x6A, 0x42,
                /* 1390 */  0x1F, 0x4D, 0x50, 0x67, 0x01, 0x8B, 0x38, 0x98,
                /* 1398 */  0xA1, 0xA7, 0x5B, 0x3B, 0xB0, 0xC6, 0xF3, 0x5C,
                /* 13A0 */  0xC2, 0x63, 0x9F, 0xCA, 0x50, 0x81, 0x4F, 0x65,
                /* 13A8 */  0x40, 0xE2, 0xFF, 0x7F, 0x2A, 0x03, 0xD8, 0x27,
                /* 13B0 */  0xE7, 0x80, 0x80, 0xDA, 0x90, 0x67, 0x64, 0x0A,
                /* 13B8 */  0x1F, 0x14, 0x7C, 0xB2, 0x81, 0x73, 0x56, 0xC1,
                /* 13C0 */  0x9D, 0x6C, 0xE0, 0x9D, 0xCA, 0xC0, 0xF6, 0xFF,
                /* 13C8 */  0x3F, 0xAB, 0x80, 0x65, 0xDA, 0xE0, 0x3A, 0xAA,
                /* 13D0 */  0x00, 0x6F, 0x17, 0x47, 0x15, 0x40, 0xDD, 0x91,
                /* 13D8 */  0xEC, 0x51, 0x25, 0xF4, 0x9B, 0x0A, 0x3F, 0xAA,
                /* 13E0 */  0x00, 0xD7, 0xFF, 0xFF, 0x51, 0x05, 0xE0, 0xFF,
                /* 13E8 */  0xFF, 0xFF, 0xA8, 0x02, 0x18, 0x93, 0x71, 0x54,
                /* 13F0 */  0x01, 0xD4, 0x84, 0x39, 0xAA, 0xA0, 0xC3, 0x1D,
                /* 13F8 */  0x47, 0xD1, 0x47, 0x15, 0x7C, 0x9C, 0xB3, 0x28,
                /* 1400 */  0xEA, 0x28, 0xEA, 0x18, 0x67, 0x51, 0x94, 0x70,
                /* 1408 */  0x38, 0x0A, 0xE2, 0xB3, 0x28, 0x30, 0xFB, 0xFF,
                /* 1410 */  0x9F, 0x45, 0x01, 0x66, 0x1C, 0x4B, 0xC0, 0x7B,
                /* 1418 */  0x16, 0x05, 0x4E, 0xC7, 0x12, 0x60, 0xF6, 0xFF,
                /* 1420 */  0x3F, 0x96, 0x00, 0x13, 0x1B, 0x07, 0x32, 0x40,
                /* 1428 */  0x1E, 0xF8, 0x03, 0x19, 0x60, 0xFD, 0xFF, 0x7F,
                /* 1430 */  0x20, 0x03, 0xF8, 0xFF, 0xFF, 0x3F, 0xAA, 0x80,
                /* 1438 */  0x51, 0xC7, 0x81, 0x0C, 0x90, 0x77, 0x54, 0xC1,
                /* 1440 */  0x1E, 0xC8, 0x00, 0x06, 0xFC, 0xFF, 0x0F, 0x64,
                /* 1448 */  0x00, 0x93, 0x7D, 0x1C, 0x4B, 0x40, 0xFA, 0xFF,
                /* 1450 */  0x3F, 0x96, 0x00, 0xCB, 0xE0, 0xC7, 0x12, 0x94,
                /* 1458 */  0xA4, 0x61, 0xFB, 0x40, 0x86, 0x9E, 0xEE, 0x79,
                /* 1460 */  0x1C, 0x74, 0x94, 0xF0, 0x9E, 0xA4, 0x2F, 0x26,
                /* 1468 */  0xFC, 0x48, 0x06, 0x30, 0xEC, 0xFF, 0x7F, 0x24,
                /* 1470 */  0x03, 0x98, 0x2B, 0xE4, 0xB0, 0x02, 0x24, 0xFE,
                /* 1478 */  0xFF, 0x87, 0x15, 0x60, 0x15, 0xE8, 0xB0, 0x82,
                /* 1480 */  0x0E, 0x78, 0x24, 0x43, 0x1F, 0x56, 0xE0, 0x1D,
                /* 1488 */  0xCA, 0x00, 0xC6, 0xFD, 0xFF, 0x0F, 0x65, 0x00,
                /* 1490 */  0xB3, 0x8C, 0x1C, 0x4C, 0x00, 0x35, 0xE1, 0x0F,
                /* 1498 */  0x26, 0x88, 0xFF, 0x3F, 0x38, 0x13, 0x73, 0x28,
                /* 14A0 */  0x43, 0x8F, 0xF9, 0x14, 0x8F, 0x27, 0x7E, 0x98,
                /* 14A8 */  0x33, 0x8F, 0x6D, 0xA4, 0x33, 0x08, 0x72, 0x78,
                /* 14B0 */  0x8F, 0x65, 0x00, 0xA3, 0xFF, 0xFF, 0xC7, 0x32,
                /* 14B8 */  0x80, 0x51, 0x4A, 0x8E, 0x2B, 0x80, 0x9A, 0x50,
                /* 14C0 */  0xC7, 0x15, 0x74, 0x48, 0x05, 0xFF, 0xFF, 0x63,
                /* 14C8 */  0x19, 0xF6, 0xB8, 0x02, 0xFF, 0x60, 0x06, 0x30,
                /* 14D0 */  0xFA, 0xFF, 0x7F, 0x30, 0x03, 0xCC, 0x3B, 0x39,
                /* 14D8 */  0x9A, 0x00, 0x6A, 0xD4, 0x1D, 0x4D, 0x50, 0x47,
                /* 14E0 */  0x01, 0xAB, 0x7D, 0x05, 0x68, 0xB2, 0xD5, 0x1E,
                /* 14E8 */  0x12, 0x74, 0x30, 0x63, 0x20, 0x6F, 0x25, 0x06,
                /* 14F0 */  0x39, 0xA0, 0xB7, 0x92, 0x03, 0xB1, 0xBE, 0x43,
                /* 14F8 */  0x19, 0x4A, 0x19, 0x85, 0x74, 0x1C, 0x92, 0x50,
                /* 1500 */  0xC9, 0xCF, 0x10, 0x14, 0xC4, 0x80, 0x8E, 0x35,
                /* 1508 */  0x70, 0x14, 0xE2, 0xFF, 0x3F, 0xC1, 0xF3, 0x14,
                /* 1510 */  0x1B, 0xA2, 0x93, 0x9C, 0xC9, 0x80, 0xA2, 0xAE,
                /* 1518 */  0x6B, 0x03, 0xF4, 0x41, 0xBC, 0x36, 0x30, 0x67,
                /* 1520 */  0x43, 0x7C, 0xCF, 0x02, 0x22, 0x82, 0xE6, 0x8C,
                /* 1528 */  0x92, 0x70, 0xCF, 0xA2, 0x20, 0x9E, 0xB3, 0xE3,
                /* 1530 */  0xCD, 0x19, 0x7D, 0xFB, 0xC0, 0xC7, 0xB9, 0x67,
                /* 1538 */  0x01, 0xCD, 0x51, 0x59, 0xD8, 0xB8, 0x41, 0x76,
                /* 1540 */  0xFD, 0x00, 0x16, 0xFF, 0xFF, 0xEB, 0x07, 0x38,
                /* 1548 */  0xC5, 0x5C, 0x3F, 0x00, 0x35, 0x91, 0x5F, 0x09,
                /* 1550 */  0xBA, 0x7E, 0xE0, 0x24, 0x5C, 0x3F, 0x10, 0x17,
                /* 1558 */  0x2D, 0x76, 0xFD, 0xC0, 0x87, 0x3E, 0x34, 0x50,
                /* 1560 */  0x08, 0xC7, 0xA5, 0x50, 0xD8, 0xB3, 0x03, 0x2A,
                /* 1568 */  0x1E, 0x1C, 0x05, 0xF1, 0xB0, 0x7D, 0x11, 0xF2,
                /* 1570 */  0xD9, 0x01, 0x77, 0x40, 0x60, 0x43, 0x64, 0x47,
                /* 1578 */  0x07, 0x78, 0x77, 0x2C, 0xE0, 0x74, 0x74, 0x00,
                /* 1580 */  0xDF, 0x49, 0x03, 0xEE, 0xFF, 0xFF, 0xA4, 0x01,
                /* 1588 */  0xF7, 0x92, 0x05, 0x9C, 0x4E, 0x1A, 0x80, 0x27,
                /* 1590 */  0x33, 0x27, 0x0D, 0x40, 0x8D, 0xA4, 0x93, 0x06,
                /* 1598 */  0x0A, 0x96, 0x8C, 0x4D, 0xF7, 0x26, 0x9C, 0xC8,
                /* 15A0 */  0x79, 0xE8, 0x58, 0xC1, 0x65, 0x1D, 0x34, 0x50,
                /* 15A8 */  0x47, 0x1E, 0x5F, 0x55, 0xF1, 0xFF, 0xFF, 0xAB,
                /* 15B0 */  0x2A, 0x7C, 0xED, 0x57, 0x55, 0xA0, 0x7C, 0x39,
                /* 15B8 */  0x04, 0xDF, 0xC9, 0x01, 0x78, 0xAB, 0xB9, 0xA8,
                /* 15C0 */  0x03, 0xBA, 0x4E, 0x0E, 0xEC, 0xDE, 0xE0, 0xFB,
                /* 15C8 */  0x0A, 0xE6, 0xFF, 0x7F, 0x13, 0x39, 0xB9, 0x13,
                /* 15D0 */  0xF1, 0xDC, 0x5E, 0x5A, 0x70, 0x17, 0x75, 0x18,
                /* 15D8 */  0x27, 0x1E, 0x1F, 0x1F, 0x78, 0xA0, 0xE3, 0x03,
                /* 15E0 */  0x05, 0xF1, 0xD0, 0x7D, 0x89, 0x03, 0x5C, 0xDD,
                /* 15E8 */  0xE9, 0x7D, 0x42, 0x82, 0x01, 0x78, 0xBE, 0xE7,
                /* 15F0 */  0x06, 0x0C, 0x47, 0xEF, 0x03, 0x1F, 0xE0, 0xE3,
                /* 15F8 */  0xFF, 0x7F, 0x6E, 0xB2, 0x93, 0xD3, 0x0A, 0xD4,
                /* 1600 */  0x03, 0x1F, 0xF0, 0x1C, 0x93, 0xCF, 0x4D, 0xF0,
                /* 1608 */  0x4F, 0x2B, 0xFC, 0xDC, 0x04, 0xFC, 0xDD, 0x1C,
                /* 1610 */  0x57, 0x00, 0x69, 0x47, 0x15, 0x18, 0x37, 0x80,
                /* 1618 */  0x67, 0x96, 0xFF, 0xFF, 0x33, 0x0B, 0xEE, 0xB8,
                /* 1620 */  0x02, 0x70, 0xFE, 0xFF, 0x7F, 0x5C, 0x01, 0xB8,
                /* 1628 */  0x72, 0xFE, 0xF3, 0xE5, 0x1D, 0xF0, 0x66, 0x75,
                /* 1630 */  0x6A, 0x3A, 0x6C, 0x58, 0x33, 0xB4, 0x08, 0x7C,
                /* 1638 */  0x79, 0xE7, 0xFF, 0xFF, 0xCB, 0x3B, 0xC0, 0x1A,
                /* 1640 */  0x50, 0x7E, 0xFD, 0x00, 0xEE, 0x77, 0x60, 0xB0,
                /* 1648 */  0x8C, 0xE1, 0x28, 0x3C, 0x86, 0x77, 0xED, 0xD7,
                /* 1650 */  0x0F, 0x58, 0xFF, 0xFF, 0xEB, 0x07, 0xB0, 0xB4,
                /* 1658 */  0x73, 0xFD, 0x00, 0xD4, 0x44, 0xBF, 0x7E, 0xA0,
                /* 1660 */  0x44, 0x41, 0x48, 0xCA, 0xD5, 0x13, 0x04, 0x63,
                /* 1668 */  0x7E, 0x0B, 0xF0, 0xDD, 0x0B, 0xB0, 0xF8, 0xFF,
                /* 1670 */  0xBF, 0x7B, 0xC1, 0xBC, 0x37, 0xE1, 0xEE, 0x5E,
                /* 1678 */  0x80, 0x8F, 0x4B, 0x13, 0xF6, 0xB4, 0x02, 0x98,
                /* 1680 */  0xBE, 0x7B, 0x81, 0xE3, 0xB4, 0x02, 0xB6, 0xFF,
                /* 1688 */  0xFF, 0x69, 0x05, 0x98, 0xE9, 0x39, 0xAD, 0x00,
                /* 1690 */  0xD2, 0x4E, 0x2A, 0xD8, 0x8B, 0x27, 0x60, 0xF8,
                /* 1698 */  0xFF, 0x7F, 0x5A, 0xC1, 0x9E, 0x34, 0x70, 0x17,
                /* 16A0 */  0x4F, 0xC0, 0xC8, 0x31, 0x03, 0x77, 0xF1, 0x04,
                /* 16A8 */  0x78, 0xF4, 0xFF, 0x3F, 0xAD, 0x00, 0x1B, 0x3F,
                /* 16B0 */  0xA7, 0x15, 0x40, 0x8D, 0xB6, 0xD3, 0x0A, 0x0A,
                /* 16B8 */  0xD6, 0x5A, 0x2F, 0x9E, 0xE8, 0xEB, 0x0A, 0xBF,
                /* 16C0 */  0x77, 0x02, 0xB6, 0xFF, 0xFF, 0x57, 0x2F, 0xE0,
                /* 16C8 */  0x78, 0x00, 0xC2, 0xDD, 0x3B, 0x01, 0x4E, 0x1C,
                /* 16D0 */  0x02, 0x7C, 0xFB, 0x00, 0xDE, 0xFF, 0xFF, 0x83,
                /* 16D8 */  0x00, 0xFC, 0x8B, 0x96, 0x6F, 0x1F, 0xB8, 0x97,
                /* 16E0 */  0x82, 0x6F, 0x1F, 0x6C, 0xB4, 0x6F, 0x1F, 0xF8,
                /* 16E8 */  0xD0, 0x67, 0x06, 0x0A, 0xE1, 0xB8, 0x14, 0x0A,
                /* 16F0 */  0x7B, 0x74, 0x40, 0xDD, 0xBC, 0x0C, 0x66, 0x10,
                /* 16F8 */  0x8F, 0xDA, 0xE1, 0x6E, 0x1F, 0xE8, 0xF3, 0x01,
                /* 1700 */  0x1B, 0x21, 0x3B, 0x39, 0xC0, 0x3B, 0x7E, 0xB0,
                /* 1708 */  0x93, 0x03, 0x30, 0x21, 0xF0, 0xC9, 0x01, 0x0C,
                /* 1710 */  0xD7, 0x20, 0xEC, 0x41, 0x03, 0xBC, 0xE3, 0x03,
                /* 1718 */  0x3E, 0x07, 0x0D, 0xE0, 0xF1, 0xFF, 0x3F, 0x68,
                /* 1720 */  0x00, 0x47, 0x43, 0x07, 0x0D, 0x40, 0x8D, 0xB4,
                /* 1728 */  0x83, 0x06, 0x4A, 0x12, 0x84, 0xA4, 0x8E, 0x4D,
                /* 1730 */  0x07, 0x0D, 0xE6, 0xF3, 0x52, 0x43, 0x8E, 0x8C,
                /* 1738 */  0xEC, 0x04, 0xC0, 0x8C, 0x5D, 0x06, 0x84, 0xE0,
                /* 1740 */  0xE3, 0x03, 0x39, 0x6B, 0xA0, 0x24, 0x51, 0xE8,
                /* 1748 */  0xFE, 0x0A, 0x38, 0x3A, 0x6C, 0xC0, 0xF9, 0xFF,
                /* 1750 */  0x9F, 0x1E, 0x00, 0x2F, 0xA1, 0x29, 0x75, 0x7A,
                /* 1758 */  0x00, 0xBC, 0x48, 0x3A, 0xF5, 0xA0, 0x25, 0x1E,
                /* 1760 */  0x15, 0x74, 0x79, 0xA8, 0x71, 0xD4, 0xBA, 0xC2,
                /* 1768 */  0xB1, 0xD3, 0xAB, 0xCF, 0x38, 0x5C, 0xD6, 0xD1,
                /* 1770 */  0x01, 0x75, 0x72, 0xB0, 0x9C, 0xA3, 0x03, 0x8A,
                /* 1778 */  0xCA, 0x60, 0xA6, 0xF0, 0xD1, 0xC1, 0xA7, 0x1E,
                /* 1780 */  0x1B, 0x39, 0x3A, 0x40, 0x0D, 0x73, 0x74, 0x00,
                /* 1788 */  0x4A, 0xFF, 0xFF, 0xA3, 0x03, 0xBC, 0x21, 0xE0,
                /* 1790 */  0x2E, 0x93, 0x70, 0xC5, 0x9D, 0x1C, 0x80, 0xBA,
                /* 1798 */  0xA2, 0x63, 0x0C, 0xA0, 0x46, 0xE0, 0x45, 0x1A,
                /* 17A0 */  0x2D, 0xF8, 0xA1, 0xA0, 0x93, 0x03, 0x0E, 0xE5,
                /* 17A8 */  0x74, 0xC2, 0xBE, 0xC7, 0x18, 0x3A, 0x7C, 0x10,
                /* 17B0 */  0x03, 0x85, 0x78, 0x0B, 0x38, 0x88, 0x04, 0xC5,
                /* 17B8 */  0xDD, 0x27, 0x51, 0xB2, 0x28, 0x24, 0xE3, 0xF4,
                /* 17C0 */  0x80, 0x0A, 0x7E, 0x86, 0xA0, 0x20, 0x06, 0x74,
                /* 17C8 */  0xAA, 0xD3, 0x03, 0xFA, 0x20, 0xC9, 0x46, 0xE9,
                /* 17D0 */  0x20, 0xF7, 0x49, 0x90, 0xFC, 0xFF, 0xEF, 0x93,
                /* 17D8 */  0x60, 0xBF, 0x39, 0x80, 0xEB, 0x3C, 0x09, 0x2C,
                /* 17E0 */  0x0E, 0x20, 0xE0, 0x1B, 0xD0, 0x51, 0x1E, 0x22,
                /* 17E8 */  0x3F, 0x80, 0x00, 0xCF, 0x51, 0xF9, 0x00, 0x02,
                /* 17F0 */  0x38, 0x72, 0xB4, 0x34, 0xFD, 0xFF, 0x0F, 0x20,
                /* 17F8 */  0x80, 0x97, 0xD0, 0x27, 0x21, 0xD4, 0x01, 0xC4,
                /* 1800 */  0x22, 0x0E, 0x20, 0x88, 0xE3, 0x24, 0x3B, 0x80,
                /* 1808 */  0xC0, 0x0D, 0x7C, 0x1A, 0x42, 0x45, 0xA5, 0x50,
                /* 1810 */  0xD0, 0xD3, 0x03, 0x2A, 0x1A, 0x1C, 0x05, 0xF1,
                /* 1818 */  0xC8, 0x1D, 0xED, 0xF4, 0x80, 0x3E, 0x1B, 0xB2,
                /* 1820 */  0x51, 0xB2, 0xC3, 0x03, 0xBC, 0x23, 0x25, 0x70,
                /* 1828 */  0x3A, 0x3C, 0x80, 0xEB, 0xA8, 0x01, 0xDE, 0xE1,
                /* 1830 */  0xC1, 0xF9, 0xFF, 0x1F, 0x35, 0x00, 0xC7, 0x07,
                /* 1838 */  0x43, 0x1F, 0x35, 0x00, 0x2F, 0xF2, 0x8E, 0x4E,
                /* 1840 */  0xA8, 0x03, 0xA5, 0xE5, 0x1E, 0x9D, 0xD0, 0x20,
                /* 1848 */  0x2F, 0x00, 0xC1, 0x4F, 0xC8, 0x23, 0xF3, 0x9C,
                /* 1850 */  0x0F, 0xCE, 0x23, 0x78, 0x72, 0x02, 0x26, 0xFF,
                /* 1858 */  0xFF, 0x93, 0x13, 0xC0, 0x81, 0x93, 0x20, 0x70,
                /* 1860 */  0x3E, 0x7F, 0x00, 0x1E, 0xFE, 0xFF, 0xE7, 0x0F,
                /* 1868 */  0xF8, 0x96, 0xCE, 0x1F, 0x80, 0x1A, 0x61, 0xE7,
                /* 1870 */  0x63, 0xB4, 0xD0, 0x23, 0x29, 0xE2, 0xE4, 0xC4,
                /* 1878 */  0x4E, 0xC8, 0x71, 0x83, 0xBF, 0x35, 0xF9, 0xA0,
                /* 1880 */  0xE0, 0xF3, 0x07, 0xE6, 0x54, 0x0A, 0x1C, 0x4F,
                /* 1888 */  0x4E, 0xC0, 0xFF, 0xF0, 0x00, 0x9E, 0xFF, 0xFF,
                /* 1890 */  0xE1, 0x01, 0xF8, 0x68, 0x3A, 0x3C, 0x00, 0x6A,
                /* 1898 */  0x24, 0x9E, 0x4A, 0xD1, 0x92, 0x4F, 0xA5, 0x90,
                /* 18A0 */  0x66, 0x1C, 0x23, 0xFE, 0xFB, 0x76, 0x24, 0x9F,
                /* 18A8 */  0x1E, 0x30, 0xF2, 0x0E, 0x43, 0xA8, 0xE3, 0x84,
                /* 18B0 */  0x0F, 0x43, 0x80, 0xC7, 0xFF, 0xFF, 0x61, 0x08,
                /* 18B8 */  0x38, 0x9C, 0xF7, 0xE1, 0x8F, 0x19, 0x37, 0x13,
                /* 18C0 */  0xDF, 0x0F, 0x7C, 0x0B, 0xF0, 0x51, 0x10, 0xFE,
                /* 18C8 */  0x69, 0x08, 0xF0, 0xEE, 0xE9, 0x04, 0x02, 0x54,
                /* 18D0 */  0xFF, 0xFF, 0xE7, 0x00, 0xF0, 0xC5, 0x3E, 0x96,
                /* 18D8 */  0xA2, 0x65, 0x1C, 0x4B, 0x21, 0x9D, 0x40, 0x60,
                /* 18E0 */  0x45, 0x3E, 0x0E, 0xA1, 0xC2, 0x52, 0xE8, 0x5C,
                /* 18E8 */  0xEA, 0xE3, 0x03, 0x0F, 0x07, 0x47, 0x41, 0x7C,
                /* 18F0 */  0x2C, 0x05, 0xBC, 0x9D, 0x35, 0xC0, 0x7D, 0x2E,
                /* 18F8 */  0x05, 0xDE, 0xFF, 0xFF, 0xB3, 0x06, 0xF0, 0x17,
                /* 1900 */  0x75, 0xD6, 0x00, 0xD4, 0x04, 0x3F, 0x3C, 0xA1,
                /* 1908 */  0x85, 0x00, 0xE9, 0xF0, 0x04, 0xE7, 0xA2, 0xC0,
                /* 1910 */  0x86, 0x1E, 0xFE, 0x48, 0x7D, 0xB9, 0xF1, 0x01,
                /* 1918 */  0x9B, 0x1D, 0x9E, 0x78, 0xDC, 0xC3, 0x13, 0xA0,
                /* 1920 */  0xE6, 0xFF, 0x7F, 0x78, 0x02, 0xCE, 0x31, 0xC7,
                /* 1928 */  0x8C, 0x0A, 0x76, 0x5C, 0xA1, 0x20, 0x3E, 0xAE,
                /* 1930 */  0xC0, 0x1B, 0x61, 0xCD, 0x08, 0x3A, 0x3A, 0x01,
                /* 1938 */  0x66, 0x46, 0x07, 0xEB, 0x4C, 0x0E, 0x7B, 0x74,
                /* 1940 */  0xC0, 0xE7, 0xC8, 0x4C, 0x0E, 0x2B, 0xA0, 0xFC,
                /* 1948 */  0xFF, 0x1F, 0x56, 0x80, 0xAF, 0xA9, 0xC3, 0x0A,
                /* 1950 */  0xA0, 0x26, 0xCD, 0xD3, 0x40, 0x87, 0x15, 0x5C,
                /* 1958 */  0xBA, 0xC3, 0x0A, 0xE2, 0x9C, 0x85, 0x3D, 0xAC,
                /* 1960 */  0xC0, 0x49, 0x02, 0xAB, 0xC3, 0x0A, 0xCF, 0x00,
                /* 1968 */  0x23, 0xC5, 0x24, 0x3A, 0x69, 0x70, 0x8D, 0x67,
                /* 1970 */  0x16, 0x0A, 0xE2, 0x33, 0x83, 0x0F, 0x2B, 0x80,
                /* 1978 */  0x8B, 0xFF, 0xFF, 0xCD, 0x01, 0x76, 0xAC, 0x3B,
                /* 1980 */  0x09, 0xD4, 0xB1, 0x01, 0xBF, 0x1B, 0x09, 0xF8,
                /* 1988 */  0x6E, 0x01, 0x70, 0x26, 0xC2, 0xA6, 0x06, 0xFC,
                /* 1990 */  0xCE, 0x23, 0xE0, 0xBB, 0x8D, 0x02, 0x4B, 0x50,
                /* 1998 */  0x7E, 0xBB, 0x86, 0x13, 0xE7, 0x56, 0x83, 0xF8,
                /* 19A0 */  0xFF, 0xDF, 0x6A, 0x80, 0x1D, 0x94, 0x85, 0x4D,
                /* 19A8 */  0x1B, 0xFA, 0x28, 0x8E, 0xE1, 0x28, 0x3C, 0x86,
                /* 19B0 */  0x87, 0xC7, 0x04, 0xBE, 0xD6, 0x00, 0x6F, 0x55,
                /* 19B8 */  0xD7, 0x1A, 0x40, 0x4D, 0xD8, 0xDB, 0x28, 0x0A,
                /* 19C0 */  0xD6, 0xE1, 0xAF, 0xFA, 0x88, 0x53, 0x0D, 0xF3,
                /* 19C8 */  0x09, 0x41, 0x8E, 0x25, 0x2C, 0xF0, 0x4D, 0x14,
                /* 19D0 */  0x75, 0x11, 0x75, 0xD0, 0xA3, 0x03, 0x2A, 0x1A,
                /* 19D8 */  0x1C, 0x05, 0xF1, 0x5D, 0x8C, 0xFD, 0xFF, 0x6F,
                /* 19E0 */  0xA2, 0x80, 0xB1, 0x70, 0xA3, 0x43, 0x9F, 0x03,
                /* 19E8 */  0x3C, 0xDC, 0x27, 0x83, 0x43, 0x7E, 0x80, 0x60,
                /* 19F0 */  0x17, 0x51, 0x80, 0x0F, 0xAE, 0x8E, 0x19, 0x90,
                /* 19F8 */  0xFF, 0xFF, 0xC7, 0x0C, 0x60, 0x1F, 0xE4, 0x22,
                /* 1A00 */  0x8A, 0x3A, 0x0A, 0x38, 0xD8, 0x51, 0x43, 0xC0,
                /* 1A08 */  0x11, 0x8E, 0xF6, 0x45, 0x94, 0x8D, 0xFB, 0x74,
                /* 1A10 */  0x42, 0x87, 0xA8, 0x78, 0x6C, 0x84, 0x60, 0x94,
                /* 1A18 */  0x2B, 0x18, 0x85, 0x70, 0x08, 0x18, 0x45, 0xB8,
                /* 1A20 */  0x89, 0xA1, 0x44, 0xC3, 0x51, 0x10, 0x1F, 0x18,
                /* 1A28 */  0x7C, 0xCE, 0x80, 0x33, 0xA4, 0x73, 0x38, 0x45,
                /* 1A30 */  0xDF, 0x0A, 0x81, 0xE7, 0x39, 0x03, 0x7C, 0xA3,
                /* 1A38 */  0x83, 0x73, 0x04, 0xF7, 0x80, 0x8F, 0x0E, 0x78,
                /* 1A40 */  0xFD, 0xFF, 0x8F, 0x19, 0xC0, 0xE0, 0x50, 0x02,
                /* 1A48 */  0xE7, 0xB6, 0xCD, 0x2F, 0x9C, 0x00, 0x27, 0x64,
                /* 1A50 */  0x1D, 0x4A, 0x00, 0x19, 0xFF, 0xFF, 0x73, 0x00,
                /* 1A58 */  0x56, 0xEB, 0xA1, 0x04, 0xAD, 0xFD, 0x50, 0x82,
                /* 1A60 */  0x9E, 0xEE, 0x03, 0x88, 0x81, 0x0E, 0x28, 0x4C,
                /* 1A68 */  0x88, 0x27, 0x2A, 0xDD, 0xB4, 0x51, 0x3A, 0x29,
                /* 1A70 */  0xA4, 0xE4, 0x2C, 0x85, 0xCA, 0x7E, 0x86, 0xA0,
                /* 1A78 */  0x20, 0x06, 0x74, 0xB0, 0xA3, 0x03, 0x94, 0xE1,
                /* 1A80 */  0x9E, 0xCE, 0x41, 0x9C, 0x46, 0xF1, 0x67, 0x6D,
                /* 1A88 */  0x40, 0xAC, 0xB8, 0x49, 0xA3, 0xE4, 0xDC, 0xC7,
                /* 1A90 */  0x28, 0x88, 0x27, 0xED, 0xA8, 0x10, 0xB2, 0x31,
                /* 1A98 */  0x69, 0xF4, 0x9C, 0x9F, 0x03, 0xF8, 0x9D, 0x85,
                /* 1AA0 */  0x5D, 0x3F, 0x80, 0xDF, 0xFF, 0xFF, 0xB2, 0xC2,
                /* 1AA8 */  0x45, 0x4E, 0x1B, 0xFA, 0x0C, 0x9E, 0x68, 0xAA,
                /* 1AB0 */  0x1E, 0x87, 0xA6, 0x71, 0x14, 0xD5, 0xDD, 0x19,
                /* 1AB8 */  0x34, 0xD2, 0x93, 0x6D, 0x6C, 0xBE, 0x52, 0x38,
                /* 1AC0 */  0x26, 0x1D, 0xE7, 0x6C, 0x0D, 0x47, 0xDA, 0x6E,
                /* 1AC8 */  0x21, 0x40, 0x5D, 0xDB, 0xFD, 0x10, 0xD0, 0x35,
                /* 1AD0 */  0xAE, 0x80, 0x31, 0xCF, 0xF8, 0x61, 0xC2, 0x73,
                /* 1AD8 */  0x3C, 0x44, 0x4F, 0xC3, 0xF7, 0x43, 0x60, 0x30,
                /* 1AE0 */  0x9E, 0x87, 0x0F, 0x76, 0xE3, 0x03, 0xCF, 0xFF,
                /* 1AE8 */  0xFF, 0x7E, 0x08, 0x38, 0xB8, 0x17, 0x1C, 0x30,
                /* 1AF0 */  0xE6, 0x7E, 0x08, 0xF0, 0x41, 0xE0, 0x31, 0x03,
                /* 1AF8 */  0xE8, 0xFD, 0xFF, 0x8F, 0x19, 0xE0, 0x0E, 0x7C,
                /* 1B00 */  0xCC, 0x40, 0x71, 0x10, 0x20, 0x1D, 0x33, 0x18,
                /* 1B08 */  0x76, 0xD0, 0xB7, 0xBB, 0xC3, 0xF0, 0x69, 0xDA,
                /* 1B10 */  0xE3, 0x3C, 0x12, 0xCC, 0x41, 0x03, 0x70, 0x7E,
                /* 1B18 */  0x1D, 0xC7, 0x1D, 0x34, 0x00, 0x1F, 0xFF, 0xFF,
                /* 1B20 */  0x83, 0x06, 0xF0, 0x37, 0x78, 0xD0, 0x00, 0xD4,
                /* 1B28 */  0xA8, 0xBB, 0xF3, 0xA1, 0x38, 0x7C, 0xD7, 0xF3,
                /* 1B30 */  0x41, 0x03, 0xCE, 0x88, 0x8F, 0x08, 0xA3, 0xEE,
                /* 1B38 */  0xD2, 0x87, 0xD2, 0x45, 0x21, 0x1D, 0x07, 0x0D,
                /* 1B40 */  0x54, 0xF2, 0x63, 0x01, 0x05, 0x31, 0xA0, 0x63,
                /* 1B48 */  0x1D, 0x34, 0xA0, 0xDE, 0xF9, 0x80, 0xE7, 0xFF,
                /* 1B50 */  0xFF, 0xCE, 0x07, 0x6C, 0xAF, 0x7B, 0x9E, 0x33,
                /* 1B58 */  0xDF, 0xB2, 0xE7, 0x6C, 0x0A, 0xCF, 0xD9, 0xD7,
                /* 1B60 */  0x0F, 0xF0, 0x1E, 0x78, 0x81, 0xFF, 0xF5, 0x03,
                /* 1B68 */  0x78, 0x2B, 0xBC, 0x7E, 0x00, 0x89, 0xFF, 0xFF,
                /* 1B70 */  0xF5, 0x03, 0x58, 0x49, 0xBB, 0x7E, 0xA0, 0x60,
                /* 1B78 */  0x2D, 0xF5, 0xA1, 0xA0, 0x01, 0x47, 0x7E, 0x83,
                /* 1B80 */  0xE5, 0xC7, 0x0F, 0x43, 0xBC, 0x01, 0x1C, 0x40,
                /* 1B88 */  0x82, 0xF2, 0x2E, 0x1F, 0x28, 0x61, 0x14, 0x12,
                /* 1B90 */  0x72, 0x72, 0x40, 0x45, 0x3F, 0x14, 0x50, 0x10,
                /* 1B98 */  0x03, 0x3A, 0xD7, 0xC9, 0x01, 0xAD, 0xE2, 0xF2,
                /* 1BA0 */  0x41, 0x86, 0x73, 0x44, 0x2F, 0x0C, 0x3E, 0x7D,
                /* 1BA8 */  0x00, 0x9C, 0xF9, 0xFF, 0x9F, 0x3E, 0x00, 0xDB,
                /* 1BB0 */  0x16, 0x4F, 0x1F, 0x80, 0x9A, 0xB8, 0x37, 0x57,
                /* 1BB8 */  0x74, 0xFC, 0xB1, 0xE9, 0xF4, 0xE1, 0xC9, 0x3E,
                /* 1BC0 */  0x7D, 0xC0, 0x88, 0x7C, 0x03, 0x44, 0x85, 0xA5,
                /* 1BC8 */  0xD0, 0x15, 0xD0, 0x27, 0x07, 0x1E, 0x0E, 0x8E,
                /* 1BD0 */  0x82, 0x78, 0xD4, 0x3E, 0x39, 0xC0, 0x39, 0x7D,
                /* 1BD8 */  0x60, 0xFE, 0xFF, 0x57, 0x40, 0x80, 0xC9, 0x1A,
                /* 1BE0 */  0xCF, 0x19, 0x20, 0xFD, 0xFF, 0x9F, 0x33, 0x80,
                /* 1BE8 */  0xA5, 0xA0, 0x73, 0x06, 0x4A, 0xCA, 0x2D, 0x97,
                /* 1BF0 */  0x1E, 0x9A, 0x30, 0xE7, 0xF9, 0xE3, 0x38, 0x42,
                /* 1BF8 */  0x26, 0xEB, 0x98, 0x81, 0x12, 0x44, 0xA1, 0xF3,
                /* 1C00 */  0x0E, 0xE0, 0xE8, 0x98, 0x01, 0xBE, 0x83, 0x03,
                /* 1C08 */  0xF0, 0xF6, 0x78, 0x70, 0x80, 0xF4, 0xFF, 0x3F,
                /* 1C10 */  0x38, 0x00, 0x16, 0xE4, 0x1D, 0xDE, 0x50, 0x47,
                /* 1C18 */  0x01, 0xCB, 0x3D, 0xBC, 0x21, 0x51, 0xDE, 0x6D,
                /* 1C20 */  0xD8, 0xDC, 0x02, 0xD7, 0x0C, 0xA3, 0x13, 0x80,
                /* 1C28 */  0x4E, 0x6F, 0x28, 0x69, 0xA7, 0x37, 0x80, 0x12,
                /* 1C30 */  0xE7, 0x0F, 0x0F, 0x9A, 0x4B, 0x38, 0x7E, 0x50,
                /* 1C38 */  0x10, 0x0F, 0xDA, 0xF1, 0x40, 0x51, 0x88, 0xFF,
                /* 1C40 */  0xFF, 0xC7, 0x0F, 0x18, 0x71, 0x4E, 0x6F, 0x40,
                /* 1C48 */  0x55, 0xD8, 0xB4, 0xA1, 0x8F, 0xE2, 0x18, 0x8E,
                /* 1C50 */  0xC2, 0x63, 0x78, 0x17, 0x4E, 0xE0, 0xF3, 0x07,
                /* 1C58 */  0xF0, 0x16, 0x79, 0xFE, 0x00, 0xD4, 0xC8, 0x3A,
                /* 1C60 */  0x07, 0xA1, 0x38, 0x2C, 0xF3, 0x1C, 0x84, 0x3C,
                /* 1C68 */  0x7F, 0xF0, 0x89, 0x3F, 0x20, 0x78, 0x66, 0x86,
                /* 1C70 */  0x26, 0x47, 0x21, 0xC4, 0xFF, 0xFF, 0x28, 0x04,
                /* 1C78 */  0x30, 0xCA, 0xE4, 0xD9, 0x01, 0x50, 0x13, 0xF6,
                /* 1C80 */  0x48, 0x86, 0x0E, 0x6F, 0xE0, 0xFF, 0x7F, 0x92,
                /* 1C88 */  0xC4, 0x8D, 0xF1, 0x0C, 0x3D, 0x0C, 0x1F, 0x24,
                /* 1C90 */  0x01, 0xA6, 0xFF, 0xFF, 0x8F, 0x19, 0x60, 0x52,
                /* 1C98 */  0x79, 0xCC, 0x00, 0xD4, 0x08, 0x3B, 0xC0, 0xA1,
                /* 1CA0 */  0x8E, 0x19, 0x16, 0x7A, 0x80, 0x43, 0x1E, 0x33,
                /* 1CA8 */  0x30, 0x67, 0x79, 0x80, 0x11, 0xFF, 0xFF, 0xB3,
                /* 1CB0 */  0x3C, 0xC0, 0x2C, 0x97, 0x87, 0x0F, 0x40, 0x8D,
                /* 1CB8 */  0x9C, 0x23, 0x13, 0xE2, 0xFF, 0x3F, 0x6A, 0x26,
                /* 1CC0 */  0xEF, 0xC8, 0x44, 0x7D, 0x1E, 0x44, 0x85, 0x10,
                /* 1CC8 */  0x23, 0xA8, 0x4F, 0x6E, 0xE0, 0x3F, 0x31, 0x01,
                /* 1CD0 */  0x8E, 0xCE, 0x0D, 0xC0, 0xFB, 0x64, 0xE8, 0x73,
                /* 1CD8 */  0x03, 0x60, 0xE1, 0xFF, 0x7F, 0x36, 0x07, 0xCB,
                /* 1CE0 */  0xA5, 0xE1, 0x84, 0x2B, 0x1C, 0xAE, 0x20, 0xCF,
                /* 1CE8 */  0xA6, 0xE2, 0x91, 0x91, 0x13, 0x24, 0xB0, 0x3C,
                /* 1CF0 */  0x38, 0x00, 0xDE, 0x7D, 0x1E, 0x1C, 0x80, 0xE8,
                /* 1CF8 */  0xFF, 0xFF, 0x1C, 0x00, 0x46, 0x49, 0x07, 0x07,
                /* 1D00 */  0x14, 0x2C, 0x39, 0x38, 0x20, 0xEE, 0x62, 0x4C,
                /* 1D08 */  0xE4, 0x3C, 0x34, 0x43, 0x76, 0x94, 0x05, 0xD8,
                /* 1D10 */  0x25, 0xF4, 0xE4, 0x00, 0x24, 0xFE, 0xFF, 0x27,
                /* 1D18 */  0x07, 0x60, 0x15, 0xEF, 0x69, 0xE0, 0x33, 0xBC,
                /* 1D20 */  0x47, 0xA6, 0x40, 0x30, 0xA8, 0x83, 0x9E, 0x0F,
                /* 1D28 */  0x08, 0xF8, 0x81, 0x1E, 0xE7, 0xE1, 0x1D, 0x09,
                /* 1D30 */  0x93, 0x04, 0x87, 0x3A, 0x03, 0x78, 0x24, 0xCD,
                /* 1D38 */  0x9F, 0x66, 0xC8, 0x84, 0x3D, 0x95, 0x90, 0x4C,
                /* 1D40 */  0xDA, 0x90, 0x50, 0x67, 0x45, 0x32, 0x21, 0x4D,
                /* 1D48 */  0xE7, 0xD5, 0x21, 0xE2, 0x93, 0xA2, 0x61, 0x12,
                /* 1D50 */  0x78, 0xF4, 0x0C, 0x8D, 0x13, 0x0C, 0x30, 0x3E,
                /* 1D58 */  0xD0, 0x9C, 0x0E, 0x8E, 0xFF, 0x5C, 0xA2, 0x45,
                /* 1D60 */  0x38, 0xE7, 0x78, 0xA1, 0x0C, 0x17, 0xE8, 0x59,
                /* 1D68 */  0xC1, 0x27, 0x7A, 0x86, 0x15, 0xFC, 0x20, 0x5E,
                /* 1D70 */  0x03, 0x18, 0x4C, 0xA0, 0x28, 0x1E, 0x8D, 0x21,
                /* 1D78 */  0x5F, 0x05, 0x18, 0x54, 0xAB, 0xB7, 0x05, 0x81,
                /* 1D80 */  0x1B, 0xD6, 0x40, 0xC1, 0x0C, 0x71, 0x74, 0xD8,
                /* 1D88 */  0x61, 0x1A, 0xD2, 0x03, 0x79, 0xCE, 0xF0, 0x3D,
                /* 1D90 */  0xC0, 0x04, 0x27, 0xFC, 0xCC, 0x50, 0xEE, 0x9D,
                /* 1D98 */  0x5F, 0xE2, 0x51, 0x85, 0xD1, 0x1C, 0x14, 0x81,
                /* 1DA0 */  0x0B, 0x8D, 0x39, 0x14, 0x78, 0x12, 0x6F, 0x13,
                /* 1DA8 */  0x3E, 0x1C, 0x30, 0xF7, 0x13, 0xD4, 0x05, 0xE2,
                /* 1DB0 */  0x19, 0x22, 0xC6, 0x5B, 0x91, 0x11, 0x6A, 0x14,
                /* 1DB8 */  0x60, 0x0B, 0x9D, 0x20, 0x18, 0x25, 0x08, 0x43,
                /* 1DC0 */  0xE1, 0x98, 0x51, 0x3C, 0xCD, 0xB3, 0x08, 0x52,
                /* 1DC8 */  0x9B, 0x00, 0x65, 0x20, 0x32, 0x86, 0x88, 0x40,
                /* 1DD0 */  0xF8, 0xFF, 0xB7, 0x3F, 0x08, 0x22, 0xE1, 0x31,
                /* 1DD8 */  0xA1, 0x73, 0x81, 0x23, 0x8D, 0x06, 0x75, 0xC4,
                /* 1DE0 */  0xF0, 0xD9, 0xC0, 0xE7, 0x82, 0x73, 0x3C, 0xE8,
                /* 1DE8 */  0x43, 0x34, 0xC8, 0xD1, 0x1D, 0x5C, 0x9D, 0x87,
                /* 1DF0 */  0x02, 0x32, 0x3C, 0x76, 0x1C, 0xF1, 0xD9, 0xC2,
                /* 1DF8 */  0xA7, 0x04, 0xBC, 0x6B, 0x40, 0x5D, 0x0F, 0x1E,
                /* 1E00 */  0x27, 0xC0, 0x32, 0xA2, 0x67, 0x11, 0xD8, 0xE3,
                /* 1E08 */  0xF1, 0xD1, 0xC0, 0xA7, 0x00, 0x13, 0x58, 0xFE,
                /* 1E10 */  0x20, 0x50, 0x23, 0x33, 0xB4, 0x47, 0x7A, 0x5A,
                /* 1E18 */  0x6F, 0x08, 0x3E, 0x17, 0x98, 0xC0, 0x62, 0x4F,
                /* 1E20 */  0xA8, 0x74, 0x3C, 0xE0, 0x3F, 0x6B, 0x3D, 0x1A,
                /* 1E28 */  0x44, 0x78, 0x33, 0xF0, 0x7C, 0x7D, 0xB6, 0x61,
                /* 1E30 */  0x4E, 0x4E, 0x36, 0xE8, 0xCB, 0x02, 0x86, 0x60,
                /* 1E38 */  0xE0, 0x13, 0x0A, 0x15, 0x75, 0x42, 0x41, 0x9D,
                /* 1E40 */  0x2C, 0x7C, 0xA8, 0x60, 0x77, 0x83, 0x87, 0x06,
                /* 1E48 */  0x76, 0x40, 0x61, 0xA7, 0x1E, 0x72, 0x2A, 0x01,
                /* 1E50 */  0xFD, 0x79, 0x06, 0x77, 0xCC, 0x80, 0x7B, 0xAB,
                /* 1E58 */  0xC0, 0xCD, 0x88, 0x1F, 0x7F, 0x89, 0x80, 0xFF,
                /* 1E60 */  0xFF, 0x51, 0x07, 0x2C, 0xCE, 0x8E, 0x0F, 0x3A,
                /* 1E68 */  0x06, 0xF0, 0xB3, 0x0E, 0xFC, 0x1B, 0x53, 0x8C,
                /* 1E70 */  0x30, 0x4F, 0x12, 0xB1, 0x62, 0x1C, 0xCE, 0xB9,
                /* 1E78 */  0x9C, 0xC4, 0x7B, 0x53, 0x95, 0x30, 0x82, 0xEC,
                /* 1E80 */  0xF2, 0xC6, 0x43, 0x0E, 0x49, 0x1E, 0xD2, 0x79,
                /* 1E88 */  0x3C, 0x82, 0x70, 0x02, 0x0F, 0x11, 0x3F, 0x0C,
                /* 1E90 */  0x7E, 0x96, 0x78, 0xF8, 0x61, 0x93, 0x78, 0xFF,
                /* 1E98 */  0xF1, 0x04, 0x8E, 0xCA, 0xA7, 0x14, 0x23, 0x04,
                /* 1EA0 */  0x7F, 0xF8, 0x38, 0xE7, 0xB7, 0x00, 0x13, 0xF8,
                /* 1EA8 */  0x7A, 0xE4, 0x13, 0x2E, 0x62, 0x00, 0x28, 0xF0,
                /* 1EB0 */  0x13, 0x3A, 0x45, 0x9F, 0x85, 0x4E, 0x0C, 0x77,
                /* 1EB8 */  0x28, 0xE0, 0x23, 0xC2, 0x0E, 0x80, 0x9F, 0x6F,
                /* 1EC0 */  0x00, 0xDB, 0xFF, 0xFF, 0xF3, 0x0D, 0xE0, 0xE2,
                /* 1EC8 */  0xF4, 0xF0, 0x7C, 0x03, 0x30, 0xEE, 0xFF, 0x7F,
                /* 1ED0 */  0xBE, 0x01, 0x78, 0x31, 0x81, 0x60, 0x8F, 0x37,
                /* 1ED8 */  0xE7, 0x70, 0x3E, 0xCF, 0x2F, 0x8F, 0x16, 0x51,
                /* 1EE0 */  0x42, 0x44, 0x89, 0x13, 0x21, 0xCA, 0x13, 0x44,
                /* 1EE8 */  0x3C, 0x5F, 0x5F, 0x30, 0xE7, 0x1B, 0xC0, 0x45,
                /* 1EF0 */  0xB4, 0xC3, 0x0D, 0x2A, 0xCC, 0xF9, 0x06, 0x24,
                /* 1EF8 */  0xFF, 0xFF, 0xF3, 0x0D, 0xC0, 0xA3, 0x93, 0xC4,
                /* 1F00 */  0xF3, 0x0D, 0x38, 0xE3, 0x3F, 0x55, 0x74, 0xBE,
                /* 1F08 */  0x01, 0xF6, 0xFF, 0xFF, 0xF3, 0x0D, 0xC0, 0x52,
                /* 1F10 */  0xAC, 0xE7, 0x1B, 0x70, 0x9D, 0x2B, 0x9E, 0x5E,
                /* 1F18 */  0x1E, 0x6D, 0xDE, 0x2C, 0x0C, 0x18, 0xCF, 0xC3,
                /* 1F20 */  0x78, 0xB9, 0xC1, 0x0E, 0x10, 0xF7, 0xFF, 0x3F,
                /* 1F28 */  0x0C, 0x02, 0xDC, 0xBF, 0x47, 0x44, 0xF9, 0xFF,
                /* 1F30 */  0x3F, 0x0C, 0x02, 0xFC, 0xFF, 0xFF, 0x1F, 0x06,
                /* 1F38 */  0x01, 0x0F, 0x87, 0x9B, 0x60, 0x4F, 0x33, 0xBE,
                /* 1F40 */  0x3C, 0x1C, 0x43, 0xC0, 0x77, 0x41, 0x98, 0xE7,
                /* 1F48 */  0x1B, 0xC0, 0x86, 0x42, 0x9B, 0x3E, 0x35, 0x1A,
                /* 1F50 */  0xB5, 0x6A, 0x50, 0xA6, 0x46, 0x99, 0x06, 0xB5,
                /* 1F58 */  0xFA, 0x54, 0x6A, 0xCC, 0x98, 0xA8, 0x27, 0x84,
                /* 1F60 */  0x22, 0x41, 0xE8, 0x90, 0xE0, 0xB8, 0xEF, 0x04,
                /* 1F68 */  0x81, 0x38, 0xF4, 0xDB, 0x43, 0x20, 0x16, 0xF3,
                /* 1F70 */  0x2E, 0x10, 0x88, 0xC5, 0xEA, 0x00, 0x61, 0x92,
                /* 1F78 */  0x8D, 0x80, 0x30, 0xA9, 0x4A, 0x40, 0x98, 0xF8,
                /* 1F80 */  0xB7, 0x83, 0x40, 0x1C, 0x41, 0x0B, 0x08, 0x93,
                /* 1F88 */  0xEE, 0x05, 0x84, 0x85, 0x59, 0xA9, 0x40, 0x1C,
                /* 1F90 */  0xC9, 0x0D, 0x08, 0x8B, 0xB2, 0x3A, 0x81, 0x38,
                /* 1F98 */  0x9C, 0x1D, 0x10, 0x16, 0xE2, 0xB9, 0x20, 0x10,
                /* 1FA0 */  0x4B, 0x30, 0x04, 0xC2, 0x02, 0x28, 0x82, 0xB8,
                /* 1FA8 */  0x0D, 0x9D, 0x80, 0x82, 0x08, 0xC8, 0x31, 0x9F,
                /* 1FB0 */  0x3E, 0x02, 0x72, 0x68, 0x10, 0x1D, 0x25, 0x88,
                /* 1FB8 */  0x27, 0x20, 0x26, 0x07, 0x44, 0x40, 0xFF, 0xFF,
                /* 1FC0 */  0x87, 0x19, 0x99, 0x02, 0x62, 0x42, 0x41, 0x04,
                /* 1FC8 */  0x64, 0xD1, 0xAE, 0x80, 0x58, 0x04, 0x10, 0x0D,
                /* 1FD0 */  0x88, 0x3C, 0x5A, 0x02, 0x91, 0x68, 0x20, 0x02,
                /* 1FD8 */  0x72, 0x50, 0x5F, 0x40, 0x2C, 0x36, 0x88, 0x86,
                /* 1FE0 */  0x43, 0xFE, 0x0A, 0x02, 0xB2, 0x20, 0x10, 0x01,
                /* 1FE8 */  0x59, 0xD8, 0x03, 0x47, 0x40, 0x96, 0x09, 0xA2,
                /* 1FF0 */  0x81, 0x92, 0x27, 0x4C, 0x20, 0xA2, 0x1B, 0x44,
                /* 1FF8 */  0x40, 0xD6, 0xED, 0x0D, 0x88, 0xA5, 0x00, 0x11,
                /* 2000 */  0x90, 0xF3, 0x7C, 0x70, 0x04, 0xE4, 0x74, 0x20,
                /* 2008 */  0x02, 0x72, 0x42, 0x77, 0x40, 0x2C, 0x2E, 0x88,
                /* 2010 */  0x8E, 0x00, 0x44, 0x1E, 0x10, 0x0B, 0x0F, 0x22,
                /* 2018 */  0x20, 0xCB, 0xF0, 0x07, 0xC4, 0x44, 0x81, 0x08,
                /* 2020 */  0xC8, 0x21, 0x81, 0x68, 0x64, 0x20, 0x1A, 0xE2,
                /* 2028 */  0xE1, 0x20, 0x20, 0x47, 0x02, 0x11, 0x90, 0x43,
                /* 2030 */  0xBD, 0x21, 0x02, 0x91, 0x88, 0x20, 0x02, 0x26,
                /* 2038 */  0x0F, 0x06, 0x01, 0x13, 0x10, 0x1D, 0x0C, 0xC8,
                /* 2040 */  0xA3, 0x27, 0x10, 0x91, 0xF0, 0xA6, 0x08, 0x44,
                /* 2048 */  0xA4, 0x3C, 0xA4, 0x04, 0x64, 0x61, 0x20, 0x02,
                /* 2050 */  0xB2, 0xB2, 0xDF, 0xFD, 0x41, 0x32, 0x10, 0x01,
                /* 2058 */  0x39, 0x30, 0x10, 0x4D, 0x0F, 0x44, 0x73, 0xBC,
                /* 2060 */  0x1D, 0x02, 0x91, 0x50, 0x20, 0x02, 0x72, 0xAA,
                /* 2068 */  0x17, 0x45, 0x20, 0x92, 0x11, 0x44, 0x07, 0x02,
                /* 2070 */  0xF2, 0xC2, 0x08, 0x44, 0x32, 0x83, 0x08, 0xC8,
                /* 2078 */  0xEA, 0xDF, 0x68, 0x02, 0x72, 0x14, 0x10, 0x01,
                /* 2080 */  0x39, 0x89, 0x51, 0x20, 0x96, 0x0B, 0x44, 0x40,
                /* 2088 */  0xD6, 0xF9, 0xA0, 0x08, 0x44, 0x54, 0x83, 0x08,
                /* 2090 */  0xC8, 0xB2, 0x7F, 0x1C, 0x81, 0x48, 0x06, 0x10,
                /* 2098 */  0x01, 0x59, 0xCD, 0xCF, 0x22, 0x10, 0x91, 0x06,
                /* 20A0 */  0x22, 0x20, 0x67, 0x04, 0xA2, 0x81, 0x81, 0xA8,
                /* 20A8 */  0x74, 0xAD, 0x40, 0x2C, 0x07, 0x88, 0x80, 0x1C,
                /* 20B0 */  0xE4, 0x81, 0x11, 0x88, 0xC4, 0x02, 0xD1, 0xC0,
                /* 20B8 */  0xC8, 0xE3, 0xE4, 0xA0, 0x19, 0x88, 0x80, 0xFE,
                /* 20C0 */  0xFF, 0x0F, 0x15, 0x52, 0x0B, 0xC4, 0x94, 0x83,
                /* 20C8 */  0xE8, 0x90, 0x40, 0xDC, 0x02, 0x31, 0x3D, 0x20,
                /* 20D0 */  0x3A, 0x1C, 0x91, 0xF7, 0x47, 0x20, 0x22, 0x0E,
                /* 20D8 */  0x44, 0x40, 0x0E, 0x0B, 0x44, 0xA3, 0x03, 0xD1,
                /* 20E0 */  0xEC, 0x7A, 0x81, 0x98, 0x90, 0x0F, 0xC8, 0xA3,
                /* 20E8 */  0x05, 0x03, 0x11, 0x90, 0xF3, 0x01, 0x51, 0xA1,
                /* 20F0 */  0x82, 0x07, 0x49, 0x41, 0x04, 0xE4, 0xFC, 0x40,
                /* 20F8 */  0x54, 0xCC, 0x2F, 0x46, 0x03, 0x21, 0xCF, 0x9F,
                /* 2100 */  0x03, 0x61, 0x20, 0x02, 0xB2, 0xBA, 0x4F, 0x8E,
                /* 2108 */  0x80, 0x2C, 0x15, 0x44, 0x07, 0x03, 0x02, 0x44,
                /* 2110 */  0x15, 0x3C, 0x71, 0x74, 0xE0, 0x20, 0x20, 0x1A,
                /* 2118 */  0x3C, 0x01, 0xA2, 0xB1, 0x34, 0x03, 0xB1, 0x90,
                /* 2120 */  0x20, 0x1A, 0x3C, 0x79, 0x07, 0x09, 0xC8, 0x21,
                /* 2128 */  0x40, 0x74, 0x68, 0x20, 0xBF, 0x15, 0x01, 0x39,
                /* 2130 */  0x11, 0x88, 0x80, 0x9C, 0x48, 0xF5, 0xC0, 0x28,
                /* 2138 */  0x88, 0x0E, 0x13, 0xE4, 0xFD, 0x25, 0x20, 0xE7,
                /* 2140 */  0x05, 0x11, 0x90, 0xF5, 0xFF, 0x55, 0x02, 0x91,
                /* 2148 */  0x34, 0x20, 0x02, 0x72, 0x96, 0x07, 0x4C, 0x20,
                /* 2150 */  0x12, 0x0C, 0x44, 0x40, 0x0E, 0xF6, 0xF6, 0x09,
                /* 2158 */  0x44, 0x62, 0x82, 0x68, 0xD0, 0xE4, 0x07, 0xA7,
                /* 2160 */  0x41, 0x13, 0x10, 0x0D, 0x8C, 0xBC, 0x82, 0x02,
                /* 2168 */  0x33, 0x10, 0x01, 0x93, 0x67, 0x4F, 0x20, 0x92,
                /* 2170 */  0x12, 0x44, 0x40, 0x4E, 0xF9, 0x92, 0xD3, 0xA1,
                /* 2178 */  0x81, 0x80, 0x08, 0xC8, 0xC9, 0x9F, 0x68, 0x81,
                /* 2180 */  0x88, 0x8E, 0x17, 0x97, 0x80, 0x9C, 0x0B, 0x44,
                /* 2188 */  0xC0, 0x04, 0x88, 0xE6, 0x7E, 0xA0, 0x05, 0x22,
                /* 2190 */  0x2A, 0xDE, 0x58, 0x02, 0xB2, 0x08, 0xFD, 0x40,
                /* 2198 */  0x4C, 0x11, 0x88, 0x80, 0x9C, 0x0F, 0x88, 0x86,
                /* 21A0 */  0x05, 0xA2, 0xC2, 0xFD, 0x1F, 0x44, 0x28, 0x88,
                /* 21A8 */  0x80, 0xAC, 0xE8, 0x91, 0x27, 0x20, 0xCB, 0x03,
                /* 21B0 */  0x11, 0x90, 0xE5, 0x15, 0x00, 0x62, 0x62, 0x41,
                /* 21B8 */  0x04, 0xF4, 0xFF, 0x0F, 0xA2, 0x06, 0x40, 0x4C,
                /* 21C0 */  0x3A, 0x88, 0x8E, 0x36, 0x24, 0xC2, 0x41, 0x82,
                /* 21C8 */  0x82, 0x08, 0xC8, 0x51, 0x81, 0x68, 0x70, 0x20,
                /* 21D0 */  0x1A, 0xA4, 0xC2, 0x21, 0x82, 0x82, 0x08, 0xC8,
                /* 21D8 */  0x32, 0x33, 0x00, 0x31, 0xD1, 0x20, 0x02, 0xB2,
                /* 21E0 */  0xE2, 0x10, 0x40, 0x4C, 0x3E, 0x88, 0x06, 0x41,
                /* 21E8 */  0x4A, 0x00, 0x31, 0x65, 0x20, 0x1A, 0x30, 0x01,
                /* 21F0 */  0xA2, 0x91, 0x81, 0xA8, 0xFC, 0x14, 0x40, 0x2C,
                /* 21F8 */  0x0B, 0x88, 0x0E, 0x03, 0xA4, 0x05, 0x10, 0x4B,
                /* 2200 */  0x06, 0x22, 0x20, 0xA7, 0xAB, 0x01, 0xC4, 0xB2,
                /* 2208 */  0x82, 0xE8, 0x00, 0x42, 0x72, 0x00, 0x53, 0x10,
                /* 2210 */  0x01, 0x59, 0x5B, 0x0F, 0x20, 0xA6, 0x14, 0x44,
                /* 2218 */  0x87, 0x00, 0x02, 0x44, 0x75, 0x04, 0x39, 0x04,
                /* 2220 */  0x50, 0x10, 0x1D, 0x02, 0x08, 0x10, 0x0D, 0x99,
                /* 2228 */  0x04, 0x88, 0x25, 0x06, 0xD1, 0x61, 0x81, 0x34,
                /* 2230 */  0x01, 0x62, 0x61, 0x40, 0x74, 0xC0, 0x21, 0x51,
                /* 2238 */  0x80, 0x98, 0x4A, 0x10, 0x01, 0x39, 0x31, 0x10,
                /* 2240 */  0x8D, 0x0F, 0x44, 0xE3, 0x57, 0x39, 0x60, 0xD0,
                /* 2248 */  0x2C, 0x40, 0x4C, 0x50, 0x98, 0x83, 0x00, 0x05,
                /* 2250 */  0xD1, 0xC1, 0x85, 0x00, 0xD1, 0xF8, 0x40, 0x34,
                /* 2258 */  0x4E, 0x19, 0x20, 0x16, 0x0E, 0x44, 0x87, 0x01,
                /* 2260 */  0x92, 0xE6, 0x30, 0x40, 0x41, 0x74, 0x98, 0x21,
                /* 2268 */  0x6D, 0x0E, 0x33, 0x14, 0x44, 0x83, 0x24, 0x75,
                /* 2270 */  0x0E, 0x45, 0x14, 0x44, 0x40, 0x8E, 0x0D, 0x44,
                /* 2278 */  0x35, 0xE4, 0x39, 0xFC, 0x50, 0x10, 0x0D, 0x82,
                /* 2280 */  0x00, 0x51, 0xA1, 0x7D, 0x0E, 0x22, 0x14, 0x44,
                /* 2288 */  0x40, 0x56, 0x10, 0xE8, 0xA0, 0x44, 0x41, 0x04,
                /* 2290 */  0xE4, 0x64, 0x40, 0x34, 0x26, 0x10, 0x4D, 0x59,
                /* 2298 */  0xE8, 0x40, 0x41, 0x41, 0x04, 0xF4, 0xFF, 0x7F,
                /* 22A0 */  0x40, 0x51, 0x23, 0x20, 0xA6, 0xE4, 0x91, 0x28,
                /* 22A8 */  0x20, 0x67, 0x03, 0x11, 0x90, 0x93, 0x02, 0x51,
                /* 22B0 */  0xE5, 0x95, 0x0E, 0x31, 0x14, 0x44, 0x40, 0xD6,
                /* 22B8 */  0x95, 0x69, 0xE0, 0x14, 0x44, 0x40, 0x4E, 0x0D,
                /* 22C0 */  0x44, 0x35, 0x74, 0x3A, 0x88, 0x50, 0x10, 0x1D,
                /* 22C8 */  0x44, 0x08, 0x10, 0x55, 0x1B, 0x0A, 0x88, 0x69,
                /* 22D0 */  0x07, 0x11, 0x90, 0xB5, 0xA7, 0x02, 0x62, 0x41,
                /* 22D8 */  0x40, 0x74, 0x88, 0x20, 0xAD, 0x0E, 0x11, 0x14,
                /* 22E0 */  0x44, 0x87, 0x0F, 0x52, 0x6B, 0x70, 0x14, 0x44,
                /* 22E8 */  0x87, 0x14, 0x92, 0xEB, 0x90, 0x42, 0x41, 0x74,
                /* 22F0 */  0xF0, 0x22, 0xC1, 0x80, 0x58, 0x1E, 0x10, 0x0D,
                /* 22F8 */  0x9A, 0x14, 0x3B, 0x40, 0x51, 0x10, 0x1D, 0x7A,
                /* 2300 */  0x48, 0xB3, 0x83, 0x02, 0x05, 0x11, 0x90, 0x13,
                /* 2308 */  0x44, 0x03, 0xA6, 0x20, 0x02, 0x26, 0xD9, 0x0E,
                /* 2310 */  0x00, 0x14, 0x44, 0x47, 0x30, 0xD2, 0x0D, 0x88,
                /* 2318 */  0x45, 0x05, 0xD1, 0x01, 0x81, 0x94, 0x3B, 0x20,
                /* 2320 */  0x50, 0x10, 0x1D, 0x10, 0x48, 0x3A, 0x60, 0x0A,
                /* 2328 */  0x22, 0x20, 0x07, 0x8C, 0x07, 0xC4, 0xD2, 0x82,
                /* 2330 */  0x68, 0xE0, 0xA4, 0x1E, 0x10, 0x8B, 0x01, 0xA2,
                /* 2338 */  0xC3, 0x08, 0xC9, 0x77, 0x68, 0xA0, 0x20, 0x3A,
                /* 2340 */  0xE4, 0x90, 0x7E, 0x40, 0x4C, 0x2B, 0x88, 0x80,
                /* 2348 */  0xAC, 0xBA, 0xE0, 0x21, 0x89, 0x82, 0x08, 0xC8,
                /* 2350 */  0x9A, 0x12, 0x02, 0x31, 0x85, 0x20, 0x02, 0x72,
                /* 2358 */  0x5E, 0x20, 0x9A, 0x1E, 0x88, 0x66, 0x69, 0x78,
                /* 2360 */  0xE8, 0xA0, 0x20, 0x02, 0x72, 0xCE, 0x8A, 0x40,
                /* 2368 */  0x2C, 0x35, 0x88, 0x0E, 0x08, 0xA4, 0xE3, 0x01,
                /* 2370 */  0x81, 0x86, 0x04, 0x62, 0x7A, 0x52, 0x02, 0x31,
                /* 2378 */  0x75, 0x20, 0x02, 0xB2, 0xBE, 0x98, 0x40, 0x4C,
                /* 2380 */  0x2D, 0x88, 0x0E, 0x26, 0x24, 0x27, 0x10, 0xD3,
                /* 2388 */  0x0F, 0x22, 0xA0, 0xFF, 0xFF, 0x21, 0x29, 0xE8,
                /* 2390 */  0xC1, 0x87, 0x82, 0xE8, 0xE0, 0x44, 0x92, 0x1E,
                /* 2398 */  0xB0, 0x28, 0x88, 0x80, 0x9C, 0x34, 0x2A, 0x10,
                /* 23A0 */  0xCB, 0x0D, 0x22, 0x20, 0xA7, 0xCF, 0x0A, 0xC4,
                /* 23A8 */  0xB4, 0x74, 0x1D, 0x0C, 0x2D, 0x3B, 0x18, 0x0A,
                /* 23B0 */  0x22, 0x20, 0x2B, 0x6C, 0x0B, 0xC4, 0xE4, 0x82,
                /* 23B8 */  0xE8, 0xC0, 0x40, 0xE2, 0x1E, 0x18, 0x28, 0x88,
                /* 23C0 */  0x0E, 0x23, 0x24, 0xEF, 0x61, 0x84, 0x82, 0xE8,
                /* 23C8 */  0x10, 0x41, 0xFA, 0x02, 0x31, 0x91, 0x20, 0x02,
                /* 23D0 */  0xB2, 0xC6, 0x67, 0xA7, 0x80, 0xAC, 0x18, 0x44,
                /* 23D8 */  0x40, 0x4E, 0x93, 0x18, 0x88, 0x65, 0x03, 0x11,
                /* 23E0 */  0x90, 0x95, 0x36, 0x3E, 0xC4, 0x51, 0x10, 0x01,
                /* 23E8 */  0x59, 0x45, 0x64, 0x20, 0xA6, 0x09, 0x44, 0x83,
                /* 23F0 */  0x20, 0x99, 0x07, 0x41, 0x41, 0x34, 0x08, 0xD2,
                /* 23F8 */  0x79, 0x10, 0x14, 0x44, 0x07, 0x0A, 0x52, 0xFA,
                /* 2400 */  0x40, 0x41, 0x41, 0x74, 0x20, 0x20, 0xA9, 0x81,
                /* 2408 */  0x98, 0x40, 0x10, 0x0D, 0x9E, 0xB4, 0x1E, 0x3C,
                /* 2410 */  0x05, 0x11, 0x30, 0xA9, 0x0D, 0xC4, 0x92, 0x80,
                /* 2418 */  0x68, 0x20, 0x24, 0xF7, 0x81, 0x83, 0x82, 0x08,
                /* 2420 */  0xC8, 0x99, 0x81, 0xA8, 0x82, 0xDE, 0x40, 0x4C,
                /* 2428 */  0x49, 0x71, 0x20, 0x26, 0x0B, 0x44, 0x07, 0x29,
                /* 2430 */  0x02, 0x44, 0xE3, 0x02, 0xD1, 0xB4, 0xC9, 0x81,
                /* 2438 */  0x58, 0x76, 0x10, 0x01, 0x59, 0x47, 0x75, 0x20,
                /* 2440 */  0xA6, 0x0A, 0x44, 0x07, 0x0C, 0x02, 0x44, 0x13,
                /* 2448 */  0x03, 0x51, 0xFD, 0xD9, 0x0F, 0x55, 0x14, 0x44,
                /* 2450 */  0x87, 0x1C, 0x12, 0xFE, 0xB0, 0x45, 0x41, 0x04,
                /* 2458 */  0x64, 0xBD, 0xE5, 0x81, 0x98, 0x78, 0x10, 0x0D,
                /* 2460 */  0x8E, 0xA4, 0x1F, 0x1C, 0x05, 0x11, 0x30, 0x89,
                /* 2468 */  0x7F, 0xE0, 0xA1, 0x20, 0x02, 0xB2, 0xE6, 0xFA,
                /* 2470 */  0x40, 0x2C, 0x01, 0x88, 0x80, 0xFE, 0xFF, 0x0F,
                /* 2478 */  0x08, 0xCA, 0x7F, 0x40, 0xA0, 0x20, 0x3A, 0x20,
                /* 2480 */  0x90, 0xBB, 0xAC, 0x0E, 0x08, 0x04, 0x44, 0x87,
                /* 2488 */  0x20, 0x02, 0x44, 0x65, 0x18, 0x00, 0x62, 0x2A,
                /* 2490 */  0x14, 0x00, 0x31, 0x4D, 0x20, 0x02, 0xB2, 0x2A,
                /* 2498 */  0x09, 0x40, 0x4C, 0x22, 0x88, 0x06, 0x4A, 0x80,
                /* 24A0 */  0x68, 0x74, 0x20, 0x9A, 0xDC, 0x02, 0x10, 0xD3,
                /* 24A8 */  0xA1, 0x01, 0x88, 0xA9, 0x11, 0x01, 0xC4, 0xB4,
                /* 24B0 */  0x81, 0xE8, 0x20, 0x41, 0x80, 0x68, 0x6E, 0x20,
                /* 24B8 */  0x9A, 0xC2, 0x04, 0x10, 0xCB, 0x04, 0xA2, 0x43,
                /* 24C0 */  0x05, 0x71, 0x01, 0xC4, 0x22, 0x82, 0xE8, 0x10,
                /* 24C8 */  0x41, 0x96, 0xF4, 0x00, 0xC4, 0x40, 0x74, 0x20,
                /* 24D0 */  0x21, 0x36, 0x80, 0x58, 0x0E, 0x10, 0x1D, 0x1E,
                /* 24D8 */  0x88, 0x0F, 0x20, 0x96, 0x0D, 0x44, 0x87, 0x07,
                /* 24E0 */  0x22, 0x04, 0x88, 0xE9, 0x06, 0xD1, 0x00, 0x89,
                /* 24E8 */  0x91, 0x01, 0x52, 0x10, 0x1D, 0x14, 0x89, 0x13,
                /* 24F0 */  0x20, 0x26, 0x13, 0x44, 0x87, 0x25, 0x02, 0x44,
                /* 24F8 */  0xE3, 0x03, 0xD1, 0xF4, 0x52, 0x80, 0x98, 0x16,
                /* 2500 */  0x2B, 0x83, 0xA5, 0x5E, 0x80, 0x98, 0x46, 0x10,
                /* 2508 */  0x01, 0x13, 0x20, 0x9A, 0x1F, 0x88, 0xA6, 0x11,
                /* 2510 */  0x33, 0x20, 0x0A, 0xA2, 0xC3, 0x10, 0x51, 0x03,
                /* 2518 */  0xC4, 0x22, 0x83, 0xE8, 0x80, 0x45, 0xDC, 0x00,
                /* 2520 */  0xB1, 0x28, 0x20, 0x3A, 0x30, 0x12, 0x39, 0x40,
                /* 2528 */  0x2C, 0x17, 0x88, 0x80, 0x89, 0x1E, 0x20, 0x96,
                /* 2530 */  0x19, 0x44, 0x07, 0x1C, 0xE2, 0x07, 0x88, 0xE5,
                /* 2538 */  0x01, 0xD1, 0x21, 0x86, 0x08, 0x02, 0x62, 0x5A,
                /* 2540 */  0x41, 0x04, 0x64, 0xAD, 0x8A, 0x80, 0x98, 0x70,
                /* 2548 */  0x10, 0x1D, 0xD8, 0x88, 0x23, 0x20, 0x16, 0x03,
                /* 2550 */  0x44, 0x07, 0x54, 0x62, 0x09, 0x88, 0x45, 0x03,
                /* 2558 */  0xD1, 0xA1, 0x94, 0x68, 0x02, 0xA6, 0x20, 0x02,
                /* 2560 */  0xFA, 0xFF, 0x3F, 0x90, 0x49, 0x14, 0x10, 0x0B,
                /* 2568 */  0x03, 0xA2, 0xC3, 0x27, 0x51, 0x05, 0xC4, 0x12,
                /* 2570 */  0x82, 0x68, 0x20, 0xC4, 0x15, 0x30, 0x05, 0xD1,
                /* 2578 */  0x40, 0x88, 0xAC, 0x81, 0x50, 0x10, 0x01, 0x39,
                /* 2580 */  0x90, 0x2E, 0x20, 0x96, 0x0E, 0x44, 0x07, 0x4C,
                /* 2588 */  0xE2, 0x0B, 0x88, 0x89, 0x06, 0xD1, 0x21, 0x96,
                /* 2590 */  0x08, 0x03, 0x62, 0x11, 0x40, 0x74, 0x28, 0x24,
                /* 2598 */  0xCA, 0x80, 0x58, 0x22, 0x10, 0x1D, 0x9E, 0x88,
                /* 25A0 */  0x33, 0x20, 0x96, 0x0F, 0x44, 0x07, 0x1D, 0x62,
                /* 25A8 */  0x0D, 0x88, 0x85, 0x06, 0xD1, 0xC0, 0x88, 0x36,
                /* 25B0 */  0x20, 0x96, 0x05, 0x44, 0x87, 0x1E, 0xE2, 0x0D,
                /* 25B8 */  0x88, 0x25, 0x03, 0xD1, 0x41, 0x84, 0x98, 0x03,
                /* 25C0 */  0x62, 0x71, 0x41, 0x34, 0x30, 0xA2, 0x0E, 0x88,
                /* 25C8 */  0xA5, 0x00, 0xD1, 0x21, 0x82, 0xB8, 0x3B, 0x44,
                /* 25D0 */  0x50, 0x10, 0x01, 0x39, 0x93, 0x3D, 0x20, 0x16,
                /* 25D8 */  0x10, 0x44, 0x87, 0x24, 0xA2, 0x6F, 0x00, 0x14,
                /* 25E0 */  0x44, 0x40, 0x8E, 0x2C, 0x10, 0x88, 0x7D, 0x98,
                /* 25E8 */  0x0F, 0x94, 0x82, 0x08, 0xC8, 0xF1, 0x80, 0x68,
                /* 25F0 */  0x54, 0x87, 0x40, 0x2C, 0x38, 0x88, 0x0E, 0x6D,
                /* 25F8 */  0xC4, 0x22, 0x10, 0x13, 0xA3, 0x11, 0x88, 0x49,
                /* 2600 */  0x12, 0x09, 0xC4, 0xF4, 0x81, 0xE8, 0x30, 0x48,
                /* 2608 */  0x4C, 0x02, 0x31, 0xB1, 0x20, 0x3A, 0x64, 0x11,
                /* 2610 */  0x97, 0x40, 0x2C, 0x04, 0x88, 0x80, 0x89, 0x4C,
                /* 2618 */  0x20, 0x26, 0x10, 0x44, 0x40, 0x16, 0xA9, 0x13,
                /* 2620 */  0x88, 0x29, 0x06, 0x11, 0x90, 0x05, 0xFB, 0x04,
                /* 2628 */  0x62, 0xF2, 0x41, 0x74, 0xF8, 0x22, 0x46, 0x81,
                /* 2630 */  0x58, 0x2C, 0x10, 0x1D, 0xB0, 0x88, 0x53, 0x20,
                /* 2638 */  0x96, 0x14, 0x44, 0x03, 0x23, 0x52, 0x07, 0x46,
                /* 2640 */  0x41, 0x74, 0x48, 0x25, 0x5E, 0x81, 0x98, 0x20,
                /* 2648 */  0x10, 0x0D, 0x96, 0x00, 0xD1, 0xB8, 0x40, 0xE4,
                /* 2650 */  0xFF, 0x7F, 0x14, 0x90, 0x59, 0x20, 0xA6, 0x40,
                /* 2658 */  0xED, 0x20, 0x29, 0x88, 0x06, 0x49, 0xDC, 0x02,
                /* 2660 */  0xB1, 0x60, 0x20, 0x3A, 0x94, 0x11, 0x20, 0x1A,
                /* 2668 */  0xD6, 0x2E, 0x10, 0x4B, 0x0E, 0xA2, 0x43, 0x19,
                /* 2670 */  0xD1, 0x7B, 0xB0, 0xA0, 0x20, 0x3A, 0xF8, 0x10,
                /* 2678 */  0xBF, 0x40, 0x4C, 0x24, 0x88, 0x0E, 0x44, 0x44,
                /* 2680 */  0xF0, 0x20, 0x29, 0x88, 0x0E, 0x5C, 0x44, 0x31,
                /* 2688 */  0x10, 0xCB, 0x00, 0xA2, 0xC3, 0x17, 0x71, 0x3C,
                /* 2690 */  0x78, 0x0A, 0x22, 0x60, 0x62, 0x19, 0x98, 0x82,
                /* 2698 */  0xE8, 0x40, 0x42, 0x80, 0xA8, 0x16, 0xCD, 0x40,
                /* 26A0 */  0x2C, 0x19, 0x88, 0x80, 0x9C, 0x13, 0x88, 0x46,
                /* 26A8 */  0x15, 0x7D, 0x80, 0xA1, 0x20, 0x3A, 0xFC, 0x11,
                /* 26B0 */  0xD3, 0x40, 0x4C, 0x84, 0x6A, 0x20, 0x26, 0x4A,
                /* 26B8 */  0xF6, 0xC1, 0x86, 0x82, 0xE8, 0xA0, 0x46, 0x80,
                /* 26C0 */  0x68, 0x7C, 0x20, 0x2A, 0xC2, 0x37, 0x10, 0x93,
                /* 26C8 */  0x04, 0xA2, 0x81, 0x13, 0x20, 0x1A, 0x17, 0x88,
                /* 26D0 */  0x26, 0x36, 0x0E, 0x4C, 0x41, 0x34, 0x28, 0xA2,
                /* 26D8 */  0x7C, 0x50, 0xD4, 0x39, 0x10, 0xD3, 0x62, 0x1D,
                /* 26E0 */  0x88, 0x09, 0x03, 0xD1, 0x80, 0x89, 0x76, 0x20,
                /* 26E8 */  0xA6, 0x12, 0x44, 0x07, 0x1A, 0x22, 0xFE, 0x40,
                /* 26F0 */  0x43, 0x41, 0x74, 0xA0, 0x21, 0xE6, 0x0F, 0x34,
                /* 26F8 */  0x14, 0x44, 0x87, 0x18, 0xE2, 0xFE, 0x10, 0x43,
                /* 2700 */  0x41, 0x04, 0x64, 0x95, 0xF6, 0x81, 0x98, 0x64,
                /* 2708 */  0x10, 0x1D, 0xCE, 0x88, 0x7E, 0x20, 0xA6, 0x1F,
                /* 2710 */  0x44, 0x87, 0x17, 0x12, 0xE0, 0xF0, 0x42, 0x41,
                /* 2718 */  0x34, 0x68, 0x92, 0x60, 0xD0, 0x14, 0x44, 0x07,
                /* 2720 */  0x01, 0xD2, 0xE0, 0x20, 0x40, 0x41, 0x74, 0x80,
                /* 2728 */  0x21, 0x15, 0x80, 0x58, 0x1C, 0x10, 0x1D, 0x6C,
                /* 2730 */  0x48, 0x86, 0x83, 0x0D, 0x05, 0x11, 0xD0, 0xFF,
                /* 2738 */  0x3F, 0x88, 0x42, 0x1C, 0x20, 0x28, 0x88, 0x80,
                /* 2740 */  0x9C, 0x35, 0xC5, 0x41, 0x81, 0x82, 0x68, 0xB0,
                /* 2748 */  0x24, 0xC6, 0x60, 0x69, 0x8D, 0x41, 0xD0, 0x20,
                /* 2750 */  0x20, 0x2C, 0x3F, 0x08, 0x2F, 0x02, 0xC2, 0xF4,
                /* 2758 */  0x55, 0x01, 0x61, 0xE9, 0x40, 0x78, 0x96, 0x01,
                /* 2760 */  0xD0, 0x32, 0x20, 0x4C, 0x7B, 0x1A, 0x10, 0xDA,
                /* 2768 */  0x06, 0x84, 0xE5, 0xCA, 0x33, 0x60, 0xDA, 0x07,
                /* 2770 */  0x84, 0x06, 0x02, 0x61, 0xFF, 0x7F             
            })
            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                If (Zero){}
                ElseIf (LEqual (Arg0, 0xE1))
                {
                    Return (ETB1)
                }
                ElseIf (LEqual (Arg0, 0xE2))
                {
                    Return (EVT1)
                }

                Return (Zero)
            }

            Name (SAA0, Buffer (0x10)
            {
                /* 0000 */  0xF0, 0xFF, 0xFF, 0xFF, 0x02, 0x00, 0x00, 0x00,
                /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00 
            })
            Name (CCAA, Zero)
            Name (CCAB, Zero)
            Name (CCAC, Zero)
            Name (ECD0, Zero)
            Name (ECD1, Zero)
            Name (ECD2, Zero)
            Method (WCAA, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (CCAA, Zero)){}
                }
                ElseIf (LNotEqual (CCAA, Zero)){}
                Store (Arg0, CCAA)
            }

            Method (WED0, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (ECD0, Zero)){}
                }
                ElseIf (LNotEqual (ECD0, Zero)){}
                Store (Arg0, ECD0)
            }

            Method (WED1, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (ECD1, Zero)){}
                }
                ElseIf (LNotEqual (ECD1, Zero)){}
                Store (Arg0, ECD1)
            }

            Method (WED2, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (ECD2, Zero)){}
                }
                ElseIf (LNotEqual (ECD2, Zero)){}
                Store (Arg0, ECD2)
            }

            Method (GETA, 1, NotSerialized)
            {
                Return (SAA0)
            }

            Method (WQAA, 1, NotSerialized)
            {
                Return (GETA (Arg0))
            }

            Method (SETA, 2, NotSerialized)
            {
                Store (Arg1, SAA0)
                Return (SAA0)
            }

            Method (WSAA, 2, NotSerialized)
            {
                Return (SETA (Arg0, Arg1))
            }

            Method (WMBB, 3, Serialized)
            {
                If (LEqual (Arg1, One))
                {
                    Return (GGG1 ())
                }
                ElseIf (LEqual (Arg1, 0x02))
                {
                    Return (GGG2 ())
                }
                ElseIf (LEqual (Arg1, 0x03))
                {
                    Return (GGG3 ())
                }
                ElseIf (LEqual (Arg1, 0x04))
                {
                    Return (GGG4 ())
                }
                ElseIf (LEqual (Arg1, 0x05))
                {
                    Return (GGG5 ())
                }
                ElseIf (LEqual (Arg1, 0x06))
                {
                    Return (GGG6 ())
                }
                ElseIf (LEqual (Arg1, 0x07))
                {
                    Return (GGG7 ())
                }
                ElseIf (LEqual (Arg1, 0x08))
                {
                    Return (GGG8 ())
                }
                ElseIf (LEqual (Arg1, 0x0A))
                {
                    Return (GGG9 (Arg2))
                }
                ElseIf (LEqual (Arg1, 0x0B))
                {
                    Return (GGGE ())
                }
                ElseIf (LEqual (Arg1, 0x0C))
                {
                    Return (GGGF (Arg2))
                }
                ElseIf (LEqual (Arg1, 0x0D))
                {
                    CreateWordField (Arg2, Zero, GGGI)
                    CreateWordField (Arg2, 0x02, GGGJ)
                    CreateWordField (Arg2, 0x04, GGGK)
                    GGGH (GGGI, GGGJ, GGGK)
                }
                ElseIf (LAnd (LGreaterEqual (Arg1, 0x64), LLessEqual (Arg1, 0x6C)))
                {
                    CreateByteField (Arg2, Zero, SMDP)
                    CreateByteField (Arg2, One, SMDK)
                    CreateByteField (Arg2, 0x02, SMDL)
                    CreateByteField (Arg2, 0x03, SMDM)
                    CreateWordField (Arg2, 0x04, SMDN)
                    CreateByteField (Arg2, 0x03, SMDO)
                    If (LEqual (Arg1, 0x64))
                    {
                        Store (SMBB (), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x65))
                    {
                        Store (SMM0 (SMDP, SMDK, SMDL), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x66))
                    {
                        Store (SMM1 (SMDP, SMDK), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x67))
                    {
                        Store (SMM2 (SMDP, SMDK, SMDL, SMDM), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x68))
                    {
                        Store (SMM3 (SMDP, SMDK, SMDL), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x69))
                    {
                        Store (SMM4 (SMDP, SMDK, SMDL, SMDN), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x6A))
                    {
                        Store (SMM5 (SMDP, SMDK, SMDL), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x6B))
                    {
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x6C))
                    {
                        Return (Local0)
                    }
                }
                ElseIf (LAnd (LGreaterEqual (Arg1, 0x6E), LLessEqual (Arg1, 0x75)))
                {
                    CreateWordField (Arg2, Zero, PID0)
                    CreateByteField (Arg2, 0x02, PID1)
                    CreateWordField (Arg2, 0x02, PID2)
                    CreateDWordField (Arg2, 0x02, PID3)
                    If (LEqual (Arg1, 0x6E))
                    {
                        Store (PIO6 (PID0, Zero), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x6F))
                    {
                        PIO7 (PID0, Zero, PID1)
                    }
                    ElseIf (LEqual (Arg1, 0x70))
                    {
                        Store (PIO6 (PID0, One), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x71))
                    {
                        PIO7 (PID0, One, PID2)
                    }
                    ElseIf (LEqual (Arg1, 0x72))
                    {
                        Store (PIO6 (PID0, 0x02), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x73))
                    {
                        PIO7 (PID0, 0x02, PID3)
                    }
                }
                ElseIf (LEqual (Arg1, 0x76)){}
                ElseIf (LEqual (Arg1, 0x77)){}
                ElseIf (LAnd (LGreaterEqual (Arg1, 0x78), LLessEqual (Arg1, 0x80)))
                {
                    CreateByteField (Arg2, Zero, PCE0)
                    CreateByteField (Arg2, One, PCE1)
                    CreateByteField (Arg2, 0x02, PCE2)
                    CreateWordField (Arg2, 0x04, PCE3)
                    CreateByteField (Arg2, 0x06, PCE6)
                    CreateWordField (Arg2, 0x06, PCE4)
                    CreateDWordField (Arg2, 0x06, PCE5)
                    If (LEqual (Arg1, 0x78))
                    {
                        Store (PCI4 (), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x79))
                    {
                        Return (PCI9 (PCE0, PCE1, PCE2, PCE3, Zero))
                    }
                    ElseIf (LEqual (Arg1, 0x7A))
                    {
                        PCIA (PCE0, PCE1, PCE2, PCE3, Zero, PCE6)
                    }
                    ElseIf (LEqual (Arg1, 0x7B))
                    {
                        Return (PCI9 (PCE0, PCE1, PCE2, PCE3, One))
                    }
                    ElseIf (LEqual (Arg1, 0x7C))
                    {
                        PCIA (PCE0, PCE1, PCE2, PCE3, One, PCE4)
                    }
                    ElseIf (LEqual (Arg1, 0x7D))
                    {
                        Return (PCI9 (PCE0, PCE1, PCE2, PCE3, 0x02))
                    }
                    ElseIf (LEqual (Arg1, 0x7E))
                    {
                        PCIA (PCE0, PCE1, PCE2, PCE3, 0x02, PCE5)
                    }

                    CreateByteField (Arg2, 0x06, PCE7)
                    CreateByteField (Arg2, 0x07, PCE8)
                    CreateDWordField (Arg2, 0x08, PCE9)
                    If (LEqual (Arg1, 0x7F))
                    {
                        Return (PCI5 (PCE0, PCE1, PCE2, PCE3, PCE7, PCE8))
                    }
                    ElseIf (LEqual (Arg1, 0x80))
                    {
                        PCI6 (PCE0, PCE1, PCE2, PCE3, PCE7, PCE8, PCE9)
                    }
                }
                ElseIf (LAnd (LGreaterEqual (Arg1, 0x82), LLessEqual (Arg1, 0x89)))
                {
                    CreateDWordField (Arg2, Zero, MED0)
                    CreateByteField (Arg2, 0x04, MED1)
                    CreateWordField (Arg2, 0x04, MED2)
                    CreateDWordField (Arg2, 0x04, MED3)
                    CreateByteField (Arg2, 0x04, MED4)
                    CreateByteField (Arg2, 0x05, MED5)
                    CreateDWordField (Arg2, 0x06, MED6)
                    If (LEqual (Arg1, 0x82))
                    {
                        Return (MEM4 (MED0, Zero))
                    }
                    ElseIf (LEqual (Arg1, 0x83))
                    {
                        MEM5 (MED0, Zero, MED1)
                    }
                    ElseIf (LEqual (Arg1, 0x84))
                    {
                        Return (MEM4 (MED0, One))
                    }
                    ElseIf (LEqual (Arg1, 0x85))
                    {
                        MEM5 (MED0, One, MED2)
                    }
                    ElseIf (LEqual (Arg1, 0x86))
                    {
                        Return (MEM4 (MED0, 0x02))
                    }
                    ElseIf (LEqual (Arg1, 0x87))
                    {
                        MEM5 (MED0, 0x02, MED3)
                    }
                    ElseIf (LEqual (Arg1, 0x88))
                    {
                        Return (MEM0 (MED0, MED4, MED5))
                    }
                    ElseIf (LEqual (Arg1, 0x89))
                    {
                        MEM1 (MED0, MED4, MED5, MED6)
                    }
                }
                ElseIf (LEqual (Arg1, 0xBE))
                {
                    EVT2 (Arg2)
                }
                ElseIf (LEqual (Arg1, 0xE6))
                {
                    ETB2 (Arg2)
                }
                ElseIf (LEqual (Arg1, 0xE7))
                {
                    Return (ETB3 ())
                }
                ElseIf (LEqual (Arg1, 0xE8))
                {
                    ETB4 (Arg2)
                }
                ElseIf (LEqual (Arg1, 0xE9))
                {
                    Return (ETB6 ())
                }
                ElseIf (LAnd (LGreaterEqual (Arg1, 0xFA), LLessEqual (Arg1, 0xFC)))
                {
                    CreateByteField (Arg2, Zero, NCT3)
                    CreateByteField (Arg2, One, NCT4)
                    CreateByteField (Arg2, 0x02, NCT5)
                    If (LEqual (Arg1, 0xFA))
                    {
                        Return (NCT0 (NCT3))
                    }
                    ElseIf (LEqual (Arg1, 0xFB))
                    {
                        Return (NCT1 (NCT3, NCT4))
                    }
                    ElseIf (LEqual (Arg1, 0xFC))
                    {
                        NCT2 (NCT3, NCT4, NCT5)
                    }
                }
                ElseIf (LEqual (Arg1, 0x09))
                {
                    Return (EZW2)
                }
                ElseIf (LAnd (LGreaterEqual (Arg1, 0x0118), LLessEqual (Arg1, 0x0121)))
                {
                    CreateDWordField (Arg2, Zero, EZVD)
                    CreateDWordField (Arg2, 0x04, EZVE)
                    CreateWordField (Arg2, 0x04, EZVL)
                    If (LEqual (Arg1, 0x0118))
                    {
                        Return (EZV3 (EZVD))
                    }
                    ElseIf (LEqual (Arg1, 0x0119))
                    {
                        EZV4 (EZVD, EZVE)
                    }
                    ElseIf (LEqual (Arg1, 0x011A))
                    {
                        Return (EZV6 ())
                    }
                    ElseIf (LEqual (Arg1, 0x011B))
                    {
                        Return (EZVF (EZVD, EZVE))
                    }
                    ElseIf (LEqual (Arg1, 0x011C))
                    {
                        Return (EZVG (EZVD, EZVE))
                    }
                    ElseIf (LEqual (Arg1, 0x011D))
                    {
                        Return (EZV0 (EZVD))
                    }
                    ElseIf (LEqual (Arg1, 0x011E))
                    {
                        Return (EZVJ (EZVD, DerefOf (Index (Arg2, 0x04))))
                    }
                    ElseIf (LEqual (Arg1, 0x011F))
                    {
                        Name (B2F2, Buffer (0x3C){})
                        Store (EZVL, Local0)
                        Store (Zero, Local1)
                        While (LLess (Multiply (Local1, 0x02), Local0))
                        {
                            Store (DerefOf (Index (Arg2, Add (0x06, Multiply (Local1, 0x02)))), Index (B2F2, Local1))
                            Increment (Local1)
                        }

                        Store (ToString (B2F2, Local1), Local3)
                        Return (EZVK (EZVD, Local3))
                    }
                    ElseIf (LEqual (Arg1, 0x0120))
                    {
                        Return (EZVH (EZVD))
                    }
                    ElseIf (LEqual (Arg1, 0x0121))
                    {
                        Name (B1F1, Buffer (0x3C){})
                        Store (EZVL, Local0)
                        Store (Zero, Local1)
                        While (LLess (Multiply (Local1, 0x02), Local0))
                        {
                            Store (DerefOf (Index (Arg2, Add (0x06, Multiply (Local1, 0x02)))), Index (B1F1, Local1))
                            Increment (Local1)
                        }

                        Store (ToString (B1F1, Local1), Local3)
                        EZVI (EZVD, Local3)
                    }
                }
                ElseIf (LEqual (Arg1, 0x0122))
                {
                    Return (ZRC9 ())
                }
                ElseIf (LEqual (Arg1, 0x0123))
                {
                    Return (ZRCY (DerefOf (Index (Arg2, Zero))))
                }
                ElseIf (LEqual (Arg1, 0x0124))
                {
                    ZRCZ (DerefOf (Index (Arg2, Zero)), DerefOf (Index (Arg2, One)))
                }
                ElseIf (LEqual (Arg1, 0x0125))
                {
                    Return (ZRCD (DerefOf (Index (Arg2, Zero))))
                }
                ElseIf (LEqual (Arg1, 0x0126))
                {
                    ZRCE (DerefOf (Index (Arg2, Zero)))
                }
                ElseIf (LEqual (Arg1, 0x0127))
                {
                    Return (ZRCW (DerefOf (Index (Arg2, Zero))))
                }
                ElseIf (LEqual (Arg1, 0x0128))
                {
                    ZRCX (DerefOf (Index (Arg2, Zero)), DerefOf (Index (Arg2, One)))
                }
                ElseIf (LEqual (Arg1, 0x0129))
                {
                    Return (ZRCA (DerefOf (Index (Arg2, Zero))))
                }
                ElseIf (LEqual (Arg1, 0x012A))
                {
                    ZRC7 (DerefOf (Index (Arg2, Zero)), DerefOf (Index (Arg2, One)), DerefOf (Index (Arg2, 0x02)))
                    Return (ToHexString (ZRCL, Local1))
                }
                ElseIf (LEqual (Arg1, 0x012B))
                {
                    ZRCM (DerefOf (Index (Arg2, Zero)), DerefOf (Index (Arg2, One)))
                }
                ElseIf (LEqual (Arg1, 0x012C))
                {
                    Return (DIMC ())
                }
                ElseIf (LEqual (Arg1, 0x0130))
                {
                    Return (DIMD (DerefOf (Index (Arg2, Zero))))
                }
                ElseIf (LEqual (Arg1, 0x0136))
                {
                    Return (DIM1 (DerefOf (Index (Arg2, Zero))))
                }
            }

            Method (WMBC, 3, NotSerialized)
            {
            }
        }
    }

    Scope (\)
    {
    }
}

