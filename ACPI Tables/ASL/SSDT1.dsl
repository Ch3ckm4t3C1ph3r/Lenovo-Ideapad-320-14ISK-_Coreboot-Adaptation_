{
    Scope (\_SB)
    {

    0024: 10 4F 52 5C 5F 53 42 5F                          // .OR\_SB_

        Device (TPM)
        {

    002C: 5B 82 46 52 54 50 4D 5F                          // [.FRTPM_

            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID

    0034: 08 5F 48 49 44 0D 4D 53 46 54 30 31 30 31 00     // ._HID.MSFT0101.

            Name (_CID, "MSFT0101" /* TPM 2.0 Security Device */)  // _CID: Compatible ID

    0043: 08 5F 43 49 44 0D 4D 53 46 54 30 31 30 31 00     // ._CID.MSFT0101.

            Name (_STR, 
    0052: 08 5F 53 54 52                                   // ._STR

Unicode ("TPM 2.0 Device"))  // _STR: Description String

    0057: 11 21 0A 1E 54 00 50 00 4D 00 20 00 32 00 2E 00  // .!..T.P.M. .2...
    0067: 30 00 20 00 44 00 65 00 76 00 69 00 63 00 65 00  // 0. .D.e.v.i.c.e.
    0077: 00 00                                            // ..

            Name (_CRS, 
    0079: 08 5F 43 52 53                                   // ._CRS

ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadOnly,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
            })

    007E: 11 11 0A 0E 86 09 00 00 00 00 D4 FE 00 50 00 00  // .............P..
    008E: 79 00                                            // y.

            OperationRegion (SMIP, SystemIO, 0xB2, One)

    0090: 5B 80 53 4D 49 50 01 0A B2 01                    // [.SMIP....

            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }


    009A: 5B 81 0B 53 4D 49 50 01 49 4F 42 32 08           // [..SMIP.IOB2.

            OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)

    00A7: 5B 80 54 50 4D 52 00 0C 00 00 D4 FE 0B 00 50     // [.TPMR........P

            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                ACC0,   8, 
                Offset (0x18), 
                TSTS,   32, 
                Offset (0x30), 
                TITP,   8, 
                Offset (0x40), 
                CREQ,   32, 
                CSTS,   32, 
                Offset (0x4C), 
                HCMD,   32
            }


    00B6: 5B 81 2F 54 50 4D 52 00 41 43 43 30 08 00 48 0B  // [./TPMR.ACC0..H.
    00C6: 54 53 54 53 20 00 40 0A 54 49 54 50 08 00 48 07  // TSTS .@.TITP..H.
    00D6: 43 52 45 51 20 43 53 54 53 20 00 20 48 43 4D 44  // CREQ CSTS . HCMD
    00E6: 20                                               //  

            OperationRegion (TNVS, SystemMemory, 0x8CE72000, 0x27)

    00E7: 5B 80 54 4E 56 53 00 0C 00 20 E7 8C 0A 27        // [.TNVS... ...'

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
                MRET,   32, 
                CAIN,   8
            }


    00F5: 5B 81 43 04 54 4E 56 53 00 50 50 49 4E 08 50 50  // [.C.TNVS.PPIN.PP
    0105: 49 50 20 50 50 52 50 20 50 50 52 51 20 50 50 52  // IP PPRP PPRQ PPR
    0115: 4D 20 4C 50 50 52 20 46 52 45 54 20 4D 43 49 4E  // M LPPR FRET MCIN
    0125: 08 4D 43 49 50 20 4D 4F 52 44 20 4D 52 45 54 20  // .MCIP MORD MRET 
    0135: 43 41 49 4E 08                                   // CAIN.

            OperationRegion (CONA, SystemMemory, 0x8CE71000, 0x30)

    013A: 5B 80 43 4F 4E 41 00 0C 00 10 E7 8C 0A 30        // [.CONA.......0

            Field (CONA, DWordAcc, NoLock, Preserve)
            {
                HRTB,   32, 
                ERRR,   32, 
                CLFG,   32, 
                STA1,   32, 
                AccessAs (QWordAcc, 0x00), 
                INTC,   64, 
                AccessAs (DWordAcc, 0x00), 
                CMSZ,   32, 
                AccessAs (QWordAcc, 0x00), 
                CMDB,   64, 
                AccessAs (DWordAcc, 0x00), 
                RPSZ,   32, 
                AccessAs (QWordAcc, 0x00), 
                RESP,   64
            }


    0148: 5B 81 46 04 43 4F 4E 41 03 48 52 54 42 20 45 52  // [.F.CONA.HRTB ER
    0158: 52 52 20 43 4C 46 47 20 53 54 41 31 20 01 04 00  // RR CLFG STA1 ...
    0168: 49 4E 54 43 40 04 01 03 00 43 4D 53 5A 20 01 04  // INTC@....CMSZ ..
    0178: 00 43 4D 44 42 40 04 01 03 00 52 50 53 5A 20 01  // .CMDB@....RPSZ .
    0188: 04 00 52 45 53 50 40 04                          // ..RESP@.

            OperationRegion (STRT, SystemMemory, 0x8D5D2470, 0x04)

    0190: 5B 80 53 54 52 54 00 0C 70 24 5D 8D 0A 04        // [.STRT..p$]...

            Field (STRT, AnyAcc, NoLock, Preserve)
            {
                SMTD,   32
            }


    019E: 5B 81 0B 53 54 52 54 00 53 4D 54 44 20           // [..STRT.SMTD 

            Method (PTS, 1, Serialized)
            {

    01AB: 14 2E 50 54 53 5F 09                             // ..PTS_.

                If (LAnd (LLess (Arg0, 0x06), 
    01B2: A0 25 90 95 68 0A 06                             // .%..h..

LGreater (Arg0, 0x03)))
                {

    01B9: 94 68 0A 03                                      // .h..

                    If (LNot (
    01BD: A0 1A 92                                         // ...

And (MORD, 0x10)))
                    {
                        Store (0x02, MCIP) /* \_SB_.TPM_.MCIP */

    01C0: 7B 4D 4F 52 44 0A 10 00 70 0A 02 4D 43 49 50     // {MORD...p..MCIP

                        Store (MCIN, IOB2) /* \_SB_.TPM_.IOB2 */
                    }
                }


    01CF: 70 4D 43 49 4E 49 4F 42 32                       // pMCINIOB2

                Return (Zero)
            }


    01D8: A4 00                                            // ..

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

    01DA: 14 14 5F 53 54 41 00                             // .._STA.

                If (LEqual (ACC0, 0xFF))
                {

    01E1: A0 0A 93 41 43 43 30 0A FF                       // ...ACC0..

                    Return (Zero)
                }


    01EA: A4 00                                            // ..

                Return (0x0F)
            }


    01EC: A4 0A 0F                                         // ...

            Method (HINF, 3, Serialized)
            {

    01EF: 14 4A 05 48 49 4E 46 0B                          // .J.HINF.


    01F7: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    01FD: A2 47 04 01 70 99 69 00 5F 54 5F 30              // .G..p.i._T_0

                    Case (Zero)
                    {

    0209: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    0211: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    0212: 11 03 01 03                                      // ....

                    Case
    0216: A1 2D                                            // .-

 (One)
                    {

    0218: A0 28 93 5F 54 5F 30 01                          // .(._T_0.

                        Name (TPMV, 
    0220: 08 54 50 4D 56                                   // .TPMV

Package (0x02)
                        {
                            One, 

    0225: 12 09 02 01                                      // ....

                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        })

    0229: 12 05 02 0A 02 00                                // ......

                        If (LEqual (_STA (), Zero))
                        {

    022F: A0 0C 93 5F 53 54 41 00                          // ..._STA.

                            Return (
    0237: A4                                               // .

Package (0x01)
                            {
                                Zero
                            })
                        }


    0238: 12 03 01 00                                      // ....

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }

    023C: A4 54 50 4D 56                                   // .TPMV

                    Default
                    {

    0241: A1 02                                            // ..

                        BreakPoint
                    }


    0243: CC                                               // .

                }


    0244: A5                                               // .

                Return (
    0245: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }


    0246: 11 03 01 00                                      // ....

            Name (TPM2, 
    024A: 08 54 50 4D 32                                   // .TPM2

Package (0x02)
            {
                Zero, 
                Zero
            })

    024F: 12 04 02 00 00                                   // .....

            Name (TPM3, 
    0254: 08 54 50 4D 33                                   // .TPM3

Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })

    0259: 12 05 03 00 00 00                                // ......

            Method (TPPI, 3, Serialized)
            {

    025F: 14 4E 14 54 50 50 49 0B                          // .N.TPPI.


    0267: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    026D: A2 4E 13 01 70 99 69 00 5F 54 5F 30              // .N..p.i._T_0

                    Case (Zero)
                    {

    0279: A0 0E 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    0281: A4                                               // .

Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }

    0282: 11 05 0A 02 FF 01                                // ......

                    Case
    0288: A1 42 12                                         // .B.

 (One)
                    {

    028B: A0 0D 93 5F 54 5F 30 01                          // ..._T_0.

                        Return ("1.3")
                    }

    0293: A4 0D 31 2E 33 00                                // ..1.3.

                    Case
    0299: A1 41 11                                         // .A.

 (0x02)
                    {
                        Store (DerefOf (
    029C: A0 27 93 5F 54 5F 30 0A 02 70 83                 // .'._T_0..p.

Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (0x02, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */

    02A7: 88 6A 00 00 50 50 52 51 70 0A 02 50 50 49 50 70  // .j..PPRQp..PPIPp
    02B7: 50 50 49 4E 49 4F 42 32                          // PPINIOB2

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    02BF: A4 46 52 45 54                                   // .FRET

                    Case
    02C4: A1 46 0E                                         // .F.

 (0x03)
                    {
                        Store (PPRQ, 
    02C7: A0 19 93 5F 54 5F 30 0A 03 70 50 50 52 51        // ..._T_0..pPPRQ

Index (TPM2, One))

    02D5: 88 54 50 4D 32 01 00                             // .TPM2..

                        Return (TPM2) /* \_SB_.TPM_.TPM2 */
                    }

    02DC: A4 54 50 4D 32                                   // .TPM2

                    Case
    02E1: A1 49 0C                                         // .I.

 (0x04)
                    {

    02E4: A0 0B 93 5F 54 5F 30 0A 04                       // ..._T_0..

                        Return (0x02)
                    }

    02ED: A4 0A 02                                         // ...

                    Case
    02F0: A1 4A 0B                                         // .J.

 (0x05)
                    {
                        Store (0x05, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Store (LPPR, 
    02F3: A0 36 93 5F 54 5F 30 0A 05 70 0A 05 50 50 49 50  // .6._T_0..p..PPIP
    0303: 70 50 50 49 4E 49 4F 42 32 70 4C 50 50 52        // pPPINIOB2pLPPR

Index (TPM3, One))
                        Store (PPRP, 
    0311: 88 54 50 4D 33 01 00 70 50 50 52 50              // .TPM3..pPPRP

Index (TPM3, 0x02))

    031D: 88 54 50 4D 33 0A 02 00                          // .TPM3...

                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                    }

    0325: A4 54 50 4D 33                                   // .TPM3

                    Case
    032A: A1 40 08                                         // .@.

 (0x06)
                    {

    032D: A0 0B 93 5F 54 5F 30 0A 06                       // ..._T_0..

                        Return (0x03)
                    }

    0336: A4 0A 03                                         // ...

                    Case
    0339: A1 41 07                                         // .A.

 (0x07)
                    {
                        Store (0x07, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (DerefOf (
    033C: A0 41 04 93 5F 54 5F 30 0A 07 70 0A 07 50 50 49  // .A.._T_0..p..PPI
    034C: 50 70 83                                         // Pp.

Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (Zero, PPRM) /* \_SB_.TPM_.PPRM */

    034F: 88 6A 00 00 50 50 52 51 70 00 50 50 52 4D        // .j..PPRQp.PPRM

                        If (LEqual (PPRQ, 0x17))
                        {

    035D: A0 12 93 50 50 52 51 0A 17                       // ...PPRQ..

                            Store (DerefOf (
    0366: 70 83                                            // p.

Index (Arg2, One)), PPRM) /* \_SB_.TPM_.PPRM */
                        }

                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */

    0368: 88 6A 01 00 50 50 52 4D 70 50 50 49 4E 49 4F 42  // .j..PPRMpPPINIOB
    0378: 32                                               // 2

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    0379: A4 46 52 45 54                                   // .FRET

                    Case
    037E: A1 2C                                            // .,

 (0x08)
                    {
                        Store (0x08, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (DerefOf (
    0380: A0 27 93 5F 54 5F 30 0A 08 70 0A 08 50 50 49 50  // .'._T_0..p..PPIP
    0390: 70 83                                            // p.

Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */

    0392: 88 6A 00 00 50 50 52 51 70 50 50 49 4E 49 4F 42  // .j..PPRQpPPINIOB
    03A2: 32                                               // 2

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    03A3: A4 46 52 45 54                                   // .FRET

                    Default
                    {

    03A8: A1 02                                            // ..

                        BreakPoint
                    }


    03AA: CC                                               // .

                }


    03AB: A5                                               // .

                Return (One)
            }


    03AC: A4 01                                            // ..

            Method (TMCI, 3, Serialized)
            {

    03AE: 14 44 05 54 4D 43 49 0B                          // .D.TMCI.


    03B6: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    03BC: A2 44 04 01 70 99 69 00 5F 54 5F 30              // .D..p.i._T_0

                    Case (Zero)
                    {

    03C8: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    03D0: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    03D1: 11 03 01 03                                      // ....

                    Case
    03D5: A1 2A                                            // .*

 (One)
                    {
                        Store (DerefOf (
    03D7: A0 25 93 5F 54 5F 30 01 70 83                    // .%._T_0.p.

Index (Arg2, Zero)), MORD) /* \_SB_.TPM_.MORD */
                        Store (One, MCIP) /* \_SB_.TPM_.MCIP */
                        Store (MCIN, IOB2) /* \_SB_.TPM_.IOB2 */

    03E1: 88 6A 00 00 4D 4F 52 44 70 01 4D 43 49 50 70 4D  // .j..MORDp.MCIPpM
    03F1: 43 49 4E 49 4F 42 32                             // CINIOB2

                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }

    03F8: A4 4D 52 45 54                                   // .MRET

                    Default
                    {

    03FD: A1 02                                            // ..

                        BreakPoint
                    }


    03FF: CC                                               // .

                }


    0400: A5                                               // .

                Return (One)
            }


    0401: A4 01                                            // ..

            Method (OASM, 3, Serialized)
            {

    0403: 14 43 0C 4F 41 53 4D 0B                          // .C.OASM.


    040B: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    0411: A2 43 0B 01 70 99 69 00 5F 54 5F 30              // .C..p.i._T_0

                    Case (Zero)
                    {

    041D: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    0425: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    0426: 11 03 01 03                                      // ....

                    Case
    042A: A1 49 09                                         // .I.

 (One)
                    {

    042D: A0 43 09 93 5F 54 5F 30 01                       // .C.._T_0.

                        Name (WTME, Zero)

    0436: 08 57 54 4D 45 00                                // .WTME.

                        If (LEqual (SMTD, 0x07))
                        {
                            Store (One, CREQ) /* \_SB_.TPM_.CREQ */

    043C: A0 33 93 53 4D 54 44 0A 07 70 01 43 52 45 51     // .3.SMTD..p.CREQ

                            While (LAnd (
    044B: A2 1D 90 92                                      // ....

LLessEqual (WTME, 0xC8), 
    044F: 94 57 54 4D 45 0A C8                             // .WTME..


    0456: 92                                               // .

LNotEqual (And (CSTS, 0x02), 
                                Zero)))
                            {
                                Sleep (One)

    0457: 93 7B 43 53 54 53 0A 02 00 00 5B 22 01           // .{CSTS....[".

                                Increment (WTME)
                            }


    0464: 75 57 54 4D 45                                   // uWTME

                            Store (0x02, HCMD) /* \_SB_.TPM_.HCMD */
                        }

    0469: 70 0A 02 48 43 4D 44                             // p..HCMD

                        Else
                        {
                            Store (CAIN, IOB2) /* \_SB_.TPM_.IOB2 */

    0470: A1 40 05 70 43 41 49 4E 49 4F 42 32              // .@.pCAINIOB2

                            While (LEqual (STA1, One))
                            {

    047C: A2 3C 93 53 54 41 31 01                          // .<.STA1.

                                If (LEqual (And (TSTS, 0x90), 0x90))
                                {
                                    Store (CAIN, IOB2) /* \_SB_.TPM_.IOB2 */

    0484: A0 17 93 7B 54 53 54 53 0A 90 00 0A 90 70 43 41  // ...{TSTS.....pCA
    0494: 49 4E 49 4F 42 32                                // INIOB2

                                    Return (Zero)
                                }


    049A: A4 00                                            // ..

                                If (LEqual (CLFG, One))
                                {

    049C: A0 19 93 43 4C 46 47 01                          // ...CLFG.

                                    If (LEqual (WTME, 0x00015F90))
                                    {

    04A4: A0 0C 93 57 54 4D 45 0C 90 5F 01 00              // ...WTME.._..

                                        Break
                                    }


    04B0: A5                                               // .

                                    Increment (WTME)
                                }


    04B1: 75 57 54 4D 45                                   // uWTME

                                Sleep (One)
                            }

                            Store (Zero, STA1) /* \_SB_.TPM_.STA1 */

    04B6: 5B 22 01 70 00 53 54 41 31                       // [".p.STA1

                            Return (Zero)
                        }
                    }

    04BF: A4 00                                            // ..

                    Default
                    {

    04C1: A1 02                                            // ..

                        BreakPoint
                    }


    04C3: CC                                               // .

                }


    04C4: A5                                               // .

                Return (One)
            }


    04C5: A4 01                                            // ..

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {

    04C7: 14 4C 08 5F 44 53 4D 0C                          // .L._DSM.

                If (LEqual (Arg0, 
    04CF: A0 1F 93 68                                      // ...h

ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8") /* Unknown UUID */))
                {

    04D3: 11 13 0A 10 A5 16 8E CF E8 C1 25 4E B7 12 4F 54  // ..........%N..OT
    04E3: A9 67 02 C8                                      // .g..

                    Return (HINF (Arg1, Arg2, Arg3))
                }


    04E7: A4 48 49 4E 46 69 6A 6B                          // .HINFijk

                If (LEqual (Arg0, 
    04EF: A0 1F 93 68                                      // ...h

ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {

    04F3: 11 13 0A 10 A6 FA DD 3D 1B 36 B4 4E A4 24 8D 10  // .......=.6.N.$..
    0503: 08 9D 16 53                                      // ...S

                    Return (TPPI (Arg1, Arg2, Arg3))
                }


    0507: A4 54 50 50 49 69 6A 6B                          // .TPPIijk

                If (LEqual (Arg0, 
    050F: A0 1F 93 68                                      // ...h

ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* Unknown UUID */))
                {

    0513: 11 13 0A 10 ED 54 60 37 13 CC 75 46 90 1C 47 56  // .....T`7..uF..GV
    0523: D7 F2 D4 5D                                      // ...]

                    Return (TMCI (Arg1, Arg2, Arg3))
                }


    0527: A4 54 4D 43 49 69 6A 6B                          // .TMCIijk

                If (LEqual (Arg0, 
    052F: A0 1F 93 68                                      // ...h

ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4") /* Unknown UUID */))
                {

    0533: 11 13 0A 10 AB 6C BF 6B 63 54 14 47 B7 CD F0 20  // .....l.kcT.G... 
    0543: 3C 03 68 D4                                      // <.h.

                    Return (OASM (Arg1, Arg2, Arg3))
                }


    0547: A4 4F 41 53 4D 69 6A 6B                          // .OASMijk

                Return (
    054F: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}



Table Header:
Table Body (Length 0x554)

/*
Raw Table Data: Length 1364 (0x554)

    0000: 53 53 44 54 54 05 00 00 01 A1 4C 45 4E 4F 56 4F  // SSDTT.....LENOVO
    0010: 43 42 2D 30 31 20 20 20 01 00 00 00 41 43 50 49  // CB-01   ....ACPI
    0020: 00 00 04 00 10 4F 52 5C 5F 53 42 5F 5B 82 46 52  // .....OR\_SB_[.FR
    0030: 54 50 4D 5F 08 5F 48 49 44 0D 4D 53 46 54 30 31  // TPM_._HID.MSFT01
    0040: 30 31 00 08 5F 43 49 44 0D 4D 53 46 54 30 31 30  // 01.._CID.MSFT010
    0050: 31 00 08 5F 53 54 52 11 21 0A 1E 54 00 50 00 4D  // 1.._STR.!..T.P.M
    0060: 00 20 00 32 00 2E 00 30 00 20 00 44 00 65 00 76  // . .2...0. .D.e.v
    0070: 00 69 00 63 00 65 00 00 00 08 5F 43 52 53 11 11  // .i.c.e...._CRS..
    0080: 0A 0E 86 09 00 00 00 00 D4 FE 00 50 00 00 79 00  // ...........P..y.
    0090: 5B 80 53 4D 49 50 01 0A B2 01 5B 81 0B 53 4D 49  // [.SMIP....[..SMI
    00A0: 50 01 49 4F 42 32 08 5B 80 54 50 4D 52 00 0C 00  // P.IOB2.[.TPMR...
    00B0: 00 D4 FE 0B 00 50 5B 81 2F 54 50 4D 52 00 41 43  // .....P[./TPMR.AC
    00C0: 43 30 08 00 48 0B 54 53 54 53 20 00 40 0A 54 49  // C0..H.TSTS .@.TI
    00D0: 54 50 08 00 48 07 43 52 45 51 20 43 53 54 53 20  // TP..H.CREQ CSTS 
    00E0: 00 20 48 43 4D 44 20 5B 80 54 4E 56 53 00 0C 00  // . HCMD [.TNVS...
    00F0: 20 E7 8C 0A 27 5B 81 43 04 54 4E 56 53 00 50 50  //  ...'[.C.TNVS.PP
    0100: 49 4E 08 50 50 49 50 20 50 50 52 50 20 50 50 52  // IN.PPIP PPRP PPR
    0110: 51 20 50 50 52 4D 20 4C 50 50 52 20 46 52 45 54  // Q PPRM LPPR FRET
    0120: 20 4D 43 49 4E 08 4D 43 49 50 20 4D 4F 52 44 20  //  MCIN.MCIP MORD 
    0130: 4D 52 45 54 20 43 41 49 4E 08 5B 80 43 4F 4E 41  // MRET CAIN.[.CONA
    0140: 00 0C 00 10 E7 8C 0A 30 5B 81 46 04 43 4F 4E 41  // .......0[.F.CONA
    0150: 03 48 52 54 42 20 45 52 52 52 20 43 4C 46 47 20  // .HRTB ERRR CLFG 
    0160: 53 54 41 31 20 01 04 00 49 4E 54 43 40 04 01 03  // STA1 ...INTC@...
    0170: 00 43 4D 53 5A 20 01 04 00 43 4D 44 42 40 04 01  // .CMSZ ...CMDB@..
    0180: 03 00 52 50 53 5A 20 01 04 00 52 45 53 50 40 04  // ..RPSZ ...RESP@.
    0190: 5B 80 53 54 52 54 00 0C 70 24 5D 8D 0A 04 5B 81  // [.STRT..p$]...[.
    01A0: 0B 53 54 52 54 00 53 4D 54 44 20 14 2E 50 54 53  // .STRT.SMTD ..PTS
    01B0: 5F 09 A0 25 90 95 68 0A 06 94 68 0A 03 A0 1A 92  // _..%..h...h.....
    01C0: 7B 4D 4F 52 44 0A 10 00 70 0A 02 4D 43 49 50 70  // {MORD...p..MCIPp
    01D0: 4D 43 49 4E 49 4F 42 32 A4 00 14 14 5F 53 54 41  // MCINIOB2...._STA
    01E0: 00 A0 0A 93 41 43 43 30 0A FF A4 00 A4 0A 0F 14  // ....ACC0........
    01F0: 4A 05 48 49 4E 46 0B 08 5F 54 5F 30 00 A2 47 04  // J.HINF.._T_0..G.
    0200: 01 70 99 69 00 5F 54 5F 30 A0 0C 93 5F 54 5F 30  // .p.i._T_0..._T_0
    0210: 00 A4 11 03 01 03 A1 2D A0 28 93 5F 54 5F 30 01  // .......-.(._T_0.
    0220: 08 54 50 4D 56 12 09 02 01 12 05 02 0A 02 00 A0  // .TPMV...........
    0230: 0C 93 5F 53 54 41 00 A4 12 03 01 00 A4 54 50 4D  // .._STA.......TPM
    0240: 56 A1 02 CC A5 A4 11 03 01 00 08 54 50 4D 32 12  // V..........TPM2.
    0250: 04 02 00 00 08 54 50 4D 33 12 05 03 00 00 00 14  // .....TPM3.......
    0260: 4E 14 54 50 50 49 0B 08 5F 54 5F 30 00 A2 4E 13  // N.TPPI.._T_0..N.
    0270: 01 70 99 69 00 5F 54 5F 30 A0 0E 93 5F 54 5F 30  // .p.i._T_0..._T_0
    0280: 00 A4 11 05 0A 02 FF 01 A1 42 12 A0 0D 93 5F 54  // .........B...._T
    0290: 5F 30 01 A4 0D 31 2E 33 00 A1 41 11 A0 27 93 5F  // _0...1.3..A..'._
    02A0: 54 5F 30 0A 02 70 83 88 6A 00 00 50 50 52 51 70  // T_0..p..j..PPRQp
    02B0: 0A 02 50 50 49 50 70 50 50 49 4E 49 4F 42 32 A4  // ..PPIPpPPINIOB2.
    02C0: 46 52 45 54 A1 46 0E A0 19 93 5F 54 5F 30 0A 03  // FRET.F...._T_0..
    02D0: 70 50 50 52 51 88 54 50 4D 32 01 00 A4 54 50 4D  // pPPRQ.TPM2...TPM
    02E0: 32 A1 49 0C A0 0B 93 5F 54 5F 30 0A 04 A4 0A 02  // 2.I...._T_0.....
    02F0: A1 4A 0B A0 36 93 5F 54 5F 30 0A 05 70 0A 05 50  // .J..6._T_0..p..P
    0300: 50 49 50 70 50 50 49 4E 49 4F 42 32 70 4C 50 50  // PIPpPPINIOB2pLPP
    0310: 52 88 54 50 4D 33 01 00 70 50 50 52 50 88 54 50  // R.TPM3..pPPRP.TP
    0320: 4D 33 0A 02 00 A4 54 50 4D 33 A1 40 08 A0 0B 93  // M3....TPM3.@....
    0330: 5F 54 5F 30 0A 06 A4 0A 03 A1 41 07 A0 41 04 93  // _T_0......A..A..
    0340: 5F 54 5F 30 0A 07 70 0A 07 50 50 49 50 70 83 88  // _T_0..p..PPIPp..
    0350: 6A 00 00 50 50 52 51 70 00 50 50 52 4D A0 12 93  // j..PPRQp.PPRM...
    0360: 50 50 52 51 0A 17 70 83 88 6A 01 00 50 50 52 4D  // PPRQ..p..j..PPRM
    0370: 70 50 50 49 4E 49 4F 42 32 A4 46 52 45 54 A1 2C  // pPPINIOB2.FRET.,
    0380: A0 27 93 5F 54 5F 30 0A 08 70 0A 08 50 50 49 50  // .'._T_0..p..PPIP
    0390: 70 83 88 6A 00 00 50 50 52 51 70 50 50 49 4E 49  // p..j..PPRQpPPINI
    03A0: 4F 42 32 A4 46 52 45 54 A1 02 CC A5 A4 01 14 44  // OB2.FRET.......D
    03B0: 05 54 4D 43 49 0B 08 5F 54 5F 30 00 A2 44 04 01  // .TMCI.._T_0..D..
    03C0: 70 99 69 00 5F 54 5F 30 A0 0C 93 5F 54 5F 30 00  // p.i._T_0..._T_0.
    03D0: A4 11 03 01 03 A1 2A A0 25 93 5F 54 5F 30 01 70  // ......*.%._T_0.p
    03E0: 83 88 6A 00 00 4D 4F 52 44 70 01 4D 43 49 50 70  // ..j..MORDp.MCIPp
    03F0: 4D 43 49 4E 49 4F 42 32 A4 4D 52 45 54 A1 02 CC  // MCINIOB2.MRET...
    0400: A5 A4 01 14 43 0C 4F 41 53 4D 0B 08 5F 54 5F 30  // ....C.OASM.._T_0
    0410: 00 A2 43 0B 01 70 99 69 00 5F 54 5F 30 A0 0C 93  // ..C..p.i._T_0...
    0420: 5F 54 5F 30 00 A4 11 03 01 03 A1 49 09 A0 43 09  // _T_0.......I..C.
    0430: 93 5F 54 5F 30 01 08 57 54 4D 45 00 A0 33 93 53  // ._T_0..WTME..3.S
    0440: 4D 54 44 0A 07 70 01 43 52 45 51 A2 1D 90 92 94  // MTD..p.CREQ.....
    0450: 57 54 4D 45 0A C8 92 93 7B 43 53 54 53 0A 02 00  // WTME....{CSTS...
    0460: 00 5B 22 01 75 57 54 4D 45 70 0A 02 48 43 4D 44  // .[".uWTMEp..HCMD
    0470: A1 40 05 70 43 41 49 4E 49 4F 42 32 A2 3C 93 53  // .@.pCAINIOB2.<.S
    0480: 54 41 31 01 A0 17 93 7B 54 53 54 53 0A 90 00 0A  // TA1....{TSTS....
    0490: 90 70 43 41 49 4E 49 4F 42 32 A4 00 A0 19 93 43  // .pCAINIOB2.....C
    04A0: 4C 46 47 01 A0 0C 93 57 54 4D 45 0C 90 5F 01 00  // LFG....WTME.._..
    04B0: A5 75 57 54 4D 45 5B 22 01 70 00 53 54 41 31 A4  // .uWTME[".p.STA1.
    04C0: 00 A1 02 CC A5 A4 01 14 4C 08 5F 44 53 4D 0C A0  // ........L._DSM..
    04D0: 1F 93 68 11 13 0A 10 A5 16 8E CF E8 C1 25 4E B7  // ..h..........%N.
    04E0: 12 4F 54 A9 67 02 C8 A4 48 49 4E 46 69 6A 6B A0  // .OT.g...HINFijk.
    04F0: 1F 93 68 11 13 0A 10 A6 FA DD 3D 1B 36 B4 4E A4  // ..h.......=.6.N.
    0500: 24 8D 10 08 9D 16 53 A4 54 50 50 49 69 6A 6B A0  // $.....S.TPPIijk.
    0510: 1F 93 68 11 13 0A 10 ED 54 60 37 13 CC 75 46 90  // ..h.....T`7..uF.
    0520: 1C 47 56 D7 F2 D4 5D A4 54 4D 43 49 69 6A 6B A0  // .GV...].TMCIijk.
    0530: 1F 93 68 11 13 0A 10 AB 6C BF 6B 63 54 14 47 B7  // ..h.....l.kcT.G.
    0540: CD F0 20 3C 03 68 D4 A4 4F 41 53 4D 69 6A 6B A4  // .. <.h..OASMijk.
    0550: 11 03 01 00                                      // ....
 */
