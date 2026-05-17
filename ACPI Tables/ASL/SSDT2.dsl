{
    External (PTTB, UnknownObj)


    0024: A0 09 00 15 50 54 54 42 00 00                    // ....PTTB..

    Scope (\_SB)
    {

    002E: 10 4F 49 5C 5F 53 42 5F                          // .OI\_SB_

        Device (TPM)
        {

    0036: 5B 82 46 49 54 50 4D 5F                          // [.FITPM_

            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID

    003E: 08 5F 48 49 44 0D 4D 53 46 54 30 31 30 31 00     // ._HID.MSFT0101.

            Name (_STR, 
    004D: 08 5F 53 54 52                                   // ._STR

Unicode ("TPM 2.0 Device"))  // _STR: Description String

    0052: 11 21 0A 1E 54 00 50 00 4D 00 20 00 32 00 2E 00  // .!..T.P.M. .2...
    0062: 30 00 20 00 44 00 65 00 76 00 69 00 63 00 65 00  // 0. .D.e.v.i.c.e.
    0072: 00 00                                            // ..

            Name (CRS, 
    0074: 08 43 52 53 5F                                   // .CRS_

ResourceTemplate ()
            {
                Memory32Fixed (ReadOnly,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y00)
                Memory32Fixed (ReadOnly,
                    0xFED40000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })

    0079: 11 1D 0A 1A 86 09 00 00 00 00 00 00 00 10 00 00  // ................
    0089: 86 09 00 00 00 00 D4 FE 00 10 00 00 79 00        // ............y.

            Name (PTTA, 0xFED40000)

    0097: 08 50 54 54 41 0C 00 00 D4 FE                    // .PTTA.....

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {

    00A1: 14 28 5F 43 52 53 08                             // .(_CRS.

                CreateDWordField (CRS, \_SB.TPM._Y00._BAS, CBAS)  // _BAS: Base Address
                Store (PTTB, CBAS) /* \_SB_.TPM_._CRS.CBAS */
                Store (PTTB, PTTA) /* \_SB_.TPM_.PTTA */

    00A8: 8A 43 52 53 5F 0A 04 43 42 41 53 70 50 54 54 42  // .CRS_..CBASpPTTB
    00B8: 43 42 41 53 70 50 54 54 42 50 54 54 41           // CBASpPTTBPTTA

                Return (CRS) /* \_SB_.TPM_.CRS_ */
            }


    00C5: A4 43 52 53 5F                                   // .CRS_

            OperationRegion (SMIP, SystemIO, 0xB2, One)

    00CA: 5B 80 53 4D 49 50 01 0A B2 01                    // [.SMIP....

            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }


    00D4: 5B 81 0B 53 4D 49 50 01 49 4F 42 32 08           // [..SMIP.IOB2.

            OperationRegion (TPMR, SystemMemory, PTTA, 0x1000)

    00E1: 5B 80 54 50 4D 52 00 50 54 54 41 0B 00 10        // [.TPMR.PTTA...

            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                Offset (0x44), 
                FERR,   32, 
                Offset (0x4C), 
                STRT,   32
            }


    00EF: 5B 81 15 54 50 4D 52 00 00 40 22 46 45 52 52 20  // [..TPMR..@"FERR 
    00FF: 00 20 53 54 52 54 20                             // . STRT 

            OperationRegion (FHCI, SystemMemory, 0xFED40000, 0x1000)

    0106: 5B 80 46 48 43 49 00 0C 00 00 D4 FE 0B 00 10     // [.FHCI.........

            Field (FHCI, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                HERR,   32, 
                Offset (0x40), 
                CREQ,   32, 
                CSTS,   32, 
                Offset (0x4C), 
                HCMD,   32
            }


    0115: 5B 81 21 46 48 43 49 00 00 20 48 45 52 52 20 00  // [.!FHCI.. HERR .
    0125: 40 1C 43 52 45 51 20 43 53 54 53 20 00 20 48 43  // @.CREQ CSTS . HC
    0135: 4D 44 20                                         // MD 

            OperationRegion (TNVS, SystemMemory, 0x8CE6F000, 0x26)

    0138: 5B 80 54 4E 56 53 00 0C 00 F0 E6 8C 0A 26        // [.TNVS.......&

            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                PPRM,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32
            }


    0146: 5B 81 3D 54 4E 56 53 00 50 50 49 4E 08 50 50 49  // [.=TNVS.PPIN.PPI
    0156: 50 20 50 50 52 50 20 50 50 52 51 20 50 50 52 4D  // P PPRP PPRQ PPRM
    0166: 20 4C 50 50 52 20 46 52 45 54 20 4D 43 49 4E 08  //  LPPR FRET MCIN.
    0176: 4D 43 49 50 20 4D 4F 52 44 20 4D 52 45 54 20     // MCIP MORD MRET 

            Method (PTS, 1, Serialized)
            {

    0185: 14 2E 50 54 53 5F 09                             // ..PTS_.

                If (LAnd (LLess (Arg0, 0x06), 
    018C: A0 25 90 95 68 0A 06                             // .%..h..

LGreater (Arg0, 0x03)))
                {

    0193: 94 68 0A 03                                      // .h..

                    If (LNot (
    0197: A0 1A 92                                         // ...

And (MORD, 0x10)))
                    {
                        Store (0x02, MCIP) /* \_SB_.TPM_.MCIP */

    019A: 7B 4D 4F 52 44 0A 10 00 70 0A 02 4D 43 49 50     // {MORD...p..MCIP

                        Store (MCIN, IOB2) /* \_SB_.TPM_.IOB2 */
                    }
                }


    01A9: 70 4D 43 49 4E 49 4F 42 32                       // pMCINIOB2

                Return (Zero)
            }


    01B2: A4 00                                            // ..

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

    01B4: 14 09 5F 53 54 41 00                             // .._STA.

                Return (0x0F)
            }


    01BB: A4 0A 0F                                         // ...

            Method (HINF, 3, Serialized)
            {

    01BE: 14 4A 05 48 49 4E 46 0B                          // .J.HINF.


    01C6: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    01CC: A2 47 04 01 70 99 69 00 5F 54 5F 30              // .G..p.i._T_0

                    Case (Zero)
                    {

    01D8: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    01E0: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    01E1: 11 03 01 03                                      // ....

                    Case
    01E5: A1 2D                                            // .-

 (One)
                    {

    01E7: A0 28 93 5F 54 5F 30 01                          // .(._T_0.

                        Name (TPMV, 
    01EF: 08 54 50 4D 56                                   // .TPMV

Package (0x02)
                        {
                            One, 

    01F4: 12 09 02 01                                      // ....

                            Package (0x02)
                            {
                                One, 
                                0x20
                            }
                        })

    01F8: 12 05 02 01 0A 20                                // ..... 

                        If (LEqual (_STA (), Zero))
                        {

    01FE: A0 0C 93 5F 53 54 41 00                          // ..._STA.

                            Return (
    0206: A4                                               // .

Package (0x01)
                            {
                                Zero
                            })
                        }


    0207: 12 03 01 00                                      // ....

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }

    020B: A4 54 50 4D 56                                   // .TPMV

                    Default
                    {

    0210: A1 02                                            // ..

                        BreakPoint
                    }


    0212: CC                                               // .

                }


    0213: A5                                               // .

                Return (
    0214: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }


    0215: 11 03 01 00                                      // ....

            Name (TPM2, 
    0219: 08 54 50 4D 32                                   // .TPM2

Package (0x02)
            {
                Zero, 
                Zero
            })

    021E: 12 04 02 00 00                                   // .....

            Name (TPM3, 
    0223: 08 54 50 4D 33                                   // .TPM3

Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })

    0228: 12 05 03 00 00 00                                // ......

            Method (TPPI, 3, Serialized)
            {

    022E: 14 44 15 54 50 50 49 0B                          // .D.TPPI.


    0236: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    023C: A2 44 14 01 70 99 69 00 5F 54 5F 30              // .D..p.i._T_0

                    Case (Zero)
                    {

    0248: A0 0E 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    0250: A4                                               // .

Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }

    0251: 11 05 0A 02 FF 01                                // ......

                    Case
    0257: A1 48 12                                         // .H.

 (One)
                    {

    025A: A0 0D 93 5F 54 5F 30 01                          // ..._T_0.

                        Return ("1.3")
                    }

    0262: A4 0D 31 2E 33 00                                // ..1.3.

                    Case
    0268: A1 47 11                                         // .G.

 (0x02)
                    {
                        Store (DerefOf (
    026B: A0 27 93 5F 54 5F 30 0A 02 70 83                 // .'._T_0..p.

Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (0x02, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */

    0276: 88 6A 00 00 50 50 52 51 70 0A 02 50 50 49 50 70  // .j..PPRQp..PPIPp
    0286: 50 50 49 4E 49 4F 42 32                          // PPINIOB2

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    028E: A4 46 52 45 54                                   // .FRET

                    Case
    0293: A1 4C 0E                                         // .L.

 (0x03)
                    {
                        Store (PPRQ, 
    0296: A0 19 93 5F 54 5F 30 0A 03 70 50 50 52 51        // ..._T_0..pPPRQ

Index (TPM2, One))

    02A4: 88 54 50 4D 32 01 00                             // .TPM2..

                        Return (TPM2) /* \_SB_.TPM_.TPM2 */
                    }

    02AB: A4 54 50 4D 32                                   // .TPM2

                    Case
    02B0: A1 4F 0C                                         // .O.

 (0x04)
                    {

    02B3: A0 0B 93 5F 54 5F 30 0A 04                       // ..._T_0..

                        Return (0x02)
                    }

    02BC: A4 0A 02                                         // ...

                    Case
    02BF: A1 40 0C                                         // .@.

 (0x05)
                    {
                        Store (0x05, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Store (LPPR, 
    02C2: A0 36 93 5F 54 5F 30 0A 05 70 0A 05 50 50 49 50  // .6._T_0..p..PPIP
    02D2: 70 50 50 49 4E 49 4F 42 32 70 4C 50 50 52        // pPPINIOB2pLPPR

Index (TPM3, One))
                        Store (PPRP, 
    02E0: 88 54 50 4D 33 01 00 70 50 50 52 50              // .TPM3..pPPRP

Index (TPM3, 0x02))

    02EC: 88 54 50 4D 33 0A 02 00                          // .TPM3...

                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                    }

    02F4: A4 54 50 4D 33                                   // .TPM3

                    Case
    02F9: A1 46 08                                         // .F.

 (0x06)
                    {

    02FC: A0 0B 93 5F 54 5F 30 0A 06                       // ..._T_0..

                        Return (0x03)
                    }

    0305: A4 0A 03                                         // ...

                    Case
    0308: A1 47 07                                         // .G.

 (0x07)
                    {
                        Store (0x07, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (DerefOf (
    030B: A0 41 04 93 5F 54 5F 30 0A 07 70 0A 07 50 50 49  // .A.._T_0..p..PPI
    031B: 50 70 83                                         // Pp.

Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (Zero, PPRM) /* \_SB_.TPM_.PPRM */

    031E: 88 6A 00 00 50 50 52 51 70 00 50 50 52 4D        // .j..PPRQp.PPRM

                        If (LEqual (PPRQ, 0x17))
                        {

    032C: A0 12 93 50 50 52 51 0A 17                       // ...PPRQ..

                            Store (DerefOf (
    0335: 70 83                                            // p.

Index (Arg2, One)), PPRM) /* \_SB_.TPM_.PPRM */
                        }

                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */

    0337: 88 6A 01 00 50 50 52 4D 70 50 50 49 4E 49 4F 42  // .j..PPRMpPPINIOB
    0347: 32                                               // 2

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    0348: A4 46 52 45 54                                   // .FRET

                    Case
    034D: A1 32                                            // .2

 (0x08)
                    {
                        Store (0x08, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (DerefOf (
    034F: A0 2D 93 5F 54 5F 30 0A 08 70 0A 08 50 50 49 50  // .-._T_0..p..PPIP
    035F: 70 83                                            // p.

Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Store (Zero, PPRQ) /* \_SB_.TPM_.PPRQ */

    0361: 88 6A 00 00 50 50 52 51 70 50 50 49 4E 49 4F 42  // .j..PPRQpPPINIOB
    0371: 32 70 00 50 50 52 51                             // 2p.PPRQ

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    0378: A4 46 52 45 54                                   // .FRET

                    Default
                    {

    037D: A1 02                                            // ..

                        BreakPoint
                    }


    037F: CC                                               // .

                }


    0380: A5                                               // .

                Return (One)
            }


    0381: A4 01                                            // ..

            Method (TMCI, 3, Serialized)
            {

    0383: 14 44 05 54 4D 43 49 0B                          // .D.TMCI.


    038B: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    0391: A2 44 04 01 70 99 69 00 5F 54 5F 30              // .D..p.i._T_0

                    Case (Zero)
                    {

    039D: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    03A5: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    03A6: 11 03 01 03                                      // ....

                    Case
    03AA: A1 2A                                            // .*

 (One)
                    {
                        Store (DerefOf (
    03AC: A0 25 93 5F 54 5F 30 01 70 83                    // .%._T_0.p.

Index (Arg2, Zero)), MORD) /* \_SB_.TPM_.MORD */
                        Store (One, MCIP) /* \_SB_.TPM_.MCIP */
                        Store (MCIN, IOB2) /* \_SB_.TPM_.IOB2 */

    03B6: 88 6A 00 00 4D 4F 52 44 70 01 4D 43 49 50 70 4D  // .j..MORDp.MCIPpM
    03C6: 43 49 4E 49 4F 42 32                             // CINIOB2

                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }

    03CD: A4 4D 52 45 54                                   // .MRET

                    Default
                    {

    03D2: A1 02                                            // ..

                        BreakPoint
                    }


    03D4: CC                                               // .

                }


    03D5: A5                                               // .

                Return (One)
            }


    03D6: A4 01                                            // ..

            Method (TSMI, 3, Serialized)
            {

    03D8: 14 48 06 54 53 4D 49 0B                          // .H.TSMI.


    03E0: 08 5F 54 5F 30 00                                // ._T_0.

                Name (WTME, Zero)

    03E6: 08 57 54 4D 45 00                                // .WTME.

                Switch (ToInteger (Arg1))
                {

    03EC: A2 42 05 01 70 99 69 00 5F 54 5F 30              // .B..p.i._T_0

                    Case (Zero)
                    {

    03F8: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    0400: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    0401: 11 03 01 03                                      // ....

                    Case
    0405: A1 38                                            // .8

 (One)
                    {
                        Store (One, CREQ) /* \_SB_.TPM_.CREQ */

    0407: A0 33 93 5F 54 5F 30 01 70 01 43 52 45 51        // .3._T_0.p.CREQ

                        While (LAnd (
    0415: A2 1C 90 92                                      // ....

LLessEqual (WTME, 0xC8), 
    0419: 94 57 54 4D 45 0A C8                             // .WTME..


    0420: 92                                               // .

LNotEqual (And (CREQ, One), 
                            Zero)))
                        {
                            Sleep (One)

    0421: 93 7B 43 52 45 51 01 00 00 5B 22 01              // .{CREQ...[".

                            Increment (WTME)
                        }

                        Store (0x02, HCMD) /* \_SB_.TPM_.HCMD */

    042D: 75 57 54 4D 45 70 0A 02 48 43 4D 44              // uWTMEp..HCMD

                        Return (Zero)
                    }

    0439: A4 00                                            // ..

                    Default
                    {

    043B: A1 02                                            // ..

                        BreakPoint
                    }


    043D: CC                                               // .

                }


    043E: A5                                               // .

                Return (One)
            }


    043F: A4 01                                            // ..

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {

    0441: 14 4C 08 5F 44 53 4D 0C                          // .L._DSM.

                If (LEqual (Arg0, 
    0449: A0 1F 93 68                                      // ...h

ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8") /* Unknown UUID */))
                {

    044D: 11 13 0A 10 A5 16 8E CF E8 C1 25 4E B7 12 4F 54  // ..........%N..OT
    045D: A9 67 02 C8                                      // .g..

                    Return (HINF (Arg1, Arg2, Arg3))
                }


    0461: A4 48 49 4E 46 69 6A 6B                          // .HINFijk

                If (LEqual (Arg0, 
    0469: A0 1F 93 68                                      // ...h

ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {

    046D: 11 13 0A 10 A6 FA DD 3D 1B 36 B4 4E A4 24 8D 10  // .......=.6.N.$..
    047D: 08 9D 16 53                                      // ...S

                    Return (TPPI (Arg1, Arg2, Arg3))
                }


    0481: A4 54 50 50 49 69 6A 6B                          // .TPPIijk

                If (LEqual (Arg0, 
    0489: A0 1F 93 68                                      // ...h

ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* Unknown UUID */))
                {

    048D: 11 13 0A 10 ED 54 60 37 13 CC 75 46 90 1C 47 56  // .....T`7..uF..GV
    049D: D7 F2 D4 5D                                      // ...]

                    Return (TMCI (Arg1, Arg2, Arg3))
                }


    04A1: A4 54 4D 43 49 69 6A 6B                          // .TMCIijk

                If (LEqual (Arg0, 
    04A9: A0 1F 93 68                                      // ...h

ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4") /* Unknown UUID */))
                {

    04AD: 11 13 0A 10 AB 6C BF 6B 63 54 14 47 B7 CD F0 20  // .....l.kcT.G... 
    04BD: 3C 03 68 D4                                      // <.h.

                    Return (TSMI (Arg1, Arg2, Arg3))
                }


    04C1: A4 54 53 4D 49 69 6A 6B                          // .TSMIijk

                Return (
    04C9: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}



Table Header:
Table Body (Length 0x4CE)

/*
Raw Table Data: Length 1230 (0x4CE)

    0000: 53 53 44 54 CE 04 00 00 02 2B 4C 45 4E 4F 56 4F  // SSDT.....+LENOVO
    0010: 43 42 2D 30 31 20 20 20 01 00 00 00 41 43 50 49  // CB-01   ....ACPI
    0020: 00 00 04 00 A0 09 00 15 50 54 54 42 00 00 10 4F  // ........PTTB...O
    0030: 49 5C 5F 53 42 5F 5B 82 46 49 54 50 4D 5F 08 5F  // I\_SB_[.FITPM_._
    0040: 48 49 44 0D 4D 53 46 54 30 31 30 31 00 08 5F 53  // HID.MSFT0101.._S
    0050: 54 52 11 21 0A 1E 54 00 50 00 4D 00 20 00 32 00  // TR.!..T.P.M. .2.
    0060: 2E 00 30 00 20 00 44 00 65 00 76 00 69 00 63 00  // ..0. .D.e.v.i.c.
    0070: 65 00 00 00 08 43 52 53 5F 11 1D 0A 1A 86 09 00  // e....CRS_.......
    0080: 00 00 00 00 00 00 10 00 00 86 09 00 00 00 00 D4  // ................
    0090: FE 00 10 00 00 79 00 08 50 54 54 41 0C 00 00 D4  // .....y..PTTA....
    00A0: FE 14 28 5F 43 52 53 08 8A 43 52 53 5F 0A 04 43  // ..(_CRS..CRS_..C
    00B0: 42 41 53 70 50 54 54 42 43 42 41 53 70 50 54 54  // BASpPTTBCBASpPTT
    00C0: 42 50 54 54 41 A4 43 52 53 5F 5B 80 53 4D 49 50  // BPTTA.CRS_[.SMIP
    00D0: 01 0A B2 01 5B 81 0B 53 4D 49 50 01 49 4F 42 32  // ....[..SMIP.IOB2
    00E0: 08 5B 80 54 50 4D 52 00 50 54 54 41 0B 00 10 5B  // .[.TPMR.PTTA...[
    00F0: 81 15 54 50 4D 52 00 00 40 22 46 45 52 52 20 00  // ..TPMR..@"FERR .
    0100: 20 53 54 52 54 20 5B 80 46 48 43 49 00 0C 00 00  //  STRT [.FHCI....
    0110: D4 FE 0B 00 10 5B 81 21 46 48 43 49 00 00 20 48  // .....[.!FHCI.. H
    0120: 45 52 52 20 00 40 1C 43 52 45 51 20 43 53 54 53  // ERR .@.CREQ CSTS
    0130: 20 00 20 48 43 4D 44 20 5B 80 54 4E 56 53 00 0C  //  . HCMD [.TNVS..
    0140: 00 F0 E6 8C 0A 26 5B 81 3D 54 4E 56 53 00 50 50  // .....&[.=TNVS.PP
    0150: 49 4E 08 50 50 49 50 20 50 50 52 50 20 50 50 52  // IN.PPIP PPRP PPR
    0160: 51 20 50 50 52 4D 20 4C 50 50 52 20 46 52 45 54  // Q PPRM LPPR FRET
    0170: 20 4D 43 49 4E 08 4D 43 49 50 20 4D 4F 52 44 20  //  MCIN.MCIP MORD 
    0180: 4D 52 45 54 20 14 2E 50 54 53 5F 09 A0 25 90 95  // MRET ..PTS_..%..
    0190: 68 0A 06 94 68 0A 03 A0 1A 92 7B 4D 4F 52 44 0A  // h...h.....{MORD.
    01A0: 10 00 70 0A 02 4D 43 49 50 70 4D 43 49 4E 49 4F  // ..p..MCIPpMCINIO
    01B0: 42 32 A4 00 14 09 5F 53 54 41 00 A4 0A 0F 14 4A  // B2...._STA.....J
    01C0: 05 48 49 4E 46 0B 08 5F 54 5F 30 00 A2 47 04 01  // .HINF.._T_0..G..
    01D0: 70 99 69 00 5F 54 5F 30 A0 0C 93 5F 54 5F 30 00  // p.i._T_0..._T_0.
    01E0: A4 11 03 01 03 A1 2D A0 28 93 5F 54 5F 30 01 08  // ......-.(._T_0..
    01F0: 54 50 4D 56 12 09 02 01 12 05 02 01 0A 20 A0 0C  // TPMV......... ..
    0200: 93 5F 53 54 41 00 A4 12 03 01 00 A4 54 50 4D 56  // ._STA.......TPMV
    0210: A1 02 CC A5 A4 11 03 01 00 08 54 50 4D 32 12 04  // ..........TPM2..
    0220: 02 00 00 08 54 50 4D 33 12 05 03 00 00 00 14 44  // ....TPM3.......D
    0230: 15 54 50 50 49 0B 08 5F 54 5F 30 00 A2 44 14 01  // .TPPI.._T_0..D..
    0240: 70 99 69 00 5F 54 5F 30 A0 0E 93 5F 54 5F 30 00  // p.i._T_0..._T_0.
    0250: A4 11 05 0A 02 FF 01 A1 48 12 A0 0D 93 5F 54 5F  // ........H...._T_
    0260: 30 01 A4 0D 31 2E 33 00 A1 47 11 A0 27 93 5F 54  // 0...1.3..G..'._T
    0270: 5F 30 0A 02 70 83 88 6A 00 00 50 50 52 51 70 0A  // _0..p..j..PPRQp.
    0280: 02 50 50 49 50 70 50 50 49 4E 49 4F 42 32 A4 46  // .PPIPpPPINIOB2.F
    0290: 52 45 54 A1 4C 0E A0 19 93 5F 54 5F 30 0A 03 70  // RET.L...._T_0..p
    02A0: 50 50 52 51 88 54 50 4D 32 01 00 A4 54 50 4D 32  // PPRQ.TPM2...TPM2
    02B0: A1 4F 0C A0 0B 93 5F 54 5F 30 0A 04 A4 0A 02 A1  // .O...._T_0......
    02C0: 40 0C A0 36 93 5F 54 5F 30 0A 05 70 0A 05 50 50  // @..6._T_0..p..PP
    02D0: 49 50 70 50 50 49 4E 49 4F 42 32 70 4C 50 50 52  // IPpPPINIOB2pLPPR
    02E0: 88 54 50 4D 33 01 00 70 50 50 52 50 88 54 50 4D  // .TPM3..pPPRP.TPM
    02F0: 33 0A 02 00 A4 54 50 4D 33 A1 46 08 A0 0B 93 5F  // 3....TPM3.F...._
    0300: 54 5F 30 0A 06 A4 0A 03 A1 47 07 A0 41 04 93 5F  // T_0......G..A.._
    0310: 54 5F 30 0A 07 70 0A 07 50 50 49 50 70 83 88 6A  // T_0..p..PPIPp..j
    0320: 00 00 50 50 52 51 70 00 50 50 52 4D A0 12 93 50  // ..PPRQp.PPRM...P
    0330: 50 52 51 0A 17 70 83 88 6A 01 00 50 50 52 4D 70  // PRQ..p..j..PPRMp
    0340: 50 50 49 4E 49 4F 42 32 A4 46 52 45 54 A1 32 A0  // PPINIOB2.FRET.2.
    0350: 2D 93 5F 54 5F 30 0A 08 70 0A 08 50 50 49 50 70  // -._T_0..p..PPIPp
    0360: 83 88 6A 00 00 50 50 52 51 70 50 50 49 4E 49 4F  // ..j..PPRQpPPINIO
    0370: 42 32 70 00 50 50 52 51 A4 46 52 45 54 A1 02 CC  // B2p.PPRQ.FRET...
    0380: A5 A4 01 14 44 05 54 4D 43 49 0B 08 5F 54 5F 30  // ....D.TMCI.._T_0
    0390: 00 A2 44 04 01 70 99 69 00 5F 54 5F 30 A0 0C 93  // ..D..p.i._T_0...
    03A0: 5F 54 5F 30 00 A4 11 03 01 03 A1 2A A0 25 93 5F  // _T_0.......*.%._
    03B0: 54 5F 30 01 70 83 88 6A 00 00 4D 4F 52 44 70 01  // T_0.p..j..MORDp.
    03C0: 4D 43 49 50 70 4D 43 49 4E 49 4F 42 32 A4 4D 52  // MCIPpMCINIOB2.MR
    03D0: 45 54 A1 02 CC A5 A4 01 14 48 06 54 53 4D 49 0B  // ET.......H.TSMI.
    03E0: 08 5F 54 5F 30 00 08 57 54 4D 45 00 A2 42 05 01  // ._T_0..WTME..B..
    03F0: 70 99 69 00 5F 54 5F 30 A0 0C 93 5F 54 5F 30 00  // p.i._T_0..._T_0.
    0400: A4 11 03 01 03 A1 38 A0 33 93 5F 54 5F 30 01 70  // ......8.3._T_0.p
    0410: 01 43 52 45 51 A2 1C 90 92 94 57 54 4D 45 0A C8  // .CREQ.....WTME..
    0420: 92 93 7B 43 52 45 51 01 00 00 5B 22 01 75 57 54  // ..{CREQ...[".uWT
    0430: 4D 45 70 0A 02 48 43 4D 44 A4 00 A1 02 CC A5 A4  // MEp..HCMD.......
    0440: 01 14 4C 08 5F 44 53 4D 0C A0 1F 93 68 11 13 0A  // ..L._DSM....h...
    0450: 10 A5 16 8E CF E8 C1 25 4E B7 12 4F 54 A9 67 02  // .......%N..OT.g.
    0460: C8 A4 48 49 4E 46 69 6A 6B A0 1F 93 68 11 13 0A  // ..HINFijk...h...
    0470: 10 A6 FA DD 3D 1B 36 B4 4E A4 24 8D 10 08 9D 16  // ....=.6.N.$.....
    0480: 53 A4 54 50 50 49 69 6A 6B A0 1F 93 68 11 13 0A  // S.TPPIijk...h...
    0490: 10 ED 54 60 37 13 CC 75 46 90 1C 47 56 D7 F2 D4  // ..T`7..uF..GV...
    04A0: 5D A4 54 4D 43 49 69 6A 6B A0 1F 93 68 11 13 0A  // ].TMCIijk...h...
    04B0: 10 AB 6C BF 6B 63 54 14 47 B7 CD F0 20 3C 03 68  // ..l.kcT.G... <.h
    04C0: D4 A4 54 53 4D 49 69 6A 6B A4 11 03 01 00        // ..TSMIijk.....
 */
