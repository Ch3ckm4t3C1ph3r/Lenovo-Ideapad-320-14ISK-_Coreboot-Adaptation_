{
    External (_PR_.CPU0, DeviceObj)
    External (_PR_.CPU1, DeviceObj)
    External (_PR_.CPU2, DeviceObj)
    External (_PR_.CPU3, DeviceObj)
    External (_PR_.CPU4, DeviceObj)
    External (_PR_.CPU5, DeviceObj)
    External (_PR_.CPU6, DeviceObj)
    External (_PR_.CPU7, DeviceObj)
    External (_SB_.OSCP, IntObj)
    External (OSYS, UnknownObj)


    0024: A0 4F 07 00 15 5C 2E 5F 53 42 5F 4F 53 43 50 01  // .O...\._SB_OSCP.
    0034: 00 15 5C 2E 5F 50 52 5F 43 50 55 30 06 00 15 5C  // ..\._PR_CPU0...\
    0044: 2E 5F 50 52 5F 43 50 55 31 06 00 15 5C 2E 5F 50  // ._PR_CPU1...\._P
    0054: 52 5F 43 50 55 32 06 00 15 5C 2E 5F 50 52 5F 43  // R_CPU2...\._PR_C
    0064: 50 55 33 06 00 15 5C 2E 5F 50 52 5F 43 50 55 34  // PU3...\._PR_CPU4
    0074: 06 00 15 5C 2E 5F 50 52 5F 43 50 55 35 06 00 15  // ...\._PR_CPU5...
    0084: 5C 2E 5F 50 52 5F 43 50 55 36 06 00 15 5C 2E 5F  // \._PR_CPU6...\._
    0094: 50 52 5F 43 50 55 37 06 00 15 4F 53 59 53 00 00  // PR_CPU7...OSYS..

    Scope (\)
    {

    00A4: 10 48 0F 5C 00                                   // .H.\.

        Name (SSDT, 
    00A9: 08 53 53 44 54                                   // .SSDT

Package (0x15)
        {
            "CPU0IST ", 
            0x8C67E018, 
            0x00000651, 
            "APIST   ", 
            0x8C67D018, 
            0x0000065C, 
            "CPU0CST ", 
            0x8C67D898, 
            0x000003FF, 
            "APCST   ", 
            0x8C67DDD8, 
            0x0000018A, 
            "CPU0HWP ", 
            0x8C67EDD8, 
            0x00000115, 
            "APHWP   ", 
            0x8C67E898, 
            0x00000197, 
            "HWPLVT  ", 
            0x8C78D558, 
            0x000001A4
        })

    00AE: 12 4F 08 15 0D 43 50 55 30 49 53 54 20 00 0C 18  // .O...CPU0IST ...
    00BE: E0 67 8C 0C 51 06 00 00 0D 41 50 49 53 54 20 20  // .g..Q....APIST  
    00CE: 20 00 0C 18 D0 67 8C 0C 5C 06 00 00 0D 43 50 55  //  ....g..\....CPU
    00DE: 30 43 53 54 20 00 0C 98 D8 67 8C 0C FF 03 00 00  // 0CST ....g......
    00EE: 0D 41 50 43 53 54 20 20 20 00 0C D8 DD 67 8C 0C  // .APCST   ....g..
    00FE: 8A 01 00 00 0D 43 50 55 30 48 57 50 20 00 0C D8  // .....CPU0HWP ...
    010E: ED 67 8C 0C 15 01 00 00 0D 41 50 48 57 50 20 20  // .g.......APHWP  
    011E: 20 00 0C 98 E8 67 8C 0C 97 01 00 00 0D 48 57 50  //  ....g.......HWP
    012E: 4C 56 54 20 20 00 0C 58 D5 78 8C 0C A4 01 00 00  // LVT  ..X.x......

        Name (\PDC0, 0x80000000)

    013E: 08 5C 50 44 43 30 0C 00 00 00 80                 // .\PDC0.....

        Name (\PDC1, 0x80000000)

    0149: 08 5C 50 44 43 31 0C 00 00 00 80                 // .\PDC1.....

        Name (\PDC2, 0x80000000)

    0154: 08 5C 50 44 43 32 0C 00 00 00 80                 // .\PDC2.....

        Name (\PDC3, 0x80000000)

    015F: 08 5C 50 44 43 33 0C 00 00 00 80                 // .\PDC3.....

        Name (\PDC4, 0x80000000)

    016A: 08 5C 50 44 43 34 0C 00 00 00 80                 // .\PDC4.....

        Name (\PDC5, 0x80000000)

    0175: 08 5C 50 44 43 35 0C 00 00 00 80                 // .\PDC5.....

        Name (\PDC6, 0x80000000)

    0180: 08 5C 50 44 43 36 0C 00 00 00 80                 // .\PDC6.....

        Name (\PDC7, 0x80000000)

    018B: 08 5C 50 44 43 37 0C 00 00 00 80                 // .\PDC7.....

        Name (\SDTL, Zero)
    }


    0196: 08 5C 53 44 54 4C 00                             // .\SDTL.

    Scope (\_PR)
    {

    019D: 10 45 1B 5C 5F 50 52 5F                          // .E.\_PR_

        Name (CTPC, Zero)

    01A5: 08 43 54 50 43 00                                // .CTPC.

        OperationRegion (PNVS, SystemMemory, 0x73867000, 0x006C)

    01AB: 5B 80 50 4E 56 53 00 0C 00 70 86 73 0B 6C 00     // [.PNVS...p.s.l.

        Field (PNVS, AnyAcc, Lock, Preserve)
        {
            PGRV,   8, 
            CFGD,   32, 
            Offset (0x06), 
            ACRT,   8, 
            APSV,   8, 
            AAC0,   8, 
            CPID,   32, 
            CPPC,   8, 
            CLVL,   8, 
            CBMI,   8, 
            PL10,   16, 
            PL20,   16, 
            PLW0,   8, 
            CTC0,   8, 
            TAR0,   8, 
            PPC0,   8, 
            PL11,   16, 
            PL21,   16, 
            PLW1,   8, 
            CTC1,   8, 
            TAR1,   8, 
            PPC1,   8, 
            PL12,   16, 
            PL22,   16, 
            PLW2,   8, 
            CTC2,   8, 
            TAR2,   8, 
            PPC2,   8, 
            C3MW,   8, 
            C6MW,   8, 
            C7MW,   8, 
            CDMW,   8, 
            C3LT,   16, 
            C6LT,   16, 
            C7LT,   16, 
            CDLT,   16, 
            CDLV,   16, 
            CDPW,   16, 
            MPMF,   8, 
            DTSE,   8, 
            DTS1,   8, 
            DTS2,   8, 
            DTSF,   8, 
            PDTS,   8, 
            PKGA,   8, 
            DTS3,   8, 
            DTS4,   8, 
            BGMA,   64, 
            BGMS,   8, 
            BGIA,   16, 
            BGIL,   16, 
            DSIA,   16, 
            DSIL,   8, 
            DSAE,   8, 
            EPCS,   8, 
            EMNA,   64, 
            ELNG,   64, 
            HWPV,   8, 
            HWPA,   16, 
            HWPL,   16, 
            POWS,   8, 
            HDCE,   8, 
            HWPI,   8, 
            DTSI,   8
        }


    01BA: 5B 81 47 14 50 4E 56 53 10 50 47 52 56 08 43 46  // [.G.PNVS.PGRV.CF
    01CA: 47 44 20 00 08 41 43 52 54 08 41 50 53 56 08 41  // GD ..ACRT.APSV.A
    01DA: 41 43 30 08 43 50 49 44 20 43 50 50 43 08 43 4C  // AC0.CPID CPPC.CL
    01EA: 56 4C 08 43 42 4D 49 08 50 4C 31 30 10 50 4C 32  // VL.CBMI.PL10.PL2
    01FA: 30 10 50 4C 57 30 08 43 54 43 30 08 54 41 52 30  // 0.PLW0.CTC0.TAR0
    020A: 08 50 50 43 30 08 50 4C 31 31 10 50 4C 32 31 10  // .PPC0.PL11.PL21.
    021A: 50 4C 57 31 08 43 54 43 31 08 54 41 52 31 08 50  // PLW1.CTC1.TAR1.P
    022A: 50 43 31 08 50 4C 31 32 10 50 4C 32 32 10 50 4C  // PC1.PL12.PL22.PL
    023A: 57 32 08 43 54 43 32 08 54 41 52 32 08 50 50 43  // W2.CTC2.TAR2.PPC
    024A: 32 08 43 33 4D 57 08 43 36 4D 57 08 43 37 4D 57  // 2.C3MW.C6MW.C7MW
    025A: 08 43 44 4D 57 08 43 33 4C 54 10 43 36 4C 54 10  // .CDMW.C3LT.C6LT.
    026A: 43 37 4C 54 10 43 44 4C 54 10 43 44 4C 56 10 43  // C7LT.CDLT.CDLV.C
    027A: 44 50 57 10 4D 50 4D 46 08 44 54 53 45 08 44 54  // DPW.MPMF.DTSE.DT
    028A: 53 31 08 44 54 53 32 08 44 54 53 46 08 50 44 54  // S1.DTS2.DTSF.PDT
    029A: 53 08 50 4B 47 41 08 44 54 53 33 08 44 54 53 34  // S.PKGA.DTS3.DTS4
    02AA: 08 42 47 4D 41 40 04 42 47 4D 53 08 42 47 49 41  // .BGMA@.BGMS.BGIA
    02BA: 10 42 47 49 4C 10 44 53 49 41 10 44 53 49 4C 08  // .BGIL.DSIA.DSIL.
    02CA: 44 53 41 45 08 45 50 43 53 08 45 4D 4E 41 40 04  // DSAE.EPCS.EMNA@.
    02DA: 45 4C 4E 47 40 04 48 57 50 56 08 48 57 50 41 10  // ELNG@.HWPV.HWPA.
    02EA: 48 57 50 4C 10 50 4F 57 53 08 48 44 43 45 08 48  // HWPL.POWS.HDCE.H
    02FA: 57 50 49 08 44 54 53 49 08                       // WPI.DTSI.

        OperationRegion (IO_D, SystemIO, \_PR.DSIA, \_PR.DSIL)

    0303: 5B 80 49 4F 5F 44 01 5C 2E 5F 50 52 5F 44 53 49  // [.IO_D.\._PR_DSI
    0313: 41 5C 2E 5F 50 52 5F 44 53 49 4C                 // A\._PR_DSIL

        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }


    031E: 5B 81 0B 49 4F 5F 44 01 54 52 50 44 08           // [..IO_D.TRPD.

        OperationRegion (IO_P, SystemIO, \_PR.BGIA, \_PR.BGIL)

    032B: 5B 80 49 4F 5F 50 01 5C 2E 5F 50 52 5F 42 47 49  // [.IO_P.\._PR_BGI
    033B: 41 5C 2E 5F 50 52 5F 42 47 49 4C                 // A\._PR_BGIL

        Field (IO_P, ByteAcc, NoLock, Preserve)
        {
            TRPF,   8
        }
    }


    0346: 5B 81 0B 49 4F 5F 50 01 54 52 50 46 08           // [..IO_P.TRPF.

    Scope (\_PR.CPU0)
    {

    0353: 10 4C 39 5C 2E 5F 50 52 5F 43 50 55 30           // .L9\._PR_CPU0

        Name (HI0, Zero)

    0360: 08 48 49 30 5F 00                                // .HI0_.

        Name (HC0, Zero)

    0366: 08 48 43 30 5F 00                                // .HC0_.

        Name (HW0, Zero)

    036C: 08 48 57 30 5F 00                                // .HW0_.

        Name (HW2, Zero)

    0372: 08 48 57 32 5F 00                                // .HW2_.

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            Store (CPDC (Arg0), Local0)
            GCAP (Local0)
        }


    0378: 14 12 5F 50 44 43 09 70 43 50 44 43 68 60 47 43  // .._PDC.pCPDCh`GC
    0388: 41 50 60                                         // AP`

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            Store (COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

    038B: 14 17 5F 4F 53 43 0C 70 43 4F 53 43 68 69 6A 6B  // .._OSC.pCOSChijk
    039B: 60 47 43 41 50 60                                // `GCAP`

            Return (Local0)
        }


    03A1: A4 60                                            // .`

        Name (STS0, 
    03A3: 08 53 54 53 30                                   // .STS0

Buffer (0x04)
        {
             0x00, 0x00, 0x00, 0x00                           // ....
        })

    03A8: 11 07 0A 04 00 00 00 00                          // ........

        Method (CPDC, 1, Serialized)
        {

    03B0: 14 4B 05 43 50 44 43 09                          // .K.CPDC.

            CreateDWordField (Arg0, Zero, REVS)

    03B8: 8A 68 00 52 45 56 53                             // .h.REVS

            CreateDWordField (Arg0, 0x04, SIZE)
            Store (SizeOf (Arg0), Local0)
            Store (Subtract (Local0, 0x08), Local1)

    03BF: 8A 68 0A 04 53 49 5A 45 70 87 68 60 70 74 60 0A  // .h..SIZEp.h`pt`.
    03CF: 08 00 61                                         // ..a

            CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)
            Concatenate (STS0, TEMP, Local2)

    03D2: 5B 13 68 0A 40 77 61 0A 08 00 54 45 4D 50 73 53  // [.h.@wa...TEMPsS
    03E2: 54 53 30 54 45 4D 50 62                          // TS0TEMPb

            Return (COSC (
    03EA: A4 43 4F 53 43                                   // .COSC

ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2))
        }


    03EF: 11 13 0A 10 16 A6 77 40 0C 29 BE 47 9E BD D8 70  // ......w@.).G...p
    03FF: 58 71 39 53 52 45 56 53 53 49 5A 45 62           // Xq9SREVSSIZEb

        Name (UID0, 
    040C: 08 55 49 44 30                                   // .UID0

ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)

    0411: 11 13 0A 10 16 A6 77 40 0C 29 BE 47 9E BD D8 70  // ......w@.).G...p
    0421: 58 71 39 53                                      // Xq9S

        OperationRegion (SMIP, SystemIO, 0xB2, One)

    0425: 5B 80 53 4D 49 50 01 0A B2 01                    // [.SMIP....

        Field (SMIP, ByteAcc, NoLock, Preserve)
        {
            IOB2,   8
        }


    042F: 5B 81 0B 53 4D 49 50 01 49 4F 42 32 08           // [..SMIP.IOB2.

        Method (COSC, 4, Serialized)
        {

    043C: 14 40 0E 43 4F 53 43 0C                          // .@.COSC.

            CreateDWordField (Arg3, Zero, STS0)

    0444: 8A 6B 00 53 54 53 30                             // .k.STS0

            CreateDWordField (Arg3, 0x04, CAP0)

    044B: 8A 6B 0A 04 43 41 50 30                          // .k..CAP0

            CreateDWordField (Arg0, Zero, IID0)

    0453: 8A 68 00 49 49 44 30                             // .h.IID0

            CreateDWordField (Arg0, 0x04, IID1)

    045A: 8A 68 0A 04 49 49 44 31                          // .h..IID1

            CreateDWordField (Arg0, 0x08, IID2)

    0462: 8A 68 0A 08 49 49 44 32                          // .h..IID2

            CreateDWordField (Arg0, 0x0C, IID3)

    046A: 8A 68 0A 0C 49 49 44 33                          // .h..IID3

            CreateDWordField (UID0, Zero, EID0)

    0472: 8A 55 49 44 30 00 45 49 44 30                    // .UID0.EID0

            CreateDWordField (UID0, 0x04, EID1)

    047C: 8A 55 49 44 30 0A 04 45 49 44 31                 // .UID0..EID1

            CreateDWordField (UID0, 0x08, EID2)

    0487: 8A 55 49 44 30 0A 08 45 49 44 32                 // .UID0..EID2

            CreateDWordField (UID0, 0x0C, EID3)

    0492: 8A 55 49 44 30 0A 0C 45 49 44 33                 // .UID0..EID3

            If (LNot (
    049D: A0 32 92                                         // .2.

LAnd (LAnd (LEqual (IID0, EID0), 
    04A0: 90 90 93 49 49 44 30 45 49 44 30                 // ...IID0EID0

LEqual (IID1, EID1)), 
    04AB: 93 49 49 44 31 45 49 44 31                       // .IID1EID1

LAnd (LEqual (
                IID2, EID2), 
    04B4: 90 93 49 49 44 32 45 49 44 32                    // ..IID2EID2

LEqual (IID3, EID3)))))
            {
                Store (0x06, STS0) /* \_PR_.CPU0.COSC.STS0 */

    04BE: 93 49 49 44 33 45 49 44 33 70 0A 06 53 54 53 30  // .IID3EID3p..STS0

                Return (Arg3)
            }


    04CE: A4 6B                                            // .k

            If (
    04D0: A0 0E 92                                         // ...

LNotEqual (Arg1, One))
            {
                Store (0x0A, STS0) /* \_PR_.CPU0.COSC.STS0 */

    04D3: 93 69 01 70 0A 0A 53 54 53 30                    // .i.p..STS0

                Return (Arg3)
            }


    04DD: A4 6B                                            // .k

            If (LNot (
    04DF: A0 10 92                                         // ...


    04E2: 92                                               // .

LGreaterEqual (Arg2, 0x02)))
            {
                Store (0x02, STS0) /* \_PR_.CPU0.COSC.STS0 */

    04E3: 95 6A 0A 02 70 0A 02 53 54 53 30                 // .j..p..STS0

                Return (Arg3)
            }


    04EE: A4 6B                                            // .k

            If (Not (And (STS0, One)))
            {

    04F0: A0 2A 80 7B 53 54 53 30 01 00 00                 // .*.{STS0...

                If (And (CAP0, 0x2000))
                {

    04FB: A0 16 7B 43 41 50 30 0B 00 20 00                 // ..{CAP0.. .

                    Store (Zero, \_PR.HDCE)
                }

    0506: 70 00 5C 2E 5F 50 52 5F 48 44 43 45              // p.\._PR_HDCE

                Else
                {

    0512: A1 08                                            // ..

                    Store (0x28, IOB2) /* \_PR_.CPU0.IOB2 */
                }
            }


    0514: 70 0A 28 49 4F 42 32                             // p.(IOB2

            Return (Arg3)
        }


    051B: A4 6B                                            // .k

        Method (GCAP, 1, Serialized)
        {

    051D: 14 42 1D 47 43 41 50 09                          // .B.GCAP.

            CreateDWordField (Arg0, Zero, STS0)

    0525: 8A 68 00 53 54 53 30                             // .h.STS0

            CreateDWordField (Arg0, 0x04, CAP0)

    052C: 8A 68 0A 04 43 41 50 30                          // .h..CAP0

            If (LOr (LEqual (STS0, 0x06), 
    0534: A0 12 91 93 53 54 53 30 0A 06                    // ....STS0..

LEqual (STS0, 0x0A)))
            {

    053E: 93 53 54 53 30 0A 0A                             // .STS0..

                Return (Zero)
            }


    0545: A4 00                                            // ..

            If (And (STS0, One))
            {
                And (CAP0, 0x0BFF, CAP0) /* \_PR_.CPU0.GCAP.CAP0 */

    0547: A0 16 7B 53 54 53 30 01 00 7B 43 41 50 30 0B FF  // ..{STS0..{CAP0..
    0557: 0B 43 41 50 30                                   // .CAP0

                Return (Zero)
            }

            Or (And (PDC0, 0x7FFFFFFF), CAP0, PDC0) /* \PDC0 */

    055C: A4 00 7D 7B 50 44 43 30 0C FF FF FF 7F 00 43 41  // ..}{PDC0......CA
    056C: 50 30 50 44 43 30                                // P0PDC0

            If (And (CFGD, 0x7A))
            {

    0572: A0 47 05 7B 43 46 47 44 0A 7A 00                 // .G.{CFGD.z.

                If (LAnd (LAnd (And (CFGD, 0x0200), 
    057D: A0 4C 04 90 90 7B 43 46 47 44 0B 00 02 00        // .L...{CFGD....

And (PDC0, 0x18)), 
    058B: 7B 50 44 43 30 0A 18 00                          // {PDC0...

LNot (
    0593: 92                                               // .


                    And (SDTL, 0x02))))
                {
                    Or (SDTL, 0x02, SDTL) /* \SDTL */

    0594: 7B 53 44 54 4C 0A 02 00 7D 53 44 54 4C 0A 02 53  // {SDTL...}SDTL..S
    05A4: 44 54 4C                                         // DTL

                    OperationRegion (CST0, SystemMemory, DerefOf (
    05A7: 5B 80 43 53 54 30 00 83                          // [.CST0..

Index (SSDT, 0x07)), 
    05AF: 88 53 53 44 54 0A 07 00                          // .SSDT...

DerefOf (
    05B7: 83                                               // .

Index (SSDT, 0x08)))

    05B8: 88 53 53 44 54 0A 08 00                          // .SSDT...

                    Load (CST0, HC0) /* \_PR_.CPU0.HC0_ */
                }
            }


    05C0: 5B 20 43 53 54 30 48 43 30 5F                    // [ CST0HC0_

            If (LAnd (And (CFGD, One), 
    05CA: A0 3F 90 7B 43 46 47 44 01 00                    // .?.{CFGD..

LNot (
    05D4: 92                                               // .

And (SDTL, 0x08))))
            {
                Or (SDTL, 0x08, SDTL) /* \SDTL */

    05D5: 7B 53 44 54 4C 0A 08 00 7D 53 44 54 4C 0A 08 53  // {SDTL...}SDTL..S
    05E5: 44 54 4C                                         // DTL

                OperationRegion (IST0, SystemMemory, DerefOf (
    05E8: 5B 80 49 53 54 30 00 83                          // [.IST0..

Index (SSDT, One)), 
    05F0: 88 53 53 44 54 01 00                             // .SSDT..

DerefOf (
    05F7: 83                                               // .

Index (SSDT, 0x02)))

    05F8: 88 53 53 44 54 0A 02 00                          // .SSDT...

                Load (IST0, HI0) /* \_PR_.CPU0.HI0_ */
            }


    0600: 5B 20 49 53 54 30 48 49 30 5F                    // [ IST0HI0_

            If (
    060A: A0 40 0D 92                                      // .@..

LGreaterEqual (OSYS, 0x07DF))
            {

    060E: 95 4F 53 59 53 0B DF 07                          // .OSYS...

                If (LAnd (And (CFGD, 0x00400000), 
    0616: A0 44 0C 90 7B 43 46 47 44 0C 00 00 40 00 00     // .D..{CFGD...@..

LNot (
    0625: 92                                               // .

And (SDTL, 0x40))))
                {

    0626: 7B 53 44 54 4C 0A 40 00                          // {SDTL.@.

                    If (And (\_SB.OSCP, 0x40))
                    {
                        Or (SDTL, 0x40, SDTL) /* \SDTL */

    062E: A0 4E 06 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 40  // .N.{\._SB_OSCP.@
    063E: 00 7D 53 44 54 4C 0A 40 53 44 54 4C              // .}SDTL.@SDTL

                        OperationRegion (HWP0, SystemMemory, DerefOf (
    064A: 5B 80 48 57 50 30 00 83                          // [.HWP0..

Index (SSDT, 0x0D)), 
    0652: 88 53 53 44 54 0A 0D 00                          // .SSDT...

DerefOf (
    065A: 83                                               // .

Index (SSDT, 0x0E)))
                        Load (HWP0, HW0) /* \_PR_.CPU0.HW0_ */

    065B: 88 53 53 44 54 0A 0E 00 5B 20 48 57 50 30 48 57  // .SSDT...[ HWP0HW
    066B: 30 5F                                            // 0_

                        If (And (CFGD, 0x00800000))
                        {

    066D: A0 2F 7B 43 46 47 44 0C 00 00 80 00 00           // ./{CFGD......

                            OperationRegion (HWPL, SystemMemory, DerefOf (
    067A: 5B 80 48 57 50 4C 00 83                          // [.HWPL..

Index (SSDT, 0x13)), 
    0682: 88 53 53 44 54 0A 13 00                          // .SSDT...

DerefOf (
    068A: 83                                               // .

Index (SSDT, 0x14)))

    068B: 88 53 53 44 54 0A 14 00                          // .SSDT...

                            Load (HWPL, HW2) /* \_PR_.CPU0.HW2_ */
                        }
                    }


    0693: 5B 20 48 57 50 4C 48 57 32 5F                    // [ HWPLHW2_

                    If (And (\_SB.OSCP, 0x20))
                    {

    069D: A0 26 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // .&{\._SB_OSCP. .

                        If (LNot (
    06AD: A0 16 92                                         // ...

And (\_SB.OSCP, 0x40)))
                        {

    06B0: 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 40 00        // {\._SB_OSCP.@.

                            Store (Zero, HWPV) /* \_PR_.HWPV */
                        }
                    }


    06BE: 70 00 48 57 50 56                                // p.HWPV

                    If (And (\_SB.OSCP, 0x40))
                    {

    06C4: A0 16 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 40 00  // ..{\._SB_OSCP.@.

                        Store (0x02, HWPV) /* \_PR_.HWPV */
                    }
                }
            }


    06D4: 70 0A 02 48 57 50 56                             // p..HWPV

            If (LNot (
    06DB: A0 12 92                                         // ...

And (PDC0, 0x1000)))
            {

    06DE: 7B 50 44 43 30 0B 00 10 00                       // {PDC0....

                Store (0x27, IOB2) /* \_PR_.CPU0.IOB2 */
            }


    06E7: 70 0A 27 49 4F 42 32                             // p.'IOB2

            Return (Zero)
        }
    }


    06EE: A4 00                                            // ..

    Scope (\_PR.CPU1)
    {

    06F0: 10 41 1E 5C 2E 5F 50 52 5F 43 50 55 31           // .A.\._PR_CPU1

        Name (HI1, Zero)

    06FD: 08 48 49 31 5F 00                                // .HI1_.

        Name (HC1, Zero)

    0703: 08 48 43 31 5F 00                                // .HC1_.

        Name (HW1, Zero)

    0709: 08 48 57 31 5F 00                                // .HW1_.

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)
        }


    070F: 14 1D 5F 50 44 43 09 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
    071F: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

    072D: 14 22 5F 4F 53 43 0C 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
    073D: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
    074D: 60                                               // `

            Return (Local0)
        }


    074E: A4 60                                            // .`

        Method (GCAP, 1, Serialized)
        {

    0750: 14 42 09 47 43 41 50 09                          // .B.GCAP.

            CreateDWordField (Arg0, Zero, STS1)

    0758: 8A 68 00 53 54 53 31                             // .h.STS1

            CreateDWordField (Arg0, 0x04, CAP1)

    075F: 8A 68 0A 04 43 41 50 31                          // .h..CAP1

            If (LOr (LEqual (STS1, 0x06), 
    0767: A0 12 91 93 53 54 53 31 0A 06                    // ....STS1..

LEqual (STS1, 0x0A)))
            {

    0771: 93 53 54 53 31 0A 0A                             // .STS1..

                Return (Zero)
            }


    0778: A4 00                                            // ..

            If (And (STS1, One))
            {
                And (CAP1, 0x0BFF, CAP1) /* \_PR_.CPU1.GCAP.CAP1 */

    077A: A0 16 7B 53 54 53 31 01 00 7B 43 41 50 31 0B FF  // ..{STS1..{CAP1..
    078A: 0B 43 41 50 31                                   // .CAP1

                Return (Zero)
            }

            Or (And (PDC1, 0x7FFFFFFF), CAP1, PDC1) /* \PDC1 */

    078F: A4 00 7D 7B 50 44 43 31 0C FF FF FF 7F 00 43 41  // ..}{PDC1......CA
    079F: 50 31 50 44 43 31                                // P1PDC1

            If (LEqual (And (PDC1, 0x09), 0x09))
            {
                APPT ()
            }


    07A5: A0 10 93 7B 50 44 43 31 0A 09 00 0A 09 41 50 50  // ...{PDC1.....APP
    07B5: 54                                               // T

            If (And (\_SB.OSCP, 0x20))
            {
                HWPT ()
            }


    07B6: A0 13 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    07C6: 48 57 50 54                                      // HWPT

            If (And (PDC1, 0x18))
            {
                APCT ()
            }

            Store (PDC1, PDC0) /* \PDC0 */

    07CA: A0 0D 7B 50 44 43 31 0A 18 00 41 50 43 54 70 50  // ..{PDC1...APCTpP
    07DA: 44 43 31 50 44 43 30                             // DC1PDC0

            Return (Zero)
        }


    07E1: A4 00                                            // ..

        Method (APCT, 0, Serialized)
        {

    07E3: 14 4A 04 41 50 43 54 08                          // .J.APCT.

            If (LAnd (And (CFGD, 0x7A), 
    07EB: A0 42 04 90 7B 43 46 47 44 0A 7A 00              // .B..{CFGD.z.

LNot (
    07F7: 92                                               // .

And (SDTL, 0x20))))
            {
                Or (SDTL, 0x20, SDTL) /* \SDTL */

    07F8: 7B 53 44 54 4C 0A 20 00 7D 53 44 54 4C 0A 20 53  // {SDTL. .}SDTL. S
    0808: 44 54 4C                                         // DTL

                OperationRegion (CST1, SystemMemory, DerefOf (
    080B: 5B 80 43 53 54 31 00 83                          // [.CST1..

Index (SSDT, 0x0A)), 
    0813: 88 53 53 44 54 0A 0A 00                          // .SSDT...

DerefOf (
    081B: 83                                               // .

Index (SSDT, 0x0B)))

    081C: 88 53 53 44 54 0A 0B 00                          // .SSDT...

                Load (CST1, HC1) /* \_PR_.CPU1.HC1_ */
            }
        }


    0824: 5B 20 43 53 54 31 48 43 31 5F                    // [ CST1HC1_

        Method (APPT, 0, Serialized)
        {

    082E: 14 49 04 41 50 50 54 08                          // .I.APPT.

            If (LAnd (And (CFGD, One), 
    0836: A0 41 04 90 7B 43 46 47 44 01 00                 // .A..{CFGD..

LNot (
    0841: 92                                               // .

And (SDTL, 0x10))))
            {
                Or (SDTL, 0x10, SDTL) /* \SDTL */

    0842: 7B 53 44 54 4C 0A 10 00 7D 53 44 54 4C 0A 10 53  // {SDTL...}SDTL..S
    0852: 44 54 4C                                         // DTL

                OperationRegion (IST1, SystemMemory, DerefOf (
    0855: 5B 80 49 53 54 31 00 83                          // [.IST1..

Index (SSDT, 0x04)), 
    085D: 88 53 53 44 54 0A 04 00                          // .SSDT...

DerefOf (
    0865: 83                                               // .

Index (SSDT, 0x05)))

    0866: 88 53 53 44 54 0A 05 00                          // .SSDT...

                Load (IST1, HI1) /* \_PR_.CPU1.HI1_ */
            }
        }


    086E: 5B 20 49 53 54 31 48 49 31 5F                    // [ IST1HI1_

        Method (HWPT, 0, Serialized)
        {

    0878: 14 49 05 48 57 50 54 08                          // .I.HWPT.

            If (
    0880: A0 41 05 92                                      // .A..

LGreaterEqual (OSYS, 0x07DF))
            {

    0884: 95 4F 53 59 53 0B DF 07                          // .OSYS...

                If (LAnd (And (CFGD, 0x00400000), 
    088C: A0 45 04 90 7B 43 46 47 44 0C 00 00 40 00 00     // .E..{CFGD...@..

LNot (
    089B: 92                                               // .

And (SDTL, 0x80))))
                {
                    Or (SDTL, 0x80, SDTL) /* \SDTL */

    089C: 7B 53 44 54 4C 0A 80 00 7D 53 44 54 4C 0A 80 53  // {SDTL...}SDTL..S
    08AC: 44 54 4C                                         // DTL

                    OperationRegion (HWP1, SystemMemory, DerefOf (
    08AF: 5B 80 48 57 50 31 00 83                          // [.HWP1..

Index (SSDT, 0x10)), 
    08B7: 88 53 53 44 54 0A 10 00                          // .SSDT...

DerefOf (
    08BF: 83                                               // .

Index (SSDT, 0x11)))

    08C0: 88 53 53 44 54 0A 11 00                          // .SSDT...

                    Load (HWP1, HW1) /* \_PR_.CPU1.HW1_ */
                }
            }
        }
    }


    08C8: 5B 20 48 57 50 31 48 57 31 5F                    // [ HWP1HW1_

    Scope (\_PR.CPU2)
    {

    08D2: 10 41 10 5C 2E 5F 50 52 5F 43 50 55 32           // .A.\._PR_CPU2

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)
        }


    08DF: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
    08EF: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

    08FD: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
    090D: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
    091D: 60                                               // `

            Return (Local0)
        }


    091E: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0920: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, STS2)

    0928: 8A 68 00 53 54 53 32                             // .h.STS2

            CreateDWordField (Arg0, 0x04, CAP2)

    092F: 8A 68 0A 04 43 41 50 32                          // .h..CAP2

            If (LOr (LEqual (STS2, 0x06), 
    0937: A0 12 91 93 53 54 53 32 0A 06                    // ....STS2..

LEqual (STS2, 0x0A)))
            {

    0941: 93 53 54 53 32 0A 0A                             // .STS2..

                Return (Zero)
            }


    0948: A4 00                                            // ..

            If (And (STS2, One))
            {
                And (CAP2, 0x0BFF, CAP2) /* \_PR_.CPU2.GCAP.CAP2 */

    094A: A0 16 7B 53 54 53 32 01 00 7B 43 41 50 32 0B FF  // ..{STS2..{CAP2..
    095A: 0B 43 41 50 32                                   // .CAP2

                Return (Zero)
            }

            Or (And (PDC2, 0x7FFFFFFF), CAP2, PDC2) /* \PDC2 */

    095F: A4 00 7D 7B 50 44 43 32 0C FF FF FF 7F 00 43 41  // ..}{PDC2......CA
    096F: 50 32 50 44 43 32                                // P2PDC2

            If (LEqual (And (PDC2, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


    0975: A0 1B 93 7B 50 44 43 32 0A 09 00 0A 09 5C 2F 03  // ...{PDC2.....\/.
    0985: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (\_SB.OSCP, 0x20))
            {
                \_PR.CPU1.HWPT ()
            }


    0991: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    09A1: 5C 2F 03 5F 50 52 5F 43 50 55 31 48 57 50 54     // \/._PR_CPU1HWPT

            If (And (PDC2, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC2, PDC0) /* \PDC0 */

    09B0: A0 18 7B 50 44 43 32 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC2...\/._PR
    09C0: 5F 43 50 55 31 41 50 43 54 70 50 44 43 32 50 44  // _CPU1APCTpPDC2PD
    09D0: 43 30                                            // C0

            Return (Zero)
        }
    }


    09D2: A4 00                                            // ..

    Scope (\_PR.CPU3)
    {

    09D4: 10 41 10 5C 2E 5F 50 52 5F 43 50 55 33           // .A.\._PR_CPU3

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)
        }


    09E1: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
    09F1: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

    09FF: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
    0A0F: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
    0A1F: 60                                               // `

            Return (Local0)
        }


    0A20: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0A22: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, STS3)

    0A2A: 8A 68 00 53 54 53 33                             // .h.STS3

            CreateDWordField (Arg0, 0x04, CAP3)

    0A31: 8A 68 0A 04 43 41 50 33                          // .h..CAP3

            If (LOr (LEqual (STS3, 0x06), 
    0A39: A0 12 91 93 53 54 53 33 0A 06                    // ....STS3..

LEqual (STS3, 0x0A)))
            {

    0A43: 93 53 54 53 33 0A 0A                             // .STS3..

                Return (Zero)
            }


    0A4A: A4 00                                            // ..

            If (And (STS3, One))
            {
                And (CAP3, 0x0BFF, CAP3) /* \_PR_.CPU3.GCAP.CAP3 */

    0A4C: A0 16 7B 53 54 53 33 01 00 7B 43 41 50 33 0B FF  // ..{STS3..{CAP3..
    0A5C: 0B 43 41 50 33                                   // .CAP3

                Return (Zero)
            }

            Or (And (PDC3, 0x7FFFFFFF), CAP3, PDC3) /* \PDC3 */

    0A61: A4 00 7D 7B 50 44 43 33 0C FF FF FF 7F 00 43 41  // ..}{PDC3......CA
    0A71: 50 33 50 44 43 33                                // P3PDC3

            If (LEqual (And (PDC3, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


    0A77: A0 1B 93 7B 50 44 43 33 0A 09 00 0A 09 5C 2F 03  // ...{PDC3.....\/.
    0A87: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (\_SB.OSCP, 0x20))
            {
                \_PR.CPU1.HWPT ()
            }


    0A93: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0AA3: 5C 2F 03 5F 50 52 5F 43 50 55 31 48 57 50 54     // \/._PR_CPU1HWPT

            If (And (PDC3, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC3, PDC0) /* \PDC0 */

    0AB2: A0 18 7B 50 44 43 33 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC3...\/._PR
    0AC2: 5F 43 50 55 31 41 50 43 54 70 50 44 43 33 50 44  // _CPU1APCTpPDC3PD
    0AD2: 43 30                                            // C0

            Return (Zero)
        }
    }


    0AD4: A4 00                                            // ..

    Scope (\_PR.CPU4)
    {

    0AD6: 10 41 10 5C 2E 5F 50 52 5F 43 50 55 34           // .A.\._PR_CPU4

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)
        }


    0AE3: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
    0AF3: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

    0B01: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
    0B11: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
    0B21: 60                                               // `

            Return (Local0)
        }


    0B22: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0B24: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, STS4)

    0B2C: 8A 68 00 53 54 53 34                             // .h.STS4

            CreateDWordField (Arg0, 0x04, CAP4)

    0B33: 8A 68 0A 04 43 41 50 34                          // .h..CAP4

            If (LOr (LEqual (STS4, 0x06), 
    0B3B: A0 12 91 93 53 54 53 34 0A 06                    // ....STS4..

LEqual (STS4, 0x0A)))
            {

    0B45: 93 53 54 53 34 0A 0A                             // .STS4..

                Return (Zero)
            }


    0B4C: A4 00                                            // ..

            If (And (STS4, One))
            {
                And (CAP4, 0x0BFF, CAP4) /* \_PR_.CPU4.GCAP.CAP4 */

    0B4E: A0 16 7B 53 54 53 34 01 00 7B 43 41 50 34 0B FF  // ..{STS4..{CAP4..
    0B5E: 0B 43 41 50 34                                   // .CAP4

                Return (Zero)
            }

            Or (And (PDC4, 0x7FFFFFFF), CAP4, PDC4) /* \PDC4 */

    0B63: A4 00 7D 7B 50 44 43 34 0C FF FF FF 7F 00 43 41  // ..}{PDC4......CA
    0B73: 50 34 50 44 43 34                                // P4PDC4

            If (LEqual (And (PDC4, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


    0B79: A0 1B 93 7B 50 44 43 34 0A 09 00 0A 09 5C 2F 03  // ...{PDC4.....\/.
    0B89: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (\_SB.OSCP, 0x20))
            {
                \_PR.CPU1.HWPT ()
            }


    0B95: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0BA5: 5C 2F 03 5F 50 52 5F 43 50 55 31 48 57 50 54     // \/._PR_CPU1HWPT

            If (And (PDC4, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC4, PDC0) /* \PDC0 */

    0BB4: A0 18 7B 50 44 43 34 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC4...\/._PR
    0BC4: 5F 43 50 55 31 41 50 43 54 70 50 44 43 34 50 44  // _CPU1APCTpPDC4PD
    0BD4: 43 30                                            // C0

            Return (Zero)
        }
    }


    0BD6: A4 00                                            // ..

    Scope (\_PR.CPU5)
    {

    0BD8: 10 41 10 5C 2E 5F 50 52 5F 43 50 55 35           // .A.\._PR_CPU5

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)
        }


    0BE5: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
    0BF5: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

    0C03: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
    0C13: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
    0C23: 60                                               // `

            Return (Local0)
        }


    0C24: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0C26: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, STS5)

    0C2E: 8A 68 00 53 54 53 35                             // .h.STS5

            CreateDWordField (Arg0, 0x04, CAP5)

    0C35: 8A 68 0A 04 43 41 50 35                          // .h..CAP5

            If (LOr (LEqual (STS5, 0x06), 
    0C3D: A0 12 91 93 53 54 53 35 0A 06                    // ....STS5..

LEqual (STS5, 0x0A)))
            {

    0C47: 93 53 54 53 35 0A 0A                             // .STS5..

                Return (Zero)
            }


    0C4E: A4 00                                            // ..

            If (And (STS5, One))
            {
                And (CAP5, 0x0BFF, CAP5) /* \_PR_.CPU5.GCAP.CAP5 */

    0C50: A0 16 7B 53 54 53 35 01 00 7B 43 41 50 35 0B FF  // ..{STS5..{CAP5..
    0C60: 0B 43 41 50 35                                   // .CAP5

                Return (Zero)
            }

            Or (And (PDC5, 0x7FFFFFFF), CAP5, PDC5) /* \PDC5 */

    0C65: A4 00 7D 7B 50 44 43 35 0C FF FF FF 7F 00 43 41  // ..}{PDC5......CA
    0C75: 50 35 50 44 43 35                                // P5PDC5

            If (LEqual (And (PDC5, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


    0C7B: A0 1B 93 7B 50 44 43 35 0A 09 00 0A 09 5C 2F 03  // ...{PDC5.....\/.
    0C8B: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (\_SB.OSCP, 0x20))
            {
                \_PR.CPU1.HWPT ()
            }


    0C97: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0CA7: 5C 2F 03 5F 50 52 5F 43 50 55 31 48 57 50 54     // \/._PR_CPU1HWPT

            If (And (PDC5, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC5, PDC0) /* \PDC0 */

    0CB6: A0 18 7B 50 44 43 35 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC5...\/._PR
    0CC6: 5F 43 50 55 31 41 50 43 54 70 50 44 43 35 50 44  // _CPU1APCTpPDC5PD
    0CD6: 43 30                                            // C0

            Return (Zero)
        }
    }


    0CD8: A4 00                                            // ..

    Scope (\_PR.CPU6)
    {

    0CDA: 10 41 10 5C 2E 5F 50 52 5F 43 50 55 36           // .A.\._PR_CPU6

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)
        }


    0CE7: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
    0CF7: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

    0D05: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
    0D15: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
    0D25: 60                                               // `

            Return (Local0)
        }


    0D26: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0D28: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, STS6)

    0D30: 8A 68 00 53 54 53 36                             // .h.STS6

            CreateDWordField (Arg0, 0x04, CAP6)

    0D37: 8A 68 0A 04 43 41 50 36                          // .h..CAP6

            If (LOr (LEqual (STS6, 0x06), 
    0D3F: A0 12 91 93 53 54 53 36 0A 06                    // ....STS6..

LEqual (STS6, 0x0A)))
            {

    0D49: 93 53 54 53 36 0A 0A                             // .STS6..

                Return (Zero)
            }


    0D50: A4 00                                            // ..

            If (And (STS6, One))
            {
                And (CAP6, 0x0BFF, CAP6) /* \_PR_.CPU6.GCAP.CAP6 */

    0D52: A0 16 7B 53 54 53 36 01 00 7B 43 41 50 36 0B FF  // ..{STS6..{CAP6..
    0D62: 0B 43 41 50 36                                   // .CAP6

                Return (Zero)
            }

            Or (And (PDC6, 0x7FFFFFFF), CAP6, PDC6) /* \PDC6 */

    0D67: A4 00 7D 7B 50 44 43 36 0C FF FF FF 7F 00 43 41  // ..}{PDC6......CA
    0D77: 50 36 50 44 43 36                                // P6PDC6

            If (LEqual (And (PDC6, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


    0D7D: A0 1B 93 7B 50 44 43 36 0A 09 00 0A 09 5C 2F 03  // ...{PDC6.....\/.
    0D8D: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (\_SB.OSCP, 0x20))
            {
                \_PR.CPU1.HWPT ()
            }


    0D99: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0DA9: 5C 2F 03 5F 50 52 5F 43 50 55 31 48 57 50 54     // \/._PR_CPU1HWPT

            If (And (PDC6, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC6, PDC0) /* \PDC0 */

    0DB8: A0 18 7B 50 44 43 36 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC6...\/._PR
    0DC8: 5F 43 50 55 31 41 50 43 54 70 50 44 43 36 50 44  // _CPU1APCTpPDC6PD
    0DD8: 43 30                                            // C0

            Return (Zero)
        }
    }


    0DDA: A4 00                                            // ..

    Scope (\_PR.CPU7)
    {

    0DDC: 10 41 10 5C 2E 5F 50 52 5F 43 50 55 37           // .A.\._PR_CPU7

        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)
        }


    0DE9: 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43  // .._PDC.p\/._PR_C
    0DF9: 50 55 30 43 50 44 43 68 60 47 43 41 50 60        // PU0CPDCh`GCAP`

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)

    0E07: 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43  // ."_OSC.p\/._PR_C
    0E17: 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // PU0COSChijk`GCAP
    0E27: 60                                               // `

            Return (Local0)
        }


    0E28: A4 60                                            // .`

        Method (GCAP, 1, NotSerialized)
        {

    0E2A: 14 43 0B 47 43 41 50 01                          // .C.GCAP.

            CreateDWordField (Arg0, Zero, STS7)

    0E32: 8A 68 00 53 54 53 37                             // .h.STS7

            CreateDWordField (Arg0, 0x04, CAP7)

    0E39: 8A 68 0A 04 43 41 50 37                          // .h..CAP7

            If (LOr (LEqual (STS7, 0x06), 
    0E41: A0 12 91 93 53 54 53 37 0A 06                    // ....STS7..

LEqual (STS7, 0x0A)))
            {

    0E4B: 93 53 54 53 37 0A 0A                             // .STS7..

                Return (Zero)
            }


    0E52: A4 00                                            // ..

            If (And (STS7, One))
            {
                And (CAP7, 0x0BFF, CAP7) /* \_PR_.CPU7.GCAP.CAP7 */

    0E54: A0 16 7B 53 54 53 37 01 00 7B 43 41 50 37 0B FF  // ..{STS7..{CAP7..
    0E64: 0B 43 41 50 37                                   // .CAP7

                Return (Zero)
            }

            Or (And (PDC7, 0x7FFFFFFF), CAP7, PDC7) /* \PDC7 */

    0E69: A4 00 7D 7B 50 44 43 37 0C FF FF FF 7F 00 43 41  // ..}{PDC7......CA
    0E79: 50 37 50 44 43 37                                // P7PDC7

            If (LEqual (And (PDC7, 0x09), 0x09))
            {
                \_PR.CPU1.APPT ()
            }


    0E7F: A0 1B 93 7B 50 44 43 37 0A 09 00 0A 09 5C 2F 03  // ...{PDC7.....\/.
    0E8F: 5F 50 52 5F 43 50 55 31 41 50 50 54              // _PR_CPU1APPT

            If (And (\_SB.OSCP, 0x20))
            {
                \_PR.CPU1.HWPT ()
            }


    0E9B: A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00  // ..{\._SB_OSCP. .
    0EAB: 5C 2F 03 5F 50 52 5F 43 50 55 31 48 57 50 54     // \/._PR_CPU1HWPT

            If (And (PDC7, 0x18))
            {
                \_PR.CPU1.APCT ()
            }

            Store (PDC7, PDC0) /* \PDC0 */

    0EBA: A0 18 7B 50 44 43 37 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC7...\/._PR
    0ECA: 5F 43 50 55 31 41 50 43 54 70 50 44 43 37 50 44  // _CPU1APCTpPDC7PD
    0EDA: 43 30                                            // C0

            Return (Zero)
        }
    }
}



Table Header:
Table Body (Length 0xEDE)

/*
Raw Table Data: Length 3806 (0xEDE)

    0000: 53 53 44 54 DE 0E 00 00 02 56 4C 45 4E 4F 56 4F  // SSDT.....VLENOVO
    0010: 43 42 2D 30 31 20 20 20 01 00 00 00 41 43 50 49  // CB-01   ....ACPI
    0020: 00 00 04 00 A0 4F 07 00 15 5C 2E 5F 53 42 5F 4F  // .....O...\._SB_O
    0030: 53 43 50 01 00 15 5C 2E 5F 50 52 5F 43 50 55 30  // SCP...\._PR_CPU0
    0040: 06 00 15 5C 2E 5F 50 52 5F 43 50 55 31 06 00 15  // ...\._PR_CPU1...
    0050: 5C 2E 5F 50 52 5F 43 50 55 32 06 00 15 5C 2E 5F  // \._PR_CPU2...\._
    0060: 50 52 5F 43 50 55 33 06 00 15 5C 2E 5F 50 52 5F  // PR_CPU3...\._PR_
    0070: 43 50 55 34 06 00 15 5C 2E 5F 50 52 5F 43 50 55  // CPU4...\._PR_CPU
    0080: 35 06 00 15 5C 2E 5F 50 52 5F 43 50 55 36 06 00  // 5...\._PR_CPU6..
    0090: 15 5C 2E 5F 50 52 5F 43 50 55 37 06 00 15 4F 53  // .\._PR_CPU7...OS
    00A0: 59 53 00 00 10 48 0F 5C 00 08 53 53 44 54 12 4F  // YS...H.\..SSDT.O
    00B0: 08 15 0D 43 50 55 30 49 53 54 20 00 0C 18 E0 67  // ...CPU0IST ....g
    00C0: 8C 0C 51 06 00 00 0D 41 50 49 53 54 20 20 20 00  // ..Q....APIST   .
    00D0: 0C 18 D0 67 8C 0C 5C 06 00 00 0D 43 50 55 30 43  // ...g..\....CPU0C
    00E0: 53 54 20 00 0C 98 D8 67 8C 0C FF 03 00 00 0D 41  // ST ....g.......A
    00F0: 50 43 53 54 20 20 20 00 0C D8 DD 67 8C 0C 8A 01  // PCST   ....g....
    0100: 00 00 0D 43 50 55 30 48 57 50 20 00 0C D8 ED 67  // ...CPU0HWP ....g
    0110: 8C 0C 15 01 00 00 0D 41 50 48 57 50 20 20 20 00  // .......APHWP   .
    0120: 0C 98 E8 67 8C 0C 97 01 00 00 0D 48 57 50 4C 56  // ...g.......HWPLV
    0130: 54 20 20 00 0C 58 D5 78 8C 0C A4 01 00 00 08 5C  // T  ..X.x.......\
    0140: 50 44 43 30 0C 00 00 00 80 08 5C 50 44 43 31 0C  // PDC0......\PDC1.
    0150: 00 00 00 80 08 5C 50 44 43 32 0C 00 00 00 80 08  // .....\PDC2......
    0160: 5C 50 44 43 33 0C 00 00 00 80 08 5C 50 44 43 34  // \PDC3......\PDC4
    0170: 0C 00 00 00 80 08 5C 50 44 43 35 0C 00 00 00 80  // ......\PDC5.....
    0180: 08 5C 50 44 43 36 0C 00 00 00 80 08 5C 50 44 43  // .\PDC6......\PDC
    0190: 37 0C 00 00 00 80 08 5C 53 44 54 4C 00 10 45 1B  // 7......\SDTL..E.
    01A0: 5C 5F 50 52 5F 08 43 54 50 43 00 5B 80 50 4E 56  // \_PR_.CTPC.[.PNV
    01B0: 53 00 0C 00 70 86 73 0B 6C 00 5B 81 47 14 50 4E  // S...p.s.l.[.G.PN
    01C0: 56 53 10 50 47 52 56 08 43 46 47 44 20 00 08 41  // VS.PGRV.CFGD ..A
    01D0: 43 52 54 08 41 50 53 56 08 41 41 43 30 08 43 50  // CRT.APSV.AAC0.CP
    01E0: 49 44 20 43 50 50 43 08 43 4C 56 4C 08 43 42 4D  // ID CPPC.CLVL.CBM
    01F0: 49 08 50 4C 31 30 10 50 4C 32 30 10 50 4C 57 30  // I.PL10.PL20.PLW0
    0200: 08 43 54 43 30 08 54 41 52 30 08 50 50 43 30 08  // .CTC0.TAR0.PPC0.
    0210: 50 4C 31 31 10 50 4C 32 31 10 50 4C 57 31 08 43  // PL11.PL21.PLW1.C
    0220: 54 43 31 08 54 41 52 31 08 50 50 43 31 08 50 4C  // TC1.TAR1.PPC1.PL
    0230: 31 32 10 50 4C 32 32 10 50 4C 57 32 08 43 54 43  // 12.PL22.PLW2.CTC
    0240: 32 08 54 41 52 32 08 50 50 43 32 08 43 33 4D 57  // 2.TAR2.PPC2.C3MW
    0250: 08 43 36 4D 57 08 43 37 4D 57 08 43 44 4D 57 08  // .C6MW.C7MW.CDMW.
    0260: 43 33 4C 54 10 43 36 4C 54 10 43 37 4C 54 10 43  // C3LT.C6LT.C7LT.C
    0270: 44 4C 54 10 43 44 4C 56 10 43 44 50 57 10 4D 50  // DLT.CDLV.CDPW.MP
    0280: 4D 46 08 44 54 53 45 08 44 54 53 31 08 44 54 53  // MF.DTSE.DTS1.DTS
    0290: 32 08 44 54 53 46 08 50 44 54 53 08 50 4B 47 41  // 2.DTSF.PDTS.PKGA
    02A0: 08 44 54 53 33 08 44 54 53 34 08 42 47 4D 41 40  // .DTS3.DTS4.BGMA@
    02B0: 04 42 47 4D 53 08 42 47 49 41 10 42 47 49 4C 10  // .BGMS.BGIA.BGIL.
    02C0: 44 53 49 41 10 44 53 49 4C 08 44 53 41 45 08 45  // DSIA.DSIL.DSAE.E
    02D0: 50 43 53 08 45 4D 4E 41 40 04 45 4C 4E 47 40 04  // PCS.EMNA@.ELNG@.
    02E0: 48 57 50 56 08 48 57 50 41 10 48 57 50 4C 10 50  // HWPV.HWPA.HWPL.P
    02F0: 4F 57 53 08 48 44 43 45 08 48 57 50 49 08 44 54  // OWS.HDCE.HWPI.DT
    0300: 53 49 08 5B 80 49 4F 5F 44 01 5C 2E 5F 50 52 5F  // SI.[.IO_D.\._PR_
    0310: 44 53 49 41 5C 2E 5F 50 52 5F 44 53 49 4C 5B 81  // DSIA\._PR_DSIL[.
    0320: 0B 49 4F 5F 44 01 54 52 50 44 08 5B 80 49 4F 5F  // .IO_D.TRPD.[.IO_
    0330: 50 01 5C 2E 5F 50 52 5F 42 47 49 41 5C 2E 5F 50  // P.\._PR_BGIA\._P
    0340: 52 5F 42 47 49 4C 5B 81 0B 49 4F 5F 50 01 54 52  // R_BGIL[..IO_P.TR
    0350: 50 46 08 10 4C 39 5C 2E 5F 50 52 5F 43 50 55 30  // PF..L9\._PR_CPU0
    0360: 08 48 49 30 5F 00 08 48 43 30 5F 00 08 48 57 30  // .HI0_..HC0_..HW0
    0370: 5F 00 08 48 57 32 5F 00 14 12 5F 50 44 43 09 70  // _..HW2_..._PDC.p
    0380: 43 50 44 43 68 60 47 43 41 50 60 14 17 5F 4F 53  // CPDCh`GCAP`.._OS
    0390: 43 0C 70 43 4F 53 43 68 69 6A 6B 60 47 43 41 50  // C.pCOSChijk`GCAP
    03A0: 60 A4 60 08 53 54 53 30 11 07 0A 04 00 00 00 00  // `.`.STS0........
    03B0: 14 4B 05 43 50 44 43 09 8A 68 00 52 45 56 53 8A  // .K.CPDC..h.REVS.
    03C0: 68 0A 04 53 49 5A 45 70 87 68 60 70 74 60 0A 08  // h..SIZEp.h`pt`..
    03D0: 00 61 5B 13 68 0A 40 77 61 0A 08 00 54 45 4D 50  // .a[.h.@wa...TEMP
    03E0: 73 53 54 53 30 54 45 4D 50 62 A4 43 4F 53 43 11  // sSTS0TEMPb.COSC.
    03F0: 13 0A 10 16 A6 77 40 0C 29 BE 47 9E BD D8 70 58  // .....w@.).G...pX
    0400: 71 39 53 52 45 56 53 53 49 5A 45 62 08 55 49 44  // q9SREVSSIZEb.UID
    0410: 30 11 13 0A 10 16 A6 77 40 0C 29 BE 47 9E BD D8  // 0......w@.).G...
    0420: 70 58 71 39 53 5B 80 53 4D 49 50 01 0A B2 01 5B  // pXq9S[.SMIP....[
    0430: 81 0B 53 4D 49 50 01 49 4F 42 32 08 14 40 0E 43  // ..SMIP.IOB2..@.C
    0440: 4F 53 43 0C 8A 6B 00 53 54 53 30 8A 6B 0A 04 43  // OSC..k.STS0.k..C
    0450: 41 50 30 8A 68 00 49 49 44 30 8A 68 0A 04 49 49  // AP0.h.IID0.h..II
    0460: 44 31 8A 68 0A 08 49 49 44 32 8A 68 0A 0C 49 49  // D1.h..IID2.h..II
    0470: 44 33 8A 55 49 44 30 00 45 49 44 30 8A 55 49 44  // D3.UID0.EID0.UID
    0480: 30 0A 04 45 49 44 31 8A 55 49 44 30 0A 08 45 49  // 0..EID1.UID0..EI
    0490: 44 32 8A 55 49 44 30 0A 0C 45 49 44 33 A0 32 92  // D2.UID0..EID3.2.
    04A0: 90 90 93 49 49 44 30 45 49 44 30 93 49 49 44 31  // ...IID0EID0.IID1
    04B0: 45 49 44 31 90 93 49 49 44 32 45 49 44 32 93 49  // EID1..IID2EID2.I
    04C0: 49 44 33 45 49 44 33 70 0A 06 53 54 53 30 A4 6B  // ID3EID3p..STS0.k
    04D0: A0 0E 92 93 69 01 70 0A 0A 53 54 53 30 A4 6B A0  // ....i.p..STS0.k.
    04E0: 10 92 92 95 6A 0A 02 70 0A 02 53 54 53 30 A4 6B  // ....j..p..STS0.k
    04F0: A0 2A 80 7B 53 54 53 30 01 00 00 A0 16 7B 43 41  // .*.{STS0.....{CA
    0500: 50 30 0B 00 20 00 70 00 5C 2E 5F 50 52 5F 48 44  // P0.. .p.\._PR_HD
    0510: 43 45 A1 08 70 0A 28 49 4F 42 32 A4 6B 14 42 1D  // CE..p.(IOB2.k.B.
    0520: 47 43 41 50 09 8A 68 00 53 54 53 30 8A 68 0A 04  // GCAP..h.STS0.h..
    0530: 43 41 50 30 A0 12 91 93 53 54 53 30 0A 06 93 53  // CAP0....STS0...S
    0540: 54 53 30 0A 0A A4 00 A0 16 7B 53 54 53 30 01 00  // TS0......{STS0..
    0550: 7B 43 41 50 30 0B FF 0B 43 41 50 30 A4 00 7D 7B  // {CAP0...CAP0..}{
    0560: 50 44 43 30 0C FF FF FF 7F 00 43 41 50 30 50 44  // PDC0......CAP0PD
    0570: 43 30 A0 47 05 7B 43 46 47 44 0A 7A 00 A0 4C 04  // C0.G.{CFGD.z..L.
    0580: 90 90 7B 43 46 47 44 0B 00 02 00 7B 50 44 43 30  // ..{CFGD....{PDC0
    0590: 0A 18 00 92 7B 53 44 54 4C 0A 02 00 7D 53 44 54  // ....{SDTL...}SDT
    05A0: 4C 0A 02 53 44 54 4C 5B 80 43 53 54 30 00 83 88  // L..SDTL[.CST0...
    05B0: 53 53 44 54 0A 07 00 83 88 53 53 44 54 0A 08 00  // SSDT.....SSDT...
    05C0: 5B 20 43 53 54 30 48 43 30 5F A0 3F 90 7B 43 46  // [ CST0HC0_.?.{CF
    05D0: 47 44 01 00 92 7B 53 44 54 4C 0A 08 00 7D 53 44  // GD...{SDTL...}SD
    05E0: 54 4C 0A 08 53 44 54 4C 5B 80 49 53 54 30 00 83  // TL..SDTL[.IST0..
    05F0: 88 53 53 44 54 01 00 83 88 53 53 44 54 0A 02 00  // .SSDT....SSDT...
    0600: 5B 20 49 53 54 30 48 49 30 5F A0 40 0D 92 95 4F  // [ IST0HI0_.@...O
    0610: 53 59 53 0B DF 07 A0 44 0C 90 7B 43 46 47 44 0C  // SYS....D..{CFGD.
    0620: 00 00 40 00 00 92 7B 53 44 54 4C 0A 40 00 A0 4E  // ..@...{SDTL.@..N
    0630: 06 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 40 00 7D  // .{\._SB_OSCP.@.}
    0640: 53 44 54 4C 0A 40 53 44 54 4C 5B 80 48 57 50 30  // SDTL.@SDTL[.HWP0
    0650: 00 83 88 53 53 44 54 0A 0D 00 83 88 53 53 44 54  // ...SSDT.....SSDT
    0660: 0A 0E 00 5B 20 48 57 50 30 48 57 30 5F A0 2F 7B  // ...[ HWP0HW0_./{
    0670: 43 46 47 44 0C 00 00 80 00 00 5B 80 48 57 50 4C  // CFGD......[.HWPL
    0680: 00 83 88 53 53 44 54 0A 13 00 83 88 53 53 44 54  // ...SSDT.....SSDT
    0690: 0A 14 00 5B 20 48 57 50 4C 48 57 32 5F A0 26 7B  // ...[ HWPLHW2_.&{
    06A0: 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20 00 A0 16 92  // \._SB_OSCP. ....
    06B0: 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 40 00 70 00  // {\._SB_OSCP.@.p.
    06C0: 48 57 50 56 A0 16 7B 5C 2E 5F 53 42 5F 4F 53 43  // HWPV..{\._SB_OSC
    06D0: 50 0A 40 00 70 0A 02 48 57 50 56 A0 12 92 7B 50  // P.@.p..HWPV...{P
    06E0: 44 43 30 0B 00 10 00 70 0A 27 49 4F 42 32 A4 00  // DC0....p.'IOB2..
    06F0: 10 41 1E 5C 2E 5F 50 52 5F 43 50 55 31 08 48 49  // .A.\._PR_CPU1.HI
    0700: 31 5F 00 08 48 43 31 5F 00 08 48 57 31 5F 00 14  // 1_..HC1_..HW1_..
    0710: 1D 5F 50 44 43 09 70 5C 2F 03 5F 50 52 5F 43 50  // ._PDC.p\/._PR_CP
    0720: 55 30 43 50 44 43 68 60 47 43 41 50 60 14 22 5F  // U0CPDCh`GCAP`."_
    0730: 4F 53 43 0C 70 5C 2F 03 5F 50 52 5F 43 50 55 30  // OSC.p\/._PR_CPU0
    0740: 43 4F 53 43 68 69 6A 6B 60 47 43 41 50 60 A4 60  // COSChijk`GCAP`.`
    0750: 14 42 09 47 43 41 50 09 8A 68 00 53 54 53 31 8A  // .B.GCAP..h.STS1.
    0760: 68 0A 04 43 41 50 31 A0 12 91 93 53 54 53 31 0A  // h..CAP1....STS1.
    0770: 06 93 53 54 53 31 0A 0A A4 00 A0 16 7B 53 54 53  // ..STS1......{STS
    0780: 31 01 00 7B 43 41 50 31 0B FF 0B 43 41 50 31 A4  // 1..{CAP1...CAP1.
    0790: 00 7D 7B 50 44 43 31 0C FF FF FF 7F 00 43 41 50  // .}{PDC1......CAP
    07A0: 31 50 44 43 31 A0 10 93 7B 50 44 43 31 0A 09 00  // 1PDC1...{PDC1...
    07B0: 0A 09 41 50 50 54 A0 13 7B 5C 2E 5F 53 42 5F 4F  // ..APPT..{\._SB_O
    07C0: 53 43 50 0A 20 00 48 57 50 54 A0 0D 7B 50 44 43  // SCP. .HWPT..{PDC
    07D0: 31 0A 18 00 41 50 43 54 70 50 44 43 31 50 44 43  // 1...APCTpPDC1PDC
    07E0: 30 A4 00 14 4A 04 41 50 43 54 08 A0 42 04 90 7B  // 0...J.APCT..B..{
    07F0: 43 46 47 44 0A 7A 00 92 7B 53 44 54 4C 0A 20 00  // CFGD.z..{SDTL. .
    0800: 7D 53 44 54 4C 0A 20 53 44 54 4C 5B 80 43 53 54  // }SDTL. SDTL[.CST
    0810: 31 00 83 88 53 53 44 54 0A 0A 00 83 88 53 53 44  // 1...SSDT.....SSD
    0820: 54 0A 0B 00 5B 20 43 53 54 31 48 43 31 5F 14 49  // T...[ CST1HC1_.I
    0830: 04 41 50 50 54 08 A0 41 04 90 7B 43 46 47 44 01  // .APPT..A..{CFGD.
    0840: 00 92 7B 53 44 54 4C 0A 10 00 7D 53 44 54 4C 0A  // ..{SDTL...}SDTL.
    0850: 10 53 44 54 4C 5B 80 49 53 54 31 00 83 88 53 53  // .SDTL[.IST1...SS
    0860: 44 54 0A 04 00 83 88 53 53 44 54 0A 05 00 5B 20  // DT.....SSDT...[ 
    0870: 49 53 54 31 48 49 31 5F 14 49 05 48 57 50 54 08  // IST1HI1_.I.HWPT.
    0880: A0 41 05 92 95 4F 53 59 53 0B DF 07 A0 45 04 90  // .A...OSYS....E..
    0890: 7B 43 46 47 44 0C 00 00 40 00 00 92 7B 53 44 54  // {CFGD...@...{SDT
    08A0: 4C 0A 80 00 7D 53 44 54 4C 0A 80 53 44 54 4C 5B  // L...}SDTL..SDTL[
    08B0: 80 48 57 50 31 00 83 88 53 53 44 54 0A 10 00 83  // .HWP1...SSDT....
    08C0: 88 53 53 44 54 0A 11 00 5B 20 48 57 50 31 48 57  // .SSDT...[ HWP1HW
    08D0: 31 5F 10 41 10 5C 2E 5F 50 52 5F 43 50 55 32 14  // 1_.A.\._PR_CPU2.
    08E0: 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F 43 50  // ._PDC.p\/._PR_CP
    08F0: 55 30 43 50 44 43 68 60 47 43 41 50 60 14 22 5F  // U0CPDCh`GCAP`."_
    0900: 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43 50 55 30  // OSC.p\/._PR_CPU0
    0910: 43 4F 53 43 68 69 6A 6B 60 47 43 41 50 60 A4 60  // COSChijk`GCAP`.`
    0920: 14 43 0B 47 43 41 50 01 8A 68 00 53 54 53 32 8A  // .C.GCAP..h.STS2.
    0930: 68 0A 04 43 41 50 32 A0 12 91 93 53 54 53 32 0A  // h..CAP2....STS2.
    0940: 06 93 53 54 53 32 0A 0A A4 00 A0 16 7B 53 54 53  // ..STS2......{STS
    0950: 32 01 00 7B 43 41 50 32 0B FF 0B 43 41 50 32 A4  // 2..{CAP2...CAP2.
    0960: 00 7D 7B 50 44 43 32 0C FF FF FF 7F 00 43 41 50  // .}{PDC2......CAP
    0970: 32 50 44 43 32 A0 1B 93 7B 50 44 43 32 0A 09 00  // 2PDC2...{PDC2...
    0980: 0A 09 5C 2F 03 5F 50 52 5F 43 50 55 31 41 50 50  // ..\/._PR_CPU1APP
    0990: 54 A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50 0A 20  // T..{\._SB_OSCP. 
    09A0: 00 5C 2F 03 5F 50 52 5F 43 50 55 31 48 57 50 54  // .\/._PR_CPU1HWPT
    09B0: A0 18 7B 50 44 43 32 0A 18 00 5C 2F 03 5F 50 52  // ..{PDC2...\/._PR
    09C0: 5F 43 50 55 31 41 50 43 54 70 50 44 43 32 50 44  // _CPU1APCTpPDC2PD
    09D0: 43 30 A4 00 10 41 10 5C 2E 5F 50 52 5F 43 50 55  // C0...A.\._PR_CPU
    09E0: 33 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50 52 5F  // 3.._PDC.p\/._PR_
    09F0: 43 50 55 30 43 50 44 43 68 60 47 43 41 50 60 14  // CPU0CPDCh`GCAP`.
    0A00: 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F 43 50  // "_OSC.p\/._PR_CP
    0A10: 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41 50 60  // U0COSChijk`GCAP`
    0A20: A4 60 14 43 0B 47 43 41 50 01 8A 68 00 53 54 53  // .`.C.GCAP..h.STS
    0A30: 33 8A 68 0A 04 43 41 50 33 A0 12 91 93 53 54 53  // 3.h..CAP3....STS
    0A40: 33 0A 06 93 53 54 53 33 0A 0A A4 00 A0 16 7B 53  // 3...STS3......{S
    0A50: 54 53 33 01 00 7B 43 41 50 33 0B FF 0B 43 41 50  // TS3..{CAP3...CAP
    0A60: 33 A4 00 7D 7B 50 44 43 33 0C FF FF FF 7F 00 43  // 3..}{PDC3......C
    0A70: 41 50 33 50 44 43 33 A0 1B 93 7B 50 44 43 33 0A  // AP3PDC3...{PDC3.
    0A80: 09 00 0A 09 5C 2F 03 5F 50 52 5F 43 50 55 31 41  // ....\/._PR_CPU1A
    0A90: 50 50 54 A0 1E 7B 5C 2E 5F 53 42 5F 4F 53 43 50  // PPT..{\._SB_OSCP
    0AA0: 0A 20 00 5C 2F 03 5F 50 52 5F 43 50 55 31 48 57  // . .\/._PR_CPU1HW
    0AB0: 50 54 A0 18 7B 50 44 43 33 0A 18 00 5C 2F 03 5F  // PT..{PDC3...\/._
    0AC0: 50 52 5F 43 50 55 31 41 50 43 54 70 50 44 43 33  // PR_CPU1APCTpPDC3
    0AD0: 50 44 43 30 A4 00 10 41 10 5C 2E 5F 50 52 5F 43  // PDC0...A.\._PR_C
    0AE0: 50 55 34 14 1D 5F 50 44 43 01 70 5C 2F 03 5F 50  // PU4.._PDC.p\/._P
    0AF0: 52 5F 43 50 55 30 43 50 44 43 68 60 47 43 41 50  // R_CPU0CPDCh`GCAP
    0B00: 60 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50 52 5F  // `."_OSC.p\/._PR_
    0B10: 43 50 55 30 43 4F 53 43 68 69 6A 6B 60 47 43 41  // CPU0COSChijk`GCA
    0B20: 50 60 A4 60 14 43 0B 47 43 41 50 01 8A 68 00 53  // P`.`.C.GCAP..h.S
    0B30: 54 53 34 8A 68 0A 04 43 41 50 34 A0 12 91 93 53  // TS4.h..CAP4....S
    0B40: 54 53 34 0A 06 93 53 54 53 34 0A 0A A4 00 A0 16  // TS4...STS4......
    0B50: 7B 53 54 53 34 01 00 7B 43 41 50 34 0B FF 0B 43  // {STS4..{CAP4...C
    0B60: 41 50 34 A4 00 7D 7B 50 44 43 34 0C FF FF FF 7F  // AP4..}{PDC4.....
    0B70: 00 43 41 50 34 50 44 43 34 A0 1B 93 7B 50 44 43  // .CAP4PDC4...{PDC
    0B80: 34 0A 09 00 0A 09 5C 2F 03 5F 50 52 5F 43 50 55  // 4.....\/._PR_CPU
    0B90: 31 41 50 50 54 A0 1E 7B 5C 2E 5F 53 42 5F 4F 53  // 1APPT..{\._SB_OS
    0BA0: 43 50 0A 20 00 5C 2F 03 5F 50 52 5F 43 50 55 31  // CP. .\/._PR_CPU1
    0BB0: 48 57 50 54 A0 18 7B 50 44 43 34 0A 18 00 5C 2F  // HWPT..{PDC4...\/
    0BC0: 03 5F 50 52 5F 43 50 55 31 41 50 43 54 70 50 44  // ._PR_CPU1APCTpPD
    0BD0: 43 34 50 44 43 30 A4 00 10 41 10 5C 2E 5F 50 52  // C4PDC0...A.\._PR
    0BE0: 5F 43 50 55 35 14 1D 5F 50 44 43 01 70 5C 2F 03  // _CPU5.._PDC.p\/.
    0BF0: 5F 50 52 5F 43 50 55 30 43 50 44 43 68 60 47 43  // _PR_CPU0CPDCh`GC
    0C00: 41 50 60 14 22 5F 4F 53 43 04 70 5C 2F 03 5F 50  // AP`."_OSC.p\/._P
    0C10: 52 5F 43 50 55 30 43 4F 53 43 68 69 6A 6B 60 47  // R_CPU0COSChijk`G
    0C20: 43 41 50 60 A4 60 14 43 0B 47 43 41 50 01 8A 68  // CAP`.`.C.GCAP..h
    0C30: 00 53 54 53 35 8A 68 0A 04 43 41 50 35 A0 12 91  // .STS5.h..CAP5...
    0C40: 93 53 54 53 35 0A 06 93 53 54 53 35 0A 0A A4 00  // .STS5...STS5....
    0C50: A0 16 7B 53 54 53 35 01 00 7B 43 41 50 35 0B FF  // ..{STS5..{CAP5..
    0C60: 0B 43 41 50 35 A4 00 7D 7B 50 44 43 35 0C FF FF  // .CAP5..}{PDC5...
    0C70: FF 7F 00 43 41 50 35 50 44 43 35 A0 1B 93 7B 50  // ...CAP5PDC5...{P
    0C80: 44 43 35 0A 09 00 0A 09 5C 2F 03 5F 50 52 5F 43  // DC5.....\/._PR_C
    0C90: 50 55 31 41 50 50 54 A0 1E 7B 5C 2E 5F 53 42 5F  // PU1APPT..{\._SB_
    0CA0: 4F 53 43 50 0A 20 00 5C 2F 03 5F 50 52 5F 43 50  // OSCP. .\/._PR_CP
    0CB0: 55 31 48 57 50 54 A0 18 7B 50 44 43 35 0A 18 00  // U1HWPT..{PDC5...
    0CC0: 5C 2F 03 5F 50 52 5F 43 50 55 31 41 50 43 54 70  // \/._PR_CPU1APCTp
    0CD0: 50 44 43 35 50 44 43 30 A4 00 10 41 10 5C 2E 5F  // PDC5PDC0...A.\._
    0CE0: 50 52 5F 43 50 55 36 14 1D 5F 50 44 43 01 70 5C  // PR_CPU6.._PDC.p\
    0CF0: 2F 03 5F 50 52 5F 43 50 55 30 43 50 44 43 68 60  // /._PR_CPU0CPDCh`
    0D00: 47 43 41 50 60 14 22 5F 4F 53 43 04 70 5C 2F 03  // GCAP`."_OSC.p\/.
    0D10: 5F 50 52 5F 43 50 55 30 43 4F 53 43 68 69 6A 6B  // _PR_CPU0COSChijk
    0D20: 60 47 43 41 50 60 A4 60 14 43 0B 47 43 41 50 01  // `GCAP`.`.C.GCAP.
    0D30: 8A 68 00 53 54 53 36 8A 68 0A 04 43 41 50 36 A0  // .h.STS6.h..CAP6.
    0D40: 12 91 93 53 54 53 36 0A 06 93 53 54 53 36 0A 0A  // ...STS6...STS6..
    0D50: A4 00 A0 16 7B 53 54 53 36 01 00 7B 43 41 50 36  // ....{STS6..{CAP6
    0D60: 0B FF 0B 43 41 50 36 A4 00 7D 7B 50 44 43 36 0C  // ...CAP6..}{PDC6.
    0D70: FF FF FF 7F 00 43 41 50 36 50 44 43 36 A0 1B 93  // .....CAP6PDC6...
    0D80: 7B 50 44 43 36 0A 09 00 0A 09 5C 2F 03 5F 50 52  // {PDC6.....\/._PR
    0D90: 5F 43 50 55 31 41 50 50 54 A0 1E 7B 5C 2E 5F 53  // _CPU1APPT..{\._S
    0DA0: 42 5F 4F 53 43 50 0A 20 00 5C 2F 03 5F 50 52 5F  // B_OSCP. .\/._PR_
    0DB0: 43 50 55 31 48 57 50 54 A0 18 7B 50 44 43 36 0A  // CPU1HWPT..{PDC6.
    0DC0: 18 00 5C 2F 03 5F 50 52 5F 43 50 55 31 41 50 43  // ..\/._PR_CPU1APC
    0DD0: 54 70 50 44 43 36 50 44 43 30 A4 00 10 41 10 5C  // TpPDC6PDC0...A.\
    0DE0: 2E 5F 50 52 5F 43 50 55 37 14 1D 5F 50 44 43 01  // ._PR_CPU7.._PDC.
    0DF0: 70 5C 2F 03 5F 50 52 5F 43 50 55 30 43 50 44 43  // p\/._PR_CPU0CPDC
    0E00: 68 60 47 43 41 50 60 14 22 5F 4F 53 43 04 70 5C  // h`GCAP`."_OSC.p\
    0E10: 2F 03 5F 50 52 5F 43 50 55 30 43 4F 53 43 68 69  // /._PR_CPU0COSChi
    0E20: 6A 6B 60 47 43 41 50 60 A4 60 14 43 0B 47 43 41  // jk`GCAP`.`.C.GCA
    0E30: 50 01 8A 68 00 53 54 53 37 8A 68 0A 04 43 41 50  // P..h.STS7.h..CAP
    0E40: 37 A0 12 91 93 53 54 53 37 0A 06 93 53 54 53 37  // 7....STS7...STS7
    0E50: 0A 0A A4 00 A0 16 7B 53 54 53 37 01 00 7B 43 41  // ......{STS7..{CA
    0E60: 50 37 0B FF 0B 43 41 50 37 A4 00 7D 7B 50 44 43  // P7...CAP7..}{PDC
    0E70: 37 0C FF FF FF 7F 00 43 41 50 37 50 44 43 37 A0  // 7......CAP7PDC7.
    0E80: 1B 93 7B 50 44 43 37 0A 09 00 0A 09 5C 2F 03 5F  // ..{PDC7.....\/._
    0E90: 50 52 5F 43 50 55 31 41 50 50 54 A0 1E 7B 5C 2E  // PR_CPU1APPT..{\.
    0EA0: 5F 53 42 5F 4F 53 43 50 0A 20 00 5C 2F 03 5F 50  // _SB_OSCP. .\/._P
    0EB0: 52 5F 43 50 55 31 48 57 50 54 A0 18 7B 50 44 43  // R_CPU1HWPT..{PDC
    0EC0: 37 0A 18 00 5C 2F 03 5F 50 52 5F 43 50 55 31 41  // 7...\/._PR_CPU1A
    0ED0: 50 43 54 70 50 44 43 37 50 44 43 30 A4 00        // PCTpPDC7PDC0..
 */
