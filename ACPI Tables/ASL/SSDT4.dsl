{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.B0D3, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0.HDOS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.HNOT, MethodObj)    // 1 Arguments
    External (CPSC, UnknownObj)
    External (DSEN, UnknownObj)
    External (ECON, IntObj)
    External (GUAM, MethodObj)    // 1 Arguments
    External (OSYS, IntObj)
    External (PNHM, IntObj)
    External (S0ID, UnknownObj)


    0024: A0 44 09 00 15 5C 2E 5F 53 42 5F 50 43 49 30 06  // .D...\._SB_PCI0.
    0034: 00 15 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46 58  // ..\/._SB_PCI0GFX
    0044: 30 06 00 15 5C 2F 03 5F 53 42 5F 50 43 49 30 42  // 0...\/._SB_PCI0B
    0054: 30 44 33 06 00 15 5C 2F 04 5F 53 42 5F 50 43 49  // 0D3...\/._SB_PCI
    0064: 30 47 46 58 30 48 44 4F 53 08 00 15 5C 45 43 4F  // 0GFX0HDOS...\ECO
    0074: 4E 01 00 15 5C 50 4E 48 4D 01 00 15 4F 53 59 53  // N...\PNHM...OSYS
    0084: 01 00 15 43 50 53 43 00 00 15 5C 47 55 41 4D 08  // ...CPSC...\GUAM.
    0094: 01 15 44 53 45 4E 00 00 15 53 30 49 44 00 00 15  // ..DSEN...S0ID...
    00A4: 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58 30 48  // \/._SB_PCI0GFX0H
    00B4: 4E 4F 54 08 01                                   // NOT..

    OperationRegion (SANV, SystemMemory, 0x8CE6EA98, 0x01F7)

    00B9: 5B 80 53 41 4E 56 00 0C 98 EA E6 8C 0B F7 01     // [.SANV.........

    Field (SANV, AnyAcc, Lock, Preserve)
    {
        ASLB,   32, 
        IMON,   8, 
        IGDS,   8, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        GSMI,   8, 
        PAVP,   8, 
        CADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        DID9,   32, 
        DIDA,   32, 
        DIDB,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        DIDX,   32, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        NXDX,   32, 
        LIDS,   8, 
        KSV0,   32, 
        KSV1,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        IMTP,   8, 
        EDPV,   8, 
        SGMD,   8, 
        SGFL,   8, 
        SGGP,   8, 
        HRE0,   8, 
        HRG0,   32, 
        HRA0,   8, 
        PWE0,   8, 
        PWG0,   32, 
        PWA0,   8, 
        P1GP,   8, 
        HRE1,   8, 
        HRG1,   32, 
        HRA1,   8, 
        PWE1,   8, 
        PWG1,   32, 
        PWA1,   8, 
        P2GP,   8, 
        HRE2,   8, 
        HRG2,   32, 
        HRA2,   8, 
        PWE2,   8, 
        PWG2,   32, 
        PWA2,   8, 
        DLPW,   16, 
        DLHR,   16, 
        EECP,   8, 
        XBAS,   32, 
        GBAS,   16, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        LTRX,   8, 
        OBFX,   8, 
        LTRY,   8, 
        OBFY,   8, 
        LTRZ,   8, 
        OBFZ,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        PCSL,   8, 
        PBGE,   8, 
        M64B,   64, 
        M64L,   64, 
        CPEX,   32, 
        EEC1,   8, 
        EEC2,   8, 
        SBN0,   8, 
        SBN1,   8, 
        SBN2,   8, 
        M32B,   32, 
        M32L,   32, 
        P0WK,   32, 
        P1WK,   32, 
        P2WK,   32, 
        Offset (0x1F4), 
        Offset (0x1F7)
    }


    00C8: 5B 81 44 23 53 41 4E 56 10 41 53 4C 42 20 49 4D  // [.D#SANV.ASLB IM
    00D8: 4F 4E 08 49 47 44 53 08 49 42 54 54 08 49 50 41  // ON.IGDS.IBTT.IPA
    00E8: 54 08 49 50 53 43 08 49 42 49 41 08 49 53 53 43  // T.IPSC.IBIA.ISSC
    00F8: 08 49 44 4D 53 08 49 46 31 45 08 48 56 43 4F 08  // .IDMS.IF1E.HVCO.
    0108: 47 53 4D 49 08 50 41 56 50 08 43 41 44 4C 08 43  // GSMI.PAVP.CADL.C
    0118: 53 54 45 10 4E 53 54 45 10 4E 44 49 44 08 44 49  // STE.NSTE.NDID.DI
    0128: 44 31 20 44 49 44 32 20 44 49 44 33 20 44 49 44  // D1 DID2 DID3 DID
    0138: 34 20 44 49 44 35 20 44 49 44 36 20 44 49 44 37  // 4 DID5 DID6 DID7
    0148: 20 44 49 44 38 20 44 49 44 39 20 44 49 44 41 20  //  DID8 DID9 DIDA 
    0158: 44 49 44 42 20 44 49 44 43 20 44 49 44 44 20 44  // DIDB DIDC DIDD D
    0168: 49 44 45 20 44 49 44 46 20 44 49 44 58 20 4E 58  // IDE DIDF DIDX NX
    0178: 44 31 20 4E 58 44 32 20 4E 58 44 33 20 4E 58 44  // D1 NXD2 NXD3 NXD
    0188: 34 20 4E 58 44 35 20 4E 58 44 36 20 4E 58 44 37  // 4 NXD5 NXD6 NXD7
    0198: 20 4E 58 44 38 20 4E 58 44 58 20 4C 49 44 53 08  //  NXD8 NXDX LIDS.
    01A8: 4B 53 56 30 20 4B 53 56 31 08 42 52 54 4C 08 41  // KSV0 KSV1.BRTL.A
    01B8: 4C 53 45 08 41 4C 41 46 08 4C 4C 4F 57 08 4C 48  // LSE.ALAF.LLOW.LH
    01C8: 49 48 08 41 4C 46 50 08 49 4D 54 50 08 45 44 50  // IH.ALFP.IMTP.EDP
    01D8: 56 08 53 47 4D 44 08 53 47 46 4C 08 53 47 47 50  // V.SGMD.SGFL.SGGP
    01E8: 08 48 52 45 30 08 48 52 47 30 20 48 52 41 30 08  // .HRE0.HRG0 HRA0.
    01F8: 50 57 45 30 08 50 57 47 30 20 50 57 41 30 08 50  // PWE0.PWG0 PWA0.P
    0208: 31 47 50 08 48 52 45 31 08 48 52 47 31 20 48 52  // 1GP.HRE1.HRG1 HR
    0218: 41 31 08 50 57 45 31 08 50 57 47 31 20 50 57 41  // A1.PWE1.PWG1 PWA
    0228: 31 08 50 32 47 50 08 48 52 45 32 08 48 52 47 32  // 1.P2GP.HRE2.HRG2
    0238: 20 48 52 41 32 08 50 57 45 32 08 50 57 47 32 20  //  HRA2.PWE2.PWG2 
    0248: 50 57 41 32 08 44 4C 50 57 10 44 4C 48 52 10 45  // PWA2.DLPW.DLHR.E
    0258: 45 43 50 08 58 42 41 53 20 47 42 41 53 10 4E 56  // ECP.XBAS GBAS.NV
    0268: 47 41 20 4E 56 48 41 20 41 4D 44 41 20 4C 54 52  // GA NVHA AMDA LTR
    0278: 58 08 4F 42 46 58 08 4C 54 52 59 08 4F 42 46 59  // X.OBFX.LTRY.OBFY
    0288: 08 4C 54 52 5A 08 4F 42 46 5A 08 53 4D 53 4C 10  // .LTRZ.OBFZ.SMSL.
    0298: 53 4E 53 4C 10 50 30 55 42 08 50 31 55 42 08 50  // SNSL.P0UB.P1UB.P
    02A8: 32 55 42 08 50 43 53 4C 08 50 42 47 45 08 4D 36  // 2UB.PCSL.PBGE.M6
    02B8: 34 42 40 04 4D 36 34 4C 40 04 43 50 45 58 20 45  // 4B@.M64L@.CPEX E
    02C8: 45 43 31 08 45 45 43 32 08 53 42 4E 30 08 53 42  // EC1.EEC2.SBN0.SB
    02D8: 4E 31 08 53 42 4E 32 08 4D 33 32 42 20 4D 33 32  // N1.SBN2.M32B M32
    02E8: 4C 20 50 30 57 4B 20 50 31 57 4B 20 50 32 57 4B  // L P0WK P1WK P2WK
    02F8: 20 00 40 78 00 18                                //  .@x..

    Scope (\_SB.PCI0.GFX0)
    {

    02FE: 10 89 DF 02 5C 2F 03 5F 53 42 5F 50 43 49 30 47  // ....\/._SB_PCI0G
    030E: 46 58 30                                         // FX0

        Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
        {
            Store (And (Arg0, 0x07), DSEN) /* External reference */

    0311: 14 26 5F 44 4F 53 01 70 7B 68 0A 07 00 44 53 45  // .&_DOS.p{h...DSE
    0321: 4E                                               // N

            If (LEqual (And (Arg0, 0x03), Zero))
            {

    0322: A0 15 93 7B 68 0A 03 00 00                       // ...{h....

                If (CondRefOf (HDOS))
                {
                    HDOS ()
                }
            }
        }


    032B: A0 0C 5B 12 48 44 4F 53 00 48 44 4F 53           // ..[.HDOS.HDOS

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {

    0338: 14 8B 16 01 5F 44 4F 44 00                       // ...._DOD.

            If (LEqual (IMTP, One))
            {

    0341: A0 0D 93 49 4D 54 50 01                          // ...IMTP.

                Store (One, NDID) /* \NDID */
            }

    0349: 70 01 4E 44 49 44                                // p.NDID

            Else
            {

    034F: A1 07                                            // ..

                Store (Zero, NDID) /* \NDID */
            }


    0351: 70 00 4E 44 49 44                                // p.NDID

            If (
    0357: A0 15 92                                         // ...

LNotEqual (DIDL, Zero))
            {

    035A: 93 44 49 44 4C 00                                // .DIDL.

                Store (SDDL (DIDL), DID1) /* \DID1 */
            }


    0360: 70 53 44 44 4C 44 49 44 4C 44 49 44 31           // pSDDLDIDLDID1

            If (
    036D: A0 15 92                                         // ...

LNotEqual (DDL2, Zero))
            {

    0370: 93 44 44 4C 32 00                                // .DDL2.

                Store (SDDL (DDL2), DID2) /* \DID2 */
            }


    0376: 70 53 44 44 4C 44 44 4C 32 44 49 44 32           // pSDDLDDL2DID2

            If (
    0383: A0 15 92                                         // ...

LNotEqual (DDL3, Zero))
            {

    0386: 93 44 44 4C 33 00                                // .DDL3.

                Store (SDDL (DDL3), DID3) /* \DID3 */
            }


    038C: 70 53 44 44 4C 44 44 4C 33 44 49 44 33           // pSDDLDDL3DID3

            If (
    0399: A0 15 92                                         // ...

LNotEqual (DDL4, Zero))
            {

    039C: 93 44 44 4C 34 00                                // .DDL4.

                Store (SDDL (DDL4), DID4) /* \DID4 */
            }


    03A2: 70 53 44 44 4C 44 44 4C 34 44 49 44 34           // pSDDLDDL4DID4

            If (
    03AF: A0 15 92                                         // ...

LNotEqual (DDL5, Zero))
            {

    03B2: 93 44 44 4C 35 00                                // .DDL5.

                Store (SDDL (DDL5), DID5) /* \DID5 */
            }


    03B8: 70 53 44 44 4C 44 44 4C 35 44 49 44 35           // pSDDLDDL5DID5

            If (
    03C5: A0 15 92                                         // ...

LNotEqual (DDL6, Zero))
            {

    03C8: 93 44 44 4C 36 00                                // .DDL6.

                Store (SDDL (DDL6), DID6) /* \DID6 */
            }


    03CE: 70 53 44 44 4C 44 44 4C 36 44 49 44 36           // pSDDLDDL6DID6

            If (
    03DB: A0 15 92                                         // ...

LNotEqual (DDL7, Zero))
            {

    03DE: 93 44 44 4C 37 00                                // .DDL7.

                Store (SDDL (DDL7), DID7) /* \DID7 */
            }


    03E4: 70 53 44 44 4C 44 44 4C 37 44 49 44 37           // pSDDLDDL7DID7

            If (
    03F1: A0 15 92                                         // ...

LNotEqual (DDL8, Zero))
            {

    03F4: 93 44 44 4C 38 00                                // .DDL8.

                Store (SDDL (DDL8), DID8) /* \DID8 */
            }


    03FA: 70 53 44 44 4C 44 44 4C 38 44 49 44 38           // pSDDLDDL8DID8

            If (
    0407: A0 15 92                                         // ...

LNotEqual (DDL9, Zero))
            {

    040A: 93 44 44 4C 39 00                                // .DDL9.

                Store (SDDL (DDL9), DID9) /* \DID9 */
            }


    0410: 70 53 44 44 4C 44 44 4C 39 44 49 44 39           // pSDDLDDL9DID9

            If (
    041D: A0 15 92                                         // ...

LNotEqual (DD10, Zero))
            {

    0420: 93 44 44 31 30 00                                // .DD10.

                Store (SDDL (DD10), DIDA) /* \DIDA */
            }


    0426: 70 53 44 44 4C 44 44 31 30 44 49 44 41           // pSDDLDD10DIDA

            If (
    0433: A0 15 92                                         // ...

LNotEqual (DD11, Zero))
            {

    0436: 93 44 44 31 31 00                                // .DD11.

                Store (SDDL (DD11), DIDB) /* \DIDB */
            }


    043C: 70 53 44 44 4C 44 44 31 31 44 49 44 42           // pSDDLDD11DIDB

            If (
    0449: A0 15 92                                         // ...

LNotEqual (DD12, Zero))
            {

    044C: 93 44 44 31 32 00                                // .DD12.

                Store (SDDL (DD12), DIDC) /* \DIDC */
            }


    0452: 70 53 44 44 4C 44 44 31 32 44 49 44 43           // pSDDLDD12DIDC

            If (
    045F: A0 15 92                                         // ...

LNotEqual (DD13, Zero))
            {

    0462: 93 44 44 31 33 00                                // .DD13.

                Store (SDDL (DD13), DIDD) /* \DIDD */
            }


    0468: 70 53 44 44 4C 44 44 31 33 44 49 44 44           // pSDDLDD13DIDD

            If (
    0475: A0 15 92                                         // ...

LNotEqual (DD14, Zero))
            {

    0478: 93 44 44 31 34 00                                // .DD14.

                Store (SDDL (DD14), DIDE) /* \DIDE */
            }


    047E: 70 53 44 44 4C 44 44 31 34 44 49 44 45           // pSDDLDD14DIDE

            If (
    048B: A0 15 92                                         // ...

LNotEqual (DD15, Zero))
            {

    048E: 93 44 44 31 35 00                                // .DD15.

                Store (SDDL (DD15), DIDF) /* \DIDF */
            }


    0494: 70 53 44 44 4C 44 44 31 35 44 49 44 46           // pSDDLDD15DIDF

            If (LEqual (NDID, One))
            {

    04A1: A0 44 04 93 4E 44 49 44 01                       // .D..NDID.

                Name (TMP1, 
    04AA: 08 54 4D 50 31                                   // .TMP1

Package (0x01)
                {
                    0xFFFFFFFF
                })

    04AF: 12 07 01 0C FF FF FF FF                          // ........

                If (LEqual (IMTP, One))
                {

    04B7: A0 14 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    04BF: 70 0C 00 CA 02 00                                // p.....

Index (TMP1, Zero))
                }

    04C5: 88 54 4D 50 31 00 00                             // .TMP1..

                Else
                {

    04CC: A1 14                                            // ..

                    Store (Or (0x00010000, DID1), 
    04CE: 70 7D 0C 00 00 01 00 44 49 44 31 00              // p}.....DID1.

Index (TMP1, Zero))
                }


    04DA: 88 54 4D 50 31 00 00                             // .TMP1..

                Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
            }


    04E1: A4 54 4D 50 31                                   // .TMP1

            If (LEqual (NDID, 0x02))
            {

    04E6: A0 4D 05 93 4E 44 49 44 0A 02                    // .M..NDID..

                Name (TMP2, 
    04F0: 08 54 4D 50 32                                   // .TMP2

Package (0x02)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    04F5: 12 0C 02 0C FF FF FF FF 0C FF FF FF FF 70 7D 0C  // .............p}.
    0505: 00 00 01 00 44 49 44 31 00                       // ....DID1.

Index (TMP2, Zero))

    050E: 88 54 4D 50 32 00 00                             // .TMP2..

                If (LEqual (IMTP, One))
                {

    0515: A0 14 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    051D: 70 0C 00 CA 02 00                                // p.....

Index (TMP2, One))
                }

    0523: 88 54 4D 50 32 01 00                             // .TMP2..

                Else
                {

    052A: A1 14                                            // ..

                    Store (Or (0x00010000, DID2), 
    052C: 70 7D 0C 00 00 01 00 44 49 44 32 00              // p}.....DID2.

Index (TMP2, One))
                }


    0538: 88 54 4D 50 32 01 00                             // .TMP2..

                Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
            }


    053F: A4 54 4D 50 32                                   // .TMP2

            If (LEqual (NDID, 0x03))
            {

    0544: A0 47 07 93 4E 44 49 44 0A 03                    // .G..NDID..

                Name (TMP3, 
    054E: 08 54 4D 50 33                                   // .TMP3

Package (0x03)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    0553: 12 11 03 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    0563: FF FF 70 7D 0C 00 00 01 00 44 49 44 31 00        // ..p}.....DID1.

Index (TMP3, Zero))
                Store (Or (0x00010000, DID2), 
    0571: 88 54 4D 50 33 00 00 70 7D 0C 00 00 01 00 44 49  // .TMP3..p}.....DI
    0581: 44 32 00                                         // D2.

Index (TMP3, One))

    0584: 88 54 4D 50 33 01 00                             // .TMP3..

                If (LEqual (IMTP, One))
                {

    058B: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    0593: 70 0C 00 CA 02 00                                // p.....

Index (TMP3, 0x02))
                }

    0599: 88 54 4D 50 33 0A 02 00                          // .TMP3...

                Else
                {

    05A1: A1 15                                            // ..

                    Store (Or (0x00010000, DID3), 
    05A3: 70 7D 0C 00 00 01 00 44 49 44 33 00              // p}.....DID3.

Index (TMP3, 0x02))
                }


    05AF: 88 54 4D 50 33 0A 02 00                          // .TMP3...

                Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
            }


    05B7: A4 54 4D 50 33                                   // .TMP3

            If (LEqual (NDID, 0x04))
            {

    05BC: A0 40 09 93 4E 44 49 44 0A 04                    // .@..NDID..

                Name (TMP4, 
    05C6: 08 54 4D 50 34                                   // .TMP4

Package (0x04)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    05CB: 12 16 04 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    05DB: FF FF 0C FF FF FF FF 70 7D 0C 00 00 01 00 44 49  // .......p}.....DI
    05EB: 44 31 00                                         // D1.

Index (TMP4, Zero))
                Store (Or (0x00010000, DID2), 
    05EE: 88 54 4D 50 34 00 00 70 7D 0C 00 00 01 00 44 49  // .TMP4..p}.....DI
    05FE: 44 32 00                                         // D2.

Index (TMP4, One))
                Store (Or (0x00010000, DID3), 
    0601: 88 54 4D 50 34 01 00 70 7D 0C 00 00 01 00 44 49  // .TMP4..p}.....DI
    0611: 44 33 00                                         // D3.

Index (TMP4, 0x02))

    0614: 88 54 4D 50 34 0A 02 00                          // .TMP4...

                If (LEqual (IMTP, One))
                {

    061C: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    0624: 70 0C 00 CA 02 00                                // p.....

Index (TMP4, 0x03))
                }

    062A: 88 54 4D 50 34 0A 03 00                          // .TMP4...

                Else
                {

    0632: A1 15                                            // ..

                    Store (Or (0x00010000, DID4), 
    0634: 70 7D 0C 00 00 01 00 44 49 44 34 00              // p}.....DID4.

Index (TMP4, 0x03))
                }


    0640: 88 54 4D 50 34 0A 03 00                          // .TMP4...

                Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
            }


    0648: A4 54 4D 50 34                                   // .TMP4

            If (LEqual (NDID, 0x05))
            {

    064D: A0 49 0A 93 4E 44 49 44 0A 05                    // .I..NDID..

                Name (TMP5, 
    0657: 08 54 4D 50 35                                   // .TMP5

Package (0x05)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    065C: 12 1B 05 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    066C: FF FF 0C FF FF FF FF 0C FF FF FF FF 70 7D 0C 00  // ............p}..
    067C: 00 01 00 44 49 44 31 00                          // ...DID1.

Index (TMP5, Zero))
                Store (Or (0x00010000, DID2), 
    0684: 88 54 4D 50 35 00 00 70 7D 0C 00 00 01 00 44 49  // .TMP5..p}.....DI
    0694: 44 32 00                                         // D2.

Index (TMP5, One))
                Store (Or (0x00010000, DID3), 
    0697: 88 54 4D 50 35 01 00 70 7D 0C 00 00 01 00 44 49  // .TMP5..p}.....DI
    06A7: 44 33 00                                         // D3.

Index (TMP5, 0x02))
                Store (Or (0x00010000, DID4), 
    06AA: 88 54 4D 50 35 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMP5...p}.....D
    06BA: 49 44 34 00                                      // ID4.

Index (TMP5, 0x03))

    06BE: 88 54 4D 50 35 0A 03 00                          // .TMP5...

                If (LEqual (IMTP, One))
                {

    06C6: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    06CE: 70 0C 00 CA 02 00                                // p.....

Index (TMP5, 0x04))
                }

    06D4: 88 54 4D 50 35 0A 04 00                          // .TMP5...

                Else
                {

    06DC: A1 15                                            // ..

                    Store (Or (0x00010000, DID5), 
    06DE: 70 7D 0C 00 00 01 00 44 49 44 35 00              // p}.....DID5.

Index (TMP5, 0x04))
                }


    06EA: 88 54 4D 50 35 0A 04 00                          // .TMP5...

                Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
            }


    06F2: A4 54 4D 50 35                                   // .TMP5

            If (LEqual (NDID, 0x06))
            {

    06F7: A0 42 0C 93 4E 44 49 44 0A 06                    // .B..NDID..

                Name (TMP6, 
    0701: 08 54 4D 50 36                                   // .TMP6

Package (0x06)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    0706: 12 20 06 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // . ..............
    0716: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0726: FF 70 7D 0C 00 00 01 00 44 49 44 31 00           // .p}.....DID1.

Index (TMP6, Zero))
                Store (Or (0x00010000, DID2), 
    0733: 88 54 4D 50 36 00 00 70 7D 0C 00 00 01 00 44 49  // .TMP6..p}.....DI
    0743: 44 32 00                                         // D2.

Index (TMP6, One))
                Store (Or (0x00010000, DID3), 
    0746: 88 54 4D 50 36 01 00 70 7D 0C 00 00 01 00 44 49  // .TMP6..p}.....DI
    0756: 44 33 00                                         // D3.

Index (TMP6, 0x02))
                Store (Or (0x00010000, DID4), 
    0759: 88 54 4D 50 36 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMP6...p}.....D
    0769: 49 44 34 00                                      // ID4.

Index (TMP6, 0x03))
                Store (Or (0x00010000, DID5), 
    076D: 88 54 4D 50 36 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMP6...p}.....D
    077D: 49 44 35 00                                      // ID5.

Index (TMP6, 0x04))

    0781: 88 54 4D 50 36 0A 04 00                          // .TMP6...

                If (LEqual (IMTP, One))
                {

    0789: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    0791: 70 0C 00 CA 02 00                                // p.....

Index (TMP6, 0x05))
                }

    0797: 88 54 4D 50 36 0A 05 00                          // .TMP6...

                Else
                {

    079F: A1 15                                            // ..

                    Store (Or (0x00010000, DID6), 
    07A1: 70 7D 0C 00 00 01 00 44 49 44 36 00              // p}.....DID6.

Index (TMP6, 0x05))
                }


    07AD: 88 54 4D 50 36 0A 05 00                          // .TMP6...

                Return (TMP6) /* \_SB_.PCI0.GFX0._DOD.TMP6 */
            }


    07B5: A4 54 4D 50 36                                   // .TMP6

            If (LEqual (NDID, 0x07))
            {

    07BA: A0 4B 0D 93 4E 44 49 44 0A 07                    // .K..NDID..

                Name (TMP7, 
    07C4: 08 54 4D 50 37                                   // .TMP7

Package (0x07)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    07C9: 12 25 07 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // .%..............
    07D9: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    07E9: FF 0C FF FF FF FF 70 7D 0C 00 00 01 00 44 49 44  // ......p}.....DID
    07F9: 31 00                                            // 1.

Index (TMP7, Zero))
                Store (Or (0x00010000, DID2), 
    07FB: 88 54 4D 50 37 00 00 70 7D 0C 00 00 01 00 44 49  // .TMP7..p}.....DI
    080B: 44 32 00                                         // D2.

Index (TMP7, One))
                Store (Or (0x00010000, DID3), 
    080E: 88 54 4D 50 37 01 00 70 7D 0C 00 00 01 00 44 49  // .TMP7..p}.....DI
    081E: 44 33 00                                         // D3.

Index (TMP7, 0x02))
                Store (Or (0x00010000, DID4), 
    0821: 88 54 4D 50 37 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMP7...p}.....D
    0831: 49 44 34 00                                      // ID4.

Index (TMP7, 0x03))
                Store (Or (0x00010000, DID5), 
    0835: 88 54 4D 50 37 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMP7...p}.....D
    0845: 49 44 35 00                                      // ID5.

Index (TMP7, 0x04))
                Store (Or (0x00010000, DID6), 
    0849: 88 54 4D 50 37 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMP7...p}.....D
    0859: 49 44 36 00                                      // ID6.

Index (TMP7, 0x05))

    085D: 88 54 4D 50 37 0A 05 00                          // .TMP7...

                If (LEqual (IMTP, One))
                {

    0865: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    086D: 70 0C 00 CA 02 00                                // p.....

Index (TMP7, 0x06))
                }

    0873: 88 54 4D 50 37 0A 06 00                          // .TMP7...

                Else
                {

    087B: A1 15                                            // ..

                    Store (Or (0x00010000, DID7), 
    087D: 70 7D 0C 00 00 01 00 44 49 44 37 00              // p}.....DID7.

Index (TMP7, 0x06))
                }


    0889: 88 54 4D 50 37 0A 06 00                          // .TMP7...

                Return (TMP7) /* \_SB_.PCI0.GFX0._DOD.TMP7 */
            }


    0891: A4 54 4D 50 37                                   // .TMP7

            If (LEqual (NDID, 0x08))
            {

    0896: A0 44 0F 93 4E 44 49 44 0A 08                    // .D..NDID..

                Name (TMP8, 
    08A0: 08 54 4D 50 38                                   // .TMP8

Package (0x08)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    08A5: 12 2A 08 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // .*..............
    08B5: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    08C5: FF 0C FF FF FF FF 0C FF FF FF FF 70 7D 0C 00 00  // ...........p}...
    08D5: 01 00 44 49 44 31 00                             // ..DID1.

Index (TMP8, Zero))
                Store (Or (0x00010000, DID2), 
    08DC: 88 54 4D 50 38 00 00 70 7D 0C 00 00 01 00 44 49  // .TMP8..p}.....DI
    08EC: 44 32 00                                         // D2.

Index (TMP8, One))
                Store (Or (0x00010000, DID3), 
    08EF: 88 54 4D 50 38 01 00 70 7D 0C 00 00 01 00 44 49  // .TMP8..p}.....DI
    08FF: 44 33 00                                         // D3.

Index (TMP8, 0x02))
                Store (Or (0x00010000, DID4), 
    0902: 88 54 4D 50 38 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMP8...p}.....D
    0912: 49 44 34 00                                      // ID4.

Index (TMP8, 0x03))
                Store (Or (0x00010000, DID5), 
    0916: 88 54 4D 50 38 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMP8...p}.....D
    0926: 49 44 35 00                                      // ID5.

Index (TMP8, 0x04))
                Store (Or (0x00010000, DID6), 
    092A: 88 54 4D 50 38 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMP8...p}.....D
    093A: 49 44 36 00                                      // ID6.

Index (TMP8, 0x05))
                Store (Or (0x00010000, DID7), 
    093E: 88 54 4D 50 38 0A 05 00 70 7D 0C 00 00 01 00 44  // .TMP8...p}.....D
    094E: 49 44 37 00                                      // ID7.

Index (TMP8, 0x06))

    0952: 88 54 4D 50 38 0A 06 00                          // .TMP8...

                If (LEqual (IMTP, One))
                {

    095A: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    0962: 70 0C 00 CA 02 00                                // p.....

Index (TMP8, 0x07))
                }

    0968: 88 54 4D 50 38 0A 07 00                          // .TMP8...

                Else
                {

    0970: A1 15                                            // ..

                    Store (Or (0x00010000, DID8), 
    0972: 70 7D 0C 00 00 01 00 44 49 44 38 00              // p}.....DID8.

Index (TMP8, 0x07))
                }


    097E: 88 54 4D 50 38 0A 07 00                          // .TMP8...

                Return (TMP8) /* \_SB_.PCI0.GFX0._DOD.TMP8 */
            }


    0986: A4 54 4D 50 38                                   // .TMP8

            If (LEqual (NDID, 0x09))
            {

    098B: A0 4D 10 93 4E 44 49 44 0A 09                    // .M..NDID..

                Name (TMP9, 
    0995: 08 54 4D 50 39                                   // .TMP9

Package (0x09)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    099A: 12 2F 09 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ./..............
    09AA: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    09BA: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    09CA: 70 7D 0C 00 00 01 00 44 49 44 31 00              // p}.....DID1.

Index (TMP9, Zero))
                Store (Or (0x00010000, DID2), 
    09D6: 88 54 4D 50 39 00 00 70 7D 0C 00 00 01 00 44 49  // .TMP9..p}.....DI
    09E6: 44 32 00                                         // D2.

Index (TMP9, One))
                Store (Or (0x00010000, DID3), 
    09E9: 88 54 4D 50 39 01 00 70 7D 0C 00 00 01 00 44 49  // .TMP9..p}.....DI
    09F9: 44 33 00                                         // D3.

Index (TMP9, 0x02))
                Store (Or (0x00010000, DID4), 
    09FC: 88 54 4D 50 39 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMP9...p}.....D
    0A0C: 49 44 34 00                                      // ID4.

Index (TMP9, 0x03))
                Store (Or (0x00010000, DID5), 
    0A10: 88 54 4D 50 39 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMP9...p}.....D
    0A20: 49 44 35 00                                      // ID5.

Index (TMP9, 0x04))
                Store (Or (0x00010000, DID6), 
    0A24: 88 54 4D 50 39 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMP9...p}.....D
    0A34: 49 44 36 00                                      // ID6.

Index (TMP9, 0x05))
                Store (Or (0x00010000, DID7), 
    0A38: 88 54 4D 50 39 0A 05 00 70 7D 0C 00 00 01 00 44  // .TMP9...p}.....D
    0A48: 49 44 37 00                                      // ID7.

Index (TMP9, 0x06))
                Store (Or (0x00010000, DID8), 
    0A4C: 88 54 4D 50 39 0A 06 00 70 7D 0C 00 00 01 00 44  // .TMP9...p}.....D
    0A5C: 49 44 38 00                                      // ID8.

Index (TMP9, 0x07))

    0A60: 88 54 4D 50 39 0A 07 00                          // .TMP9...

                If (LEqual (IMTP, One))
                {

    0A68: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    0A70: 70 0C 00 CA 02 00                                // p.....

Index (TMP9, 0x08))
                }

    0A76: 88 54 4D 50 39 0A 08 00                          // .TMP9...

                Else
                {

    0A7E: A1 15                                            // ..

                    Store (Or (0x00010000, DID9), 
    0A80: 70 7D 0C 00 00 01 00 44 49 44 39 00              // p}.....DID9.

Index (TMP9, 0x08))
                }


    0A8C: 88 54 4D 50 39 0A 08 00                          // .TMP9...

                Return (TMP9) /* \_SB_.PCI0.GFX0._DOD.TMP9 */
            }


    0A94: A4 54 4D 50 39                                   // .TMP9

            If (LEqual (NDID, 0x0A))
            {

    0A99: A0 46 12 93 4E 44 49 44 0A 0A                    // .F..NDID..

                Name (TMPA, 
    0AA3: 08 54 4D 50 41                                   // .TMPA

Package (0x0A)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    0AA8: 12 34 0A 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // .4..............
    0AB8: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0AC8: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0AD8: 0C FF FF FF FF 70 7D 0C 00 00 01 00 44 49 44 31  // .....p}.....DID1
    0AE8: 00                                               // .

Index (TMPA, Zero))
                Store (Or (0x00010000, DID2), 
    0AE9: 88 54 4D 50 41 00 00 70 7D 0C 00 00 01 00 44 49  // .TMPA..p}.....DI
    0AF9: 44 32 00                                         // D2.

Index (TMPA, One))
                Store (Or (0x00010000, DID3), 
    0AFC: 88 54 4D 50 41 01 00 70 7D 0C 00 00 01 00 44 49  // .TMPA..p}.....DI
    0B0C: 44 33 00                                         // D3.

Index (TMPA, 0x02))
                Store (Or (0x00010000, DID4), 
    0B0F: 88 54 4D 50 41 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMPA...p}.....D
    0B1F: 49 44 34 00                                      // ID4.

Index (TMPA, 0x03))
                Store (Or (0x00010000, DID5), 
    0B23: 88 54 4D 50 41 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMPA...p}.....D
    0B33: 49 44 35 00                                      // ID5.

Index (TMPA, 0x04))
                Store (Or (0x00010000, DID6), 
    0B37: 88 54 4D 50 41 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMPA...p}.....D
    0B47: 49 44 36 00                                      // ID6.

Index (TMPA, 0x05))
                Store (Or (0x00010000, DID7), 
    0B4B: 88 54 4D 50 41 0A 05 00 70 7D 0C 00 00 01 00 44  // .TMPA...p}.....D
    0B5B: 49 44 37 00                                      // ID7.

Index (TMPA, 0x06))
                Store (Or (0x00010000, DID8), 
    0B5F: 88 54 4D 50 41 0A 06 00 70 7D 0C 00 00 01 00 44  // .TMPA...p}.....D
    0B6F: 49 44 38 00                                      // ID8.

Index (TMPA, 0x07))
                Store (Or (0x00010000, DID9), 
    0B73: 88 54 4D 50 41 0A 07 00 70 7D 0C 00 00 01 00 44  // .TMPA...p}.....D
    0B83: 49 44 39 00                                      // ID9.

Index (TMPA, 0x08))

    0B87: 88 54 4D 50 41 0A 08 00                          // .TMPA...

                If (LEqual (IMTP, One))
                {

    0B8F: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    0B97: 70 0C 00 CA 02 00                                // p.....

Index (TMPA, 0x09))
                }

    0B9D: 88 54 4D 50 41 0A 09 00                          // .TMPA...

                Else
                {

    0BA5: A1 15                                            // ..

                    Store (Or (0x00010000, DIDA), 
    0BA7: 70 7D 0C 00 00 01 00 44 49 44 41 00              // p}.....DIDA.

Index (TMPA, 0x09))
                }


    0BB3: 88 54 4D 50 41 0A 09 00                          // .TMPA...

                Return (TMPA) /* \_SB_.PCI0.GFX0._DOD.TMPA */
            }


    0BBB: A4 54 4D 50 41                                   // .TMPA

            If (LEqual (NDID, 0x0B))
            {

    0BC0: A0 4F 13 93 4E 44 49 44 0A 0B                    // .O..NDID..

                Name (TMPB, 
    0BCA: 08 54 4D 50 42                                   // .TMPB

Package (0x0B)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    0BCF: 12 39 0B 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // .9..............
    0BDF: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0BEF: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0BFF: 0C FF FF FF FF 0C FF FF FF FF 70 7D 0C 00 00 01  // ..........p}....
    0C0F: 00 44 49 44 31 00                                // .DID1.

Index (TMPB, Zero))
                Store (Or (0x00010000, DID2), 
    0C15: 88 54 4D 50 42 00 00 70 7D 0C 00 00 01 00 44 49  // .TMPB..p}.....DI
    0C25: 44 32 00                                         // D2.

Index (TMPB, One))
                Store (Or (0x00010000, DID3), 
    0C28: 88 54 4D 50 42 01 00 70 7D 0C 00 00 01 00 44 49  // .TMPB..p}.....DI
    0C38: 44 33 00                                         // D3.

Index (TMPB, 0x02))
                Store (Or (0x00010000, DID4), 
    0C3B: 88 54 4D 50 42 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMPB...p}.....D
    0C4B: 49 44 34 00                                      // ID4.

Index (TMPB, 0x03))
                Store (Or (0x00010000, DID5), 
    0C4F: 88 54 4D 50 42 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMPB...p}.....D
    0C5F: 49 44 35 00                                      // ID5.

Index (TMPB, 0x04))
                Store (Or (0x00010000, DID6), 
    0C63: 88 54 4D 50 42 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMPB...p}.....D
    0C73: 49 44 36 00                                      // ID6.

Index (TMPB, 0x05))
                Store (Or (0x00010000, DID7), 
    0C77: 88 54 4D 50 42 0A 05 00 70 7D 0C 00 00 01 00 44  // .TMPB...p}.....D
    0C87: 49 44 37 00                                      // ID7.

Index (TMPB, 0x06))
                Store (Or (0x00010000, DID8), 
    0C8B: 88 54 4D 50 42 0A 06 00 70 7D 0C 00 00 01 00 44  // .TMPB...p}.....D
    0C9B: 49 44 38 00                                      // ID8.

Index (TMPB, 0x07))
                Store (Or (0x00010000, DID9), 
    0C9F: 88 54 4D 50 42 0A 07 00 70 7D 0C 00 00 01 00 44  // .TMPB...p}.....D
    0CAF: 49 44 39 00                                      // ID9.

Index (TMPB, 0x08))
                Store (Or (0x00010000, DIDA), 
    0CB3: 88 54 4D 50 42 0A 08 00 70 7D 0C 00 00 01 00 44  // .TMPB...p}.....D
    0CC3: 49 44 41 00                                      // IDA.

Index (TMPB, 0x09))

    0CC7: 88 54 4D 50 42 0A 09 00                          // .TMPB...

                If (LEqual (IMTP, One))
                {

    0CCF: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    0CD7: 70 0C 00 CA 02 00                                // p.....

Index (TMPB, 0x0A))
                }

    0CDD: 88 54 4D 50 42 0A 0A 00                          // .TMPB...

                Else
                {

    0CE5: A1 15                                            // ..

                    Store (Or (0x00010000, DIDB), 
    0CE7: 70 7D 0C 00 00 01 00 44 49 44 42 00              // p}.....DIDB.

Index (TMPB, 0x0A))
                }


    0CF3: 88 54 4D 50 42 0A 0A 00                          // .TMPB...

                Return (TMPB) /* \_SB_.PCI0.GFX0._DOD.TMPB */
            }


    0CFB: A4 54 4D 50 42                                   // .TMPB

            If (LEqual (NDID, 0x0C))
            {

    0D00: A0 48 15 93 4E 44 49 44 0A 0C                    // .H..NDID..

                Name (TMPC, 
    0D0A: 08 54 4D 50 43                                   // .TMPC

Package (0x0C)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    0D0F: 12 3E 0C 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // .>..............
    0D1F: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0D2F: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0D3F: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 70  // ...............p
    0D4F: 7D 0C 00 00 01 00 44 49 44 31 00                 // }.....DID1.

Index (TMPC, Zero))
                Store (Or (0x00010000, DID2), 
    0D5A: 88 54 4D 50 43 00 00 70 7D 0C 00 00 01 00 44 49  // .TMPC..p}.....DI
    0D6A: 44 32 00                                         // D2.

Index (TMPC, One))
                Store (Or (0x00010000, DID3), 
    0D6D: 88 54 4D 50 43 01 00 70 7D 0C 00 00 01 00 44 49  // .TMPC..p}.....DI
    0D7D: 44 33 00                                         // D3.

Index (TMPC, 0x02))
                Store (Or (0x00010000, DID4), 
    0D80: 88 54 4D 50 43 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMPC...p}.....D
    0D90: 49 44 34 00                                      // ID4.

Index (TMPC, 0x03))
                Store (Or (0x00010000, DID5), 
    0D94: 88 54 4D 50 43 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMPC...p}.....D
    0DA4: 49 44 35 00                                      // ID5.

Index (TMPC, 0x04))
                Store (Or (0x00010000, DID6), 
    0DA8: 88 54 4D 50 43 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMPC...p}.....D
    0DB8: 49 44 36 00                                      // ID6.

Index (TMPC, 0x05))
                Store (Or (0x00010000, DID7), 
    0DBC: 88 54 4D 50 43 0A 05 00 70 7D 0C 00 00 01 00 44  // .TMPC...p}.....D
    0DCC: 49 44 37 00                                      // ID7.

Index (TMPC, 0x06))
                Store (Or (0x00010000, DID8), 
    0DD0: 88 54 4D 50 43 0A 06 00 70 7D 0C 00 00 01 00 44  // .TMPC...p}.....D
    0DE0: 49 44 38 00                                      // ID8.

Index (TMPC, 0x07))
                Store (Or (0x00010000, DID9), 
    0DE4: 88 54 4D 50 43 0A 07 00 70 7D 0C 00 00 01 00 44  // .TMPC...p}.....D
    0DF4: 49 44 39 00                                      // ID9.

Index (TMPC, 0x08))
                Store (Or (0x00010000, DIDA), 
    0DF8: 88 54 4D 50 43 0A 08 00 70 7D 0C 00 00 01 00 44  // .TMPC...p}.....D
    0E08: 49 44 41 00                                      // IDA.

Index (TMPC, 0x09))
                Store (Or (0x00010000, DIDB), 
    0E0C: 88 54 4D 50 43 0A 09 00 70 7D 0C 00 00 01 00 44  // .TMPC...p}.....D
    0E1C: 49 44 42 00                                      // IDB.

Index (TMPC, 0x0A))

    0E20: 88 54 4D 50 43 0A 0A 00                          // .TMPC...

                If (LEqual (IMTP, One))
                {

    0E28: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    0E30: 70 0C 00 CA 02 00                                // p.....

Index (TMPC, 0x0B))
                }

    0E36: 88 54 4D 50 43 0A 0B 00                          // .TMPC...

                Else
                {

    0E3E: A1 15                                            // ..

                    Store (Or (0x00010000, DIDC), 
    0E40: 70 7D 0C 00 00 01 00 44 49 44 43 00              // p}.....DIDC.

Index (TMPC, 0x0B))
                }


    0E4C: 88 54 4D 50 43 0A 0B 00                          // .TMPC...

                Return (TMPC) /* \_SB_.PCI0.GFX0._DOD.TMPC */
            }


    0E54: A4 54 4D 50 43                                   // .TMPC

            If (LEqual (NDID, 0x0D))
            {

    0E59: A0 42 17 93 4E 44 49 44 0A 0D                    // .B..NDID..

                Name (TMPD, 
    0E63: 08 54 4D 50 44                                   // .TMPD

Package (0x0D)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    0E68: 12 44 04 0D 0C FF FF FF FF 0C FF FF FF FF 0C FF  // .D..............
    0E78: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    0E88: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0E98: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0EA8: 0C FF FF FF FF 70 7D 0C 00 00 01 00 44 49 44 31  // .....p}.....DID1
    0EB8: 00                                               // .

Index (TMPD, Zero))
                Store (Or (0x00010000, DID2), 
    0EB9: 88 54 4D 50 44 00 00 70 7D 0C 00 00 01 00 44 49  // .TMPD..p}.....DI
    0EC9: 44 32 00                                         // D2.

Index (TMPD, One))
                Store (Or (0x00010000, DID3), 
    0ECC: 88 54 4D 50 44 01 00 70 7D 0C 00 00 01 00 44 49  // .TMPD..p}.....DI
    0EDC: 44 33 00                                         // D3.

Index (TMPD, 0x02))
                Store (Or (0x00010000, DID4), 
    0EDF: 88 54 4D 50 44 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMPD...p}.....D
    0EEF: 49 44 34 00                                      // ID4.

Index (TMPD, 0x03))
                Store (Or (0x00010000, DID5), 
    0EF3: 88 54 4D 50 44 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMPD...p}.....D
    0F03: 49 44 35 00                                      // ID5.

Index (TMPD, 0x04))
                Store (Or (0x00010000, DID6), 
    0F07: 88 54 4D 50 44 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMPD...p}.....D
    0F17: 49 44 36 00                                      // ID6.

Index (TMPD, 0x05))
                Store (Or (0x00010000, DID7), 
    0F1B: 88 54 4D 50 44 0A 05 00 70 7D 0C 00 00 01 00 44  // .TMPD...p}.....D
    0F2B: 49 44 37 00                                      // ID7.

Index (TMPD, 0x06))
                Store (Or (0x00010000, DID8), 
    0F2F: 88 54 4D 50 44 0A 06 00 70 7D 0C 00 00 01 00 44  // .TMPD...p}.....D
    0F3F: 49 44 38 00                                      // ID8.

Index (TMPD, 0x07))
                Store (Or (0x00010000, DID9), 
    0F43: 88 54 4D 50 44 0A 07 00 70 7D 0C 00 00 01 00 44  // .TMPD...p}.....D
    0F53: 49 44 39 00                                      // ID9.

Index (TMPD, 0x08))
                Store (Or (0x00010000, DIDA), 
    0F57: 88 54 4D 50 44 0A 08 00 70 7D 0C 00 00 01 00 44  // .TMPD...p}.....D
    0F67: 49 44 41 00                                      // IDA.

Index (TMPD, 0x09))
                Store (Or (0x00010000, DIDB), 
    0F6B: 88 54 4D 50 44 0A 09 00 70 7D 0C 00 00 01 00 44  // .TMPD...p}.....D
    0F7B: 49 44 42 00                                      // IDB.

Index (TMPD, 0x0A))
                Store (Or (0x00010000, DIDC), 
    0F7F: 88 54 4D 50 44 0A 0A 00 70 7D 0C 00 00 01 00 44  // .TMPD...p}.....D
    0F8F: 49 44 43 00                                      // IDC.

Index (TMPD, 0x0B))

    0F93: 88 54 4D 50 44 0A 0B 00                          // .TMPD...

                If (LEqual (IMTP, One))
                {

    0F9B: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    0FA3: 70 0C 00 CA 02 00                                // p.....

Index (TMPD, 0x0C))
                }

    0FA9: 88 54 4D 50 44 0A 0C 00                          // .TMPD...

                Else
                {

    0FB1: A1 15                                            // ..

                    Store (Or (0x00010000, DIDD), 
    0FB3: 70 7D 0C 00 00 01 00 44 49 44 44 00              // p}.....DIDD.

Index (TMPD, 0x0C))
                }


    0FBF: 88 54 4D 50 44 0A 0C 00                          // .TMPD...

                Return (TMPD) /* \_SB_.PCI0.GFX0._DOD.TMPD */
            }


    0FC7: A4 54 4D 50 44                                   // .TMPD

            If (LEqual (NDID, 0x0E))
            {

    0FCC: A0 4B 18 93 4E 44 49 44 0A 0E                    // .K..NDID..

                Name (TMPE, 
    0FD6: 08 54 4D 50 45                                   // .TMPE

Package (0x0E)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    0FDB: 12 49 04 0E 0C FF FF FF FF 0C FF FF FF FF 0C FF  // .I..............
    0FEB: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    0FFB: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    100B: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    101B: 0C FF FF FF FF 0C FF FF FF FF 70 7D 0C 00 00 01  // ..........p}....
    102B: 00 44 49 44 31 00                                // .DID1.

Index (TMPE, Zero))
                Store (Or (0x00010000, DID2), 
    1031: 88 54 4D 50 45 00 00 70 7D 0C 00 00 01 00 44 49  // .TMPE..p}.....DI
    1041: 44 32 00                                         // D2.

Index (TMPE, One))
                Store (Or (0x00010000, DID3), 
    1044: 88 54 4D 50 45 01 00 70 7D 0C 00 00 01 00 44 49  // .TMPE..p}.....DI
    1054: 44 33 00                                         // D3.

Index (TMPE, 0x02))
                Store (Or (0x00010000, DID4), 
    1057: 88 54 4D 50 45 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMPE...p}.....D
    1067: 49 44 34 00                                      // ID4.

Index (TMPE, 0x03))
                Store (Or (0x00010000, DID5), 
    106B: 88 54 4D 50 45 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMPE...p}.....D
    107B: 49 44 35 00                                      // ID5.

Index (TMPE, 0x04))
                Store (Or (0x00010000, DID6), 
    107F: 88 54 4D 50 45 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMPE...p}.....D
    108F: 49 44 36 00                                      // ID6.

Index (TMPE, 0x05))
                Store (Or (0x00010000, DID7), 
    1093: 88 54 4D 50 45 0A 05 00 70 7D 0C 00 00 01 00 44  // .TMPE...p}.....D
    10A3: 49 44 37 00                                      // ID7.

Index (TMPE, 0x06))
                Store (Or (0x00010000, DID8), 
    10A7: 88 54 4D 50 45 0A 06 00 70 7D 0C 00 00 01 00 44  // .TMPE...p}.....D
    10B7: 49 44 38 00                                      // ID8.

Index (TMPE, 0x07))
                Store (Or (0x00010000, DID9), 
    10BB: 88 54 4D 50 45 0A 07 00 70 7D 0C 00 00 01 00 44  // .TMPE...p}.....D
    10CB: 49 44 39 00                                      // ID9.

Index (TMPE, 0x08))
                Store (Or (0x00010000, DIDA), 
    10CF: 88 54 4D 50 45 0A 08 00 70 7D 0C 00 00 01 00 44  // .TMPE...p}.....D
    10DF: 49 44 41 00                                      // IDA.

Index (TMPE, 0x09))
                Store (Or (0x00010000, DIDB), 
    10E3: 88 54 4D 50 45 0A 09 00 70 7D 0C 00 00 01 00 44  // .TMPE...p}.....D
    10F3: 49 44 42 00                                      // IDB.

Index (TMPE, 0x0A))
                Store (Or (0x00010000, DIDC), 
    10F7: 88 54 4D 50 45 0A 0A 00 70 7D 0C 00 00 01 00 44  // .TMPE...p}.....D
    1107: 49 44 43 00                                      // IDC.

Index (TMPE, 0x0B))
                Store (Or (0x00010000, DIDD), 
    110B: 88 54 4D 50 45 0A 0B 00 70 7D 0C 00 00 01 00 44  // .TMPE...p}.....D
    111B: 49 44 44 00                                      // IDD.

Index (TMPE, 0x0C))

    111F: 88 54 4D 50 45 0A 0C 00                          // .TMPE...

                If (LEqual (IMTP, One))
                {

    1127: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    112F: 70 0C 00 CA 02 00                                // p.....

Index (TMPE, 0x0D))
                }

    1135: 88 54 4D 50 45 0A 0D 00                          // .TMPE...

                Else
                {

    113D: A1 15                                            // ..

                    Store (Or (0x00010000, DIDE), 
    113F: 70 7D 0C 00 00 01 00 44 49 44 45 00              // p}.....DIDE.

Index (TMPE, 0x0D))
                }


    114B: 88 54 4D 50 45 0A 0D 00                          // .TMPE...

                Return (TMPE) /* \_SB_.PCI0.GFX0._DOD.TMPE */
            }


    1153: A4 54 4D 50 45                                   // .TMPE

            If (LEqual (NDID, 0x0F))
            {

    1158: A0 44 1A 93 4E 44 49 44 0A 0F                    // .D..NDID..

                Name (TMPF, 
    1162: 08 54 4D 50 46                                   // .TMPF

Package (0x0F)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    1167: 12 4E 04 0F 0C FF FF FF FF 0C FF FF FF FF 0C FF  // .N..............
    1177: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    1187: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    1197: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    11A7: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 70  // ...............p
    11B7: 7D 0C 00 00 01 00 44 49 44 31 00                 // }.....DID1.

Index (TMPF, Zero))
                Store (Or (0x00010000, DID2), 
    11C2: 88 54 4D 50 46 00 00 70 7D 0C 00 00 01 00 44 49  // .TMPF..p}.....DI
    11D2: 44 32 00                                         // D2.

Index (TMPF, One))
                Store (Or (0x00010000, DID3), 
    11D5: 88 54 4D 50 46 01 00 70 7D 0C 00 00 01 00 44 49  // .TMPF..p}.....DI
    11E5: 44 33 00                                         // D3.

Index (TMPF, 0x02))
                Store (Or (0x00010000, DID4), 
    11E8: 88 54 4D 50 46 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    11F8: 49 44 34 00                                      // ID4.

Index (TMPF, 0x03))
                Store (Or (0x00010000, DID5), 
    11FC: 88 54 4D 50 46 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    120C: 49 44 35 00                                      // ID5.

Index (TMPF, 0x04))
                Store (Or (0x00010000, DID6), 
    1210: 88 54 4D 50 46 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    1220: 49 44 36 00                                      // ID6.

Index (TMPF, 0x05))
                Store (Or (0x00010000, DID7), 
    1224: 88 54 4D 50 46 0A 05 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    1234: 49 44 37 00                                      // ID7.

Index (TMPF, 0x06))
                Store (Or (0x00010000, DID8), 
    1238: 88 54 4D 50 46 0A 06 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    1248: 49 44 38 00                                      // ID8.

Index (TMPF, 0x07))
                Store (Or (0x00010000, DID9), 
    124C: 88 54 4D 50 46 0A 07 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    125C: 49 44 39 00                                      // ID9.

Index (TMPF, 0x08))
                Store (Or (0x00010000, DIDA), 
    1260: 88 54 4D 50 46 0A 08 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    1270: 49 44 41 00                                      // IDA.

Index (TMPF, 0x09))
                Store (Or (0x00010000, DIDB), 
    1274: 88 54 4D 50 46 0A 09 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    1284: 49 44 42 00                                      // IDB.

Index (TMPF, 0x0A))
                Store (Or (0x00010000, DIDC), 
    1288: 88 54 4D 50 46 0A 0A 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    1298: 49 44 43 00                                      // IDC.

Index (TMPF, 0x0B))
                Store (Or (0x00010000, DIDD), 
    129C: 88 54 4D 50 46 0A 0B 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    12AC: 49 44 44 00                                      // IDD.

Index (TMPF, 0x0C))
                Store (Or (0x00010000, DIDE), 
    12B0: 88 54 4D 50 46 0A 0C 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    12C0: 49 44 45 00                                      // IDE.

Index (TMPF, 0x0D))

    12C4: 88 54 4D 50 46 0A 0D 00                          // .TMPF...

                If (LEqual (IMTP, One))
                {

    12CC: A0 15 93 49 4D 54 50 01                          // ...IMTP.

                    Store (0x0002CA00, 
    12D4: 70 0C 00 CA 02 00                                // p.....

Index (TMPF, 0x0E))
                }

    12DA: 88 54 4D 50 46 0A 0E 00                          // .TMPF...

                Else
                {

    12E2: A1 15                                            // ..

                    Store (Or (0x00010000, DIDF), 
    12E4: 70 7D 0C 00 00 01 00 44 49 44 46 00              // p}.....DIDF.

Index (TMPF, 0x0E))
                }


    12F0: 88 54 4D 50 46 0A 0E 00                          // .TMPF...

                Return (TMPF) /* \_SB_.PCI0.GFX0._DOD.TMPF */
            }


    12F8: A4 54 4D 50 46                                   // .TMPF

            If (LEqual (NDID, 0x10))
            {

    12FD: A0 4F 19 93 4E 44 49 44 0A 10                    // .O..NDID..

                Name (TMPG, 
    1307: 08 54 4D 50 47                                   // .TMPG

Package (0x10)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), 
    130C: 12 43 05 10 0C FF FF FF FF 0C FF FF FF FF 0C FF  // .C..............
    131C: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    132C: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    133C: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    134C: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
    135C: FF FF FF FF 70 7D 0C 00 00 01 00 44 49 44 31 00  // ....p}.....DID1.

Index (TMPG, Zero))
                Store (Or (0x00010000, DID2), 
    136C: 88 54 4D 50 47 00 00 70 7D 0C 00 00 01 00 44 49  // .TMPG..p}.....DI
    137C: 44 32 00                                         // D2.

Index (TMPG, One))
                Store (Or (0x00010000, DID3), 
    137F: 88 54 4D 50 47 01 00 70 7D 0C 00 00 01 00 44 49  // .TMPG..p}.....DI
    138F: 44 33 00                                         // D3.

Index (TMPG, 0x02))
                Store (Or (0x00010000, DID4), 
    1392: 88 54 4D 50 47 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    13A2: 49 44 34 00                                      // ID4.

Index (TMPG, 0x03))
                Store (Or (0x00010000, DID5), 
    13A6: 88 54 4D 50 47 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    13B6: 49 44 35 00                                      // ID5.

Index (TMPG, 0x04))
                Store (Or (0x00010000, DID6), 
    13BA: 88 54 4D 50 47 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    13CA: 49 44 36 00                                      // ID6.

Index (TMPG, 0x05))
                Store (Or (0x00010000, DID7), 
    13CE: 88 54 4D 50 47 0A 05 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    13DE: 49 44 37 00                                      // ID7.

Index (TMPG, 0x06))
                Store (Or (0x00010000, DID8), 
    13E2: 88 54 4D 50 47 0A 06 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    13F2: 49 44 38 00                                      // ID8.

Index (TMPG, 0x07))
                Store (Or (0x00010000, DID9), 
    13F6: 88 54 4D 50 47 0A 07 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    1406: 49 44 39 00                                      // ID9.

Index (TMPG, 0x08))
                Store (Or (0x00010000, DIDA), 
    140A: 88 54 4D 50 47 0A 08 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    141A: 49 44 41 00                                      // IDA.

Index (TMPG, 0x09))
                Store (Or (0x00010000, DIDB), 
    141E: 88 54 4D 50 47 0A 09 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    142E: 49 44 42 00                                      // IDB.

Index (TMPG, 0x0A))
                Store (Or (0x00010000, DIDC), 
    1432: 88 54 4D 50 47 0A 0A 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    1442: 49 44 43 00                                      // IDC.

Index (TMPG, 0x0B))
                Store (Or (0x00010000, DIDD), 
    1446: 88 54 4D 50 47 0A 0B 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    1456: 49 44 44 00                                      // IDD.

Index (TMPG, 0x0C))
                Store (Or (0x00010000, DIDE), 
    145A: 88 54 4D 50 47 0A 0C 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    146A: 49 44 45 00                                      // IDE.

Index (TMPG, 0x0D))
                Store (Or (0x00010000, DIDF), 
    146E: 88 54 4D 50 47 0A 0D 00 70 7D 0C 00 00 01 00 44  // .TMPG...p}.....D
    147E: 49 44 46 00                                      // IDF.

Index (TMPG, 0x0E))
                Store (0x0002CA00, 
    1482: 88 54 4D 50 47 0A 0E 00 70 0C 00 CA 02 00        // .TMPG...p.....

Index (TMPG, 0x0F))

    1490: 88 54 4D 50 47 0A 0F 00                          // .TMPG...

                Return (TMPG) /* \_SB_.PCI0.GFX0._DOD.TMPG */
            }


    1498: A4 54 4D 50 47                                   // .TMPG

            Return (
    149D: A4                                               // .

Package (0x01)
            {
                0x0400
            })
        }


    149E: 12 05 01 0B 00 04                                // ......

        Device (DD01)
        {

    14A4: 5B 82 42 09 44 44 30 31                          // [.B.DD01

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    14AC: 14 46 04 5F 41 44 52 08                          // .F._ADR.

                If (LEqual (And (0x0F00, DID1), 0x0400))
                {
                    Store (One, EDPV) /* \EDPV */
                    Store (NXD1, NXDX) /* \NXDX */
                    Store (DID1, DIDX) /* \DIDX */

    14B4: A0 28 93 7B 0B 00 0F 44 49 44 31 00 0B 00 04 70  // .(.{...DID1....p
    14C4: 01 45 44 50 56 70 4E 58 44 31 4E 58 44 58 70 44  // .EDPVpNXD1NXDXpD
    14D4: 49 44 31 44 49 44 58                             // ID1DIDX

                    Return (One)
                }


    14DB: A4 01                                            // ..

                If (LEqual (DID1, Zero))
                {

    14DD: A0 09 93 44 49 44 31 00                          // ...DID1.

                    Return (One)
                }

    14E5: A4 01                                            // ..

                Else
                {

    14E7: A1 0B                                            // ..

                    Return (
    14E9: A4                                               // .

And (0xFFFF, DID1))
                }
            }


    14EA: 7B 0B FF FF 44 49 44 31 00                       // {...DID1.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    14F3: 14 0F 5F 44 43 53 00                             // .._DCS.

                Return (CDDS (DID1))
            }


    14FA: A4 43 44 44 53 44 49 44 31                       // .CDDSDID1

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1503: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    150A: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1517: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD1) /* \NXD1 */
                }


    151E: A4 4E 58 44 31                                   // .NXD1

                Return (NDDS (DID1))
            }


    1523: A4 4E 44 44 53 44 49 44 31                       // .NDDSDID1

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    152C: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD02)
        {

    1538: 5B 82 4F 09 44 44 30 32                          // [.O.DD02

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1540: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DID2), 0x0400))
                {
                    Store (0x02, EDPV) /* \EDPV */
                    Store (NXD2, NXDX) /* \NXDX */
                    Store (DID2, DIDX) /* \DIDX */

    1548: A0 2A 93 7B 0B 00 0F 44 49 44 32 00 0B 00 04 70  // .*.{...DID2....p
    1558: 0A 02 45 44 50 56 70 4E 58 44 32 4E 58 44 58 70  // ..EDPVpNXD2NXDXp
    1568: 44 49 44 32 44 49 44 58                          // DID2DIDX

                    Return (0x02)
                }


    1570: A4 0A 02                                         // ...

                If (LEqual (DID2, Zero))
                {

    1573: A0 0A 93 44 49 44 32 00                          // ...DID2.

                    Return (0x02)
                }

    157B: A4 0A 02                                         // ...

                Else
                {

    157E: A1 0B                                            // ..

                    Return (
    1580: A4                                               // .

And (0xFFFF, DID2))
                }
            }


    1581: 7B 0B FF FF 44 49 44 32 00                       // {...DID2.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    158A: 14 19 5F 44 43 53 00                             // .._DCS.

                If (LEqual (LIDS, Zero))
                {

    1591: A0 09 93 4C 49 44 53 00                          // ...LIDS.

                    Return (Zero)
                }


    1599: A4 00                                            // ..

                Return (CDDS (DID2))
            }


    159B: A4 43 44 44 53 44 49 44 32                       // .CDDSDID2

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    15A4: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    15AB: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    15B8: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD2) /* \NXD2 */
                }


    15BF: A4 4E 58 44 32                                   // .NXD2

                Return (NDDS (DID2))
            }


    15C4: A4 4E 44 44 53 44 49 44 32                       // .NDDSDID2

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    15CD: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD03)
        {

    15D9: 5B 82 42 0A 44 44 30 33                          // [.B.DD03

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    15E1: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DID3), 0x0400))
                {
                    Store (0x03, EDPV) /* \EDPV */
                    Store (NXD3, NXDX) /* \NXDX */
                    Store (DID3, DIDX) /* \DIDX */

    15E9: A0 2A 93 7B 0B 00 0F 44 49 44 33 00 0B 00 04 70  // .*.{...DID3....p
    15F9: 0A 03 45 44 50 56 70 4E 58 44 33 4E 58 44 58 70  // ..EDPVpNXD3NXDXp
    1609: 44 49 44 33 44 49 44 58                          // DID3DIDX

                    Return (0x03)
                }


    1611: A4 0A 03                                         // ...

                If (LEqual (DID3, Zero))
                {

    1614: A0 0A 93 44 49 44 33 00                          // ...DID3.

                    Return (0x03)
                }

    161C: A4 0A 03                                         // ...

                Else
                {

    161F: A1 0B                                            // ..

                    Return (
    1621: A4                                               // .

And (0xFFFF, DID3))
                }
            }


    1622: 7B 0B FF FF 44 49 44 33 00                       // {...DID3.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    162B: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DID3, Zero))
                {

    1632: A0 0A 93 44 49 44 33 00                          // ...DID3.

                    Return (0x0B)
                }

    163A: A4 0A 0B                                         // ...

                Else
                {

    163D: A1 0A                                            // ..

                    Return (CDDS (DID3))
                }
            }


    163F: A4 43 44 44 53 44 49 44 33                       // .CDDSDID3

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1648: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    164F: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    165C: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD3) /* \NXD3 */
                }


    1663: A4 4E 58 44 33                                   // .NXD3

                Return (NDDS (DID3))
            }


    1668: A4 4E 44 44 53 44 49 44 33                       // .NDDSDID3

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1671: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD04)
        {

    167D: 5B 82 42 0A 44 44 30 34                          // [.B.DD04

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1685: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DID4), 0x0400))
                {
                    Store (0x04, EDPV) /* \EDPV */
                    Store (NXD4, NXDX) /* \NXDX */
                    Store (DID4, DIDX) /* \DIDX */

    168D: A0 2A 93 7B 0B 00 0F 44 49 44 34 00 0B 00 04 70  // .*.{...DID4....p
    169D: 0A 04 45 44 50 56 70 4E 58 44 34 4E 58 44 58 70  // ..EDPVpNXD4NXDXp
    16AD: 44 49 44 34 44 49 44 58                          // DID4DIDX

                    Return (0x04)
                }


    16B5: A4 0A 04                                         // ...

                If (LEqual (DID4, Zero))
                {

    16B8: A0 0A 93 44 49 44 34 00                          // ...DID4.

                    Return (0x04)
                }

    16C0: A4 0A 04                                         // ...

                Else
                {

    16C3: A1 0B                                            // ..

                    Return (
    16C5: A4                                               // .

And (0xFFFF, DID4))
                }
            }


    16C6: 7B 0B FF FF 44 49 44 34 00                       // {...DID4.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    16CF: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DID4, Zero))
                {

    16D6: A0 0A 93 44 49 44 34 00                          // ...DID4.

                    Return (0x0B)
                }

    16DE: A4 0A 0B                                         // ...

                Else
                {

    16E1: A1 0A                                            // ..

                    Return (CDDS (DID4))
                }
            }


    16E3: A4 43 44 44 53 44 49 44 34                       // .CDDSDID4

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    16EC: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    16F3: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1700: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD4) /* \NXD4 */
                }


    1707: A4 4E 58 44 34                                   // .NXD4

                Return (NDDS (DID4))
            }


    170C: A4 4E 44 44 53 44 49 44 34                       // .NDDSDID4

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1715: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD05)
        {

    1721: 5B 82 42 0A 44 44 30 35                          // [.B.DD05

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1729: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DID5), 0x0400))
                {
                    Store (0x05, EDPV) /* \EDPV */
                    Store (NXD5, NXDX) /* \NXDX */
                    Store (DID5, DIDX) /* \DIDX */

    1731: A0 2A 93 7B 0B 00 0F 44 49 44 35 00 0B 00 04 70  // .*.{...DID5....p
    1741: 0A 05 45 44 50 56 70 4E 58 44 35 4E 58 44 58 70  // ..EDPVpNXD5NXDXp
    1751: 44 49 44 35 44 49 44 58                          // DID5DIDX

                    Return (0x05)
                }


    1759: A4 0A 05                                         // ...

                If (LEqual (DID5, Zero))
                {

    175C: A0 0A 93 44 49 44 35 00                          // ...DID5.

                    Return (0x05)
                }

    1764: A4 0A 05                                         // ...

                Else
                {

    1767: A1 0B                                            // ..

                    Return (
    1769: A4                                               // .

And (0xFFFF, DID5))
                }
            }


    176A: 7B 0B FF FF 44 49 44 35 00                       // {...DID5.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1773: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DID5, Zero))
                {

    177A: A0 0A 93 44 49 44 35 00                          // ...DID5.

                    Return (0x0B)
                }

    1782: A4 0A 0B                                         // ...

                Else
                {

    1785: A1 0A                                            // ..

                    Return (CDDS (DID5))
                }
            }


    1787: A4 43 44 44 53 44 49 44 35                       // .CDDSDID5

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1790: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    1797: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    17A4: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD5) /* \NXD5 */
                }


    17AB: A4 4E 58 44 35                                   // .NXD5

                Return (NDDS (DID5))
            }


    17B0: A4 4E 44 44 53 44 49 44 35                       // .NDDSDID5

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    17B9: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD06)
        {

    17C5: 5B 82 42 0A 44 44 30 36                          // [.B.DD06

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    17CD: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DID6), 0x0400))
                {
                    Store (0x06, EDPV) /* \EDPV */
                    Store (NXD6, NXDX) /* \NXDX */
                    Store (DID6, DIDX) /* \DIDX */

    17D5: A0 2A 93 7B 0B 00 0F 44 49 44 36 00 0B 00 04 70  // .*.{...DID6....p
    17E5: 0A 06 45 44 50 56 70 4E 58 44 36 4E 58 44 58 70  // ..EDPVpNXD6NXDXp
    17F5: 44 49 44 36 44 49 44 58                          // DID6DIDX

                    Return (0x06)
                }


    17FD: A4 0A 06                                         // ...

                If (LEqual (DID6, Zero))
                {

    1800: A0 0A 93 44 49 44 36 00                          // ...DID6.

                    Return (0x06)
                }

    1808: A4 0A 06                                         // ...

                Else
                {

    180B: A1 0B                                            // ..

                    Return (
    180D: A4                                               // .

And (0xFFFF, DID6))
                }
            }


    180E: 7B 0B FF FF 44 49 44 36 00                       // {...DID6.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1817: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DID6, Zero))
                {

    181E: A0 0A 93 44 49 44 36 00                          // ...DID6.

                    Return (0x0B)
                }

    1826: A4 0A 0B                                         // ...

                Else
                {

    1829: A1 0A                                            // ..

                    Return (CDDS (DID6))
                }
            }


    182B: A4 43 44 44 53 44 49 44 36                       // .CDDSDID6

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1834: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    183B: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1848: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD6) /* \NXD6 */
                }


    184F: A4 4E 58 44 36                                   // .NXD6

                Return (NDDS (DID6))
            }


    1854: A4 4E 44 44 53 44 49 44 36                       // .NDDSDID6

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    185D: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD07)
        {

    1869: 5B 82 42 0A 44 44 30 37                          // [.B.DD07

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1871: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DID7), 0x0400))
                {
                    Store (0x07, EDPV) /* \EDPV */
                    Store (NXD7, NXDX) /* \NXDX */
                    Store (DID7, DIDX) /* \DIDX */

    1879: A0 2A 93 7B 0B 00 0F 44 49 44 37 00 0B 00 04 70  // .*.{...DID7....p
    1889: 0A 07 45 44 50 56 70 4E 58 44 37 4E 58 44 58 70  // ..EDPVpNXD7NXDXp
    1899: 44 49 44 37 44 49 44 58                          // DID7DIDX

                    Return (0x07)
                }


    18A1: A4 0A 07                                         // ...

                If (LEqual (DID7, Zero))
                {

    18A4: A0 0A 93 44 49 44 37 00                          // ...DID7.

                    Return (0x07)
                }

    18AC: A4 0A 07                                         // ...

                Else
                {

    18AF: A1 0B                                            // ..

                    Return (
    18B1: A4                                               // .

And (0xFFFF, DID7))
                }
            }


    18B2: 7B 0B FF FF 44 49 44 37 00                       // {...DID7.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    18BB: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DID7, Zero))
                {

    18C2: A0 0A 93 44 49 44 37 00                          // ...DID7.

                    Return (0x0B)
                }

    18CA: A4 0A 0B                                         // ...

                Else
                {

    18CD: A1 0A                                            // ..

                    Return (CDDS (DID7))
                }
            }


    18CF: A4 43 44 44 53 44 49 44 37                       // .CDDSDID7

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    18D8: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    18DF: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    18EC: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD7) /* \NXD7 */
                }


    18F3: A4 4E 58 44 37                                   // .NXD7

                Return (NDDS (DID7))
            }


    18F8: A4 4E 44 44 53 44 49 44 37                       // .NDDSDID7

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1901: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD08)
        {

    190D: 5B 82 42 0A 44 44 30 38                          // [.B.DD08

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1915: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DID8), 0x0400))
                {
                    Store (0x08, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DID8, DIDX) /* \DIDX */

    191D: A0 2A 93 7B 0B 00 0F 44 49 44 38 00 0B 00 04 70  // .*.{...DID8....p
    192D: 0A 08 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    193D: 44 49 44 38 44 49 44 58                          // DID8DIDX

                    Return (0x08)
                }


    1945: A4 0A 08                                         // ...

                If (LEqual (DID8, Zero))
                {

    1948: A0 0A 93 44 49 44 38 00                          // ...DID8.

                    Return (0x08)
                }

    1950: A4 0A 08                                         // ...

                Else
                {

    1953: A1 0B                                            // ..

                    Return (
    1955: A4                                               // .

And (0xFFFF, DID8))
                }
            }


    1956: 7B 0B FF FF 44 49 44 38 00                       // {...DID8.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    195F: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DID8, Zero))
                {

    1966: A0 0A 93 44 49 44 38 00                          // ...DID8.

                    Return (0x0B)
                }

    196E: A4 0A 0B                                         // ...

                Else
                {

    1971: A1 0A                                            // ..

                    Return (CDDS (DID8))
                }
            }


    1973: A4 43 44 44 53 44 49 44 38                       // .CDDSDID8

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    197C: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    1983: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1990: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1997: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DID8))
            }


    199C: A4 4E 44 44 53 44 49 44 38                       // .NDDSDID8

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    19A5: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD09)
        {

    19B1: 5B 82 42 0A 44 44 30 39                          // [.B.DD09

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    19B9: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DID9), 0x0400))
                {
                    Store (0x09, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DID9, DIDX) /* \DIDX */

    19C1: A0 2A 93 7B 0B 00 0F 44 49 44 39 00 0B 00 04 70  // .*.{...DID9....p
    19D1: 0A 09 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    19E1: 44 49 44 39 44 49 44 58                          // DID9DIDX

                    Return (0x09)
                }


    19E9: A4 0A 09                                         // ...

                If (LEqual (DID9, Zero))
                {

    19EC: A0 0A 93 44 49 44 39 00                          // ...DID9.

                    Return (0x09)
                }

    19F4: A4 0A 09                                         // ...

                Else
                {

    19F7: A1 0B                                            // ..

                    Return (
    19F9: A4                                               // .

And (0xFFFF, DID9))
                }
            }


    19FA: 7B 0B FF FF 44 49 44 39 00                       // {...DID9.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1A03: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DID9, Zero))
                {

    1A0A: A0 0A 93 44 49 44 39 00                          // ...DID9.

                    Return (0x0B)
                }

    1A12: A4 0A 0B                                         // ...

                Else
                {

    1A15: A1 0A                                            // ..

                    Return (CDDS (DID9))
                }
            }


    1A17: A4 43 44 44 53 44 49 44 39                       // .CDDSDID9

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1A20: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    1A27: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1A34: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1A3B: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DID9))
            }


    1A40: A4 4E 44 44 53 44 49 44 39                       // .NDDSDID9

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1A49: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0A)
        {

    1A55: 5B 82 42 0A 44 44 30 41                          // [.B.DD0A

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1A5D: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DIDA), 0x0400))
                {
                    Store (0x0A, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDA, DIDX) /* \DIDX */

    1A65: A0 2A 93 7B 0B 00 0F 44 49 44 41 00 0B 00 04 70  // .*.{...DIDA....p
    1A75: 0A 0A 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1A85: 44 49 44 41 44 49 44 58                          // DIDADIDX

                    Return (0x0A)
                }


    1A8D: A4 0A 0A                                         // ...

                If (LEqual (DIDA, Zero))
                {

    1A90: A0 0A 93 44 49 44 41 00                          // ...DIDA.

                    Return (0x0A)
                }

    1A98: A4 0A 0A                                         // ...

                Else
                {

    1A9B: A1 0B                                            // ..

                    Return (
    1A9D: A4                                               // .

And (0xFFFF, DIDA))
                }
            }


    1A9E: 7B 0B FF FF 44 49 44 41 00                       // {...DIDA.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1AA7: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DIDA, Zero))
                {

    1AAE: A0 0A 93 44 49 44 41 00                          // ...DIDA.

                    Return (0x0B)
                }

    1AB6: A4 0A 0B                                         // ...

                Else
                {

    1AB9: A1 0A                                            // ..

                    Return (CDDS (DIDA))
                }
            }


    1ABB: A4 43 44 44 53 44 49 44 41                       // .CDDSDIDA

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1AC4: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    1ACB: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1AD8: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1ADF: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDA))
            }


    1AE4: A4 4E 44 44 53 44 49 44 41                       // .NDDSDIDA

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1AED: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0B)
        {

    1AF9: 5B 82 42 0A 44 44 30 42                          // [.B.DD0B

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1B01: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DIDB), 0x0400))
                {
                    Store (0x0B, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDB, DIDX) /* \DIDX */

    1B09: A0 2A 93 7B 0B 00 0F 44 49 44 42 00 0B 00 04 70  // .*.{...DIDB....p
    1B19: 0A 0B 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1B29: 44 49 44 42 44 49 44 58                          // DIDBDIDX

                    Return (0x0B)
                }


    1B31: A4 0A 0B                                         // ...

                If (LEqual (DIDB, Zero))
                {

    1B34: A0 0A 93 44 49 44 42 00                          // ...DIDB.

                    Return (0x0B)
                }

    1B3C: A4 0A 0B                                         // ...

                Else
                {

    1B3F: A1 0B                                            // ..

                    Return (
    1B41: A4                                               // .

And (0xFFFF, DIDB))
                }
            }


    1B42: 7B 0B FF FF 44 49 44 42 00                       // {...DIDB.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1B4B: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DIDB, Zero))
                {

    1B52: A0 0A 93 44 49 44 42 00                          // ...DIDB.

                    Return (0x0B)
                }

    1B5A: A4 0A 0B                                         // ...

                Else
                {

    1B5D: A1 0A                                            // ..

                    Return (CDDS (DIDB))
                }
            }


    1B5F: A4 43 44 44 53 44 49 44 42                       // .CDDSDIDB

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1B68: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    1B6F: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1B7C: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1B83: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDB))
            }


    1B88: A4 4E 44 44 53 44 49 44 42                       // .NDDSDIDB

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1B91: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0C)
        {

    1B9D: 5B 82 42 0A 44 44 30 43                          // [.B.DD0C

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1BA5: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DIDC), 0x0400))
                {
                    Store (0x0C, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDC, DIDX) /* \DIDX */

    1BAD: A0 2A 93 7B 0B 00 0F 44 49 44 43 00 0B 00 04 70  // .*.{...DIDC....p
    1BBD: 0A 0C 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1BCD: 44 49 44 43 44 49 44 58                          // DIDCDIDX

                    Return (0x0C)
                }


    1BD5: A4 0A 0C                                         // ...

                If (LEqual (DIDC, Zero))
                {

    1BD8: A0 0A 93 44 49 44 43 00                          // ...DIDC.

                    Return (0x0C)
                }

    1BE0: A4 0A 0C                                         // ...

                Else
                {

    1BE3: A1 0B                                            // ..

                    Return (
    1BE5: A4                                               // .

And (0xFFFF, DIDC))
                }
            }


    1BE6: 7B 0B FF FF 44 49 44 43 00                       // {...DIDC.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1BEF: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DIDC, Zero))
                {

    1BF6: A0 0A 93 44 49 44 43 00                          // ...DIDC.

                    Return (0x0C)
                }

    1BFE: A4 0A 0C                                         // ...

                Else
                {

    1C01: A1 0A                                            // ..

                    Return (CDDS (DIDC))
                }
            }


    1C03: A4 43 44 44 53 44 49 44 43                       // .CDDSDIDC

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1C0C: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    1C13: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1C20: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1C27: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDC))
            }


    1C2C: A4 4E 44 44 53 44 49 44 43                       // .NDDSDIDC

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1C35: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0D)
        {

    1C41: 5B 82 42 0A 44 44 30 44                          // [.B.DD0D

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1C49: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DIDD), 0x0400))
                {
                    Store (0x0D, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDD, DIDX) /* \DIDX */

    1C51: A0 2A 93 7B 0B 00 0F 44 49 44 44 00 0B 00 04 70  // .*.{...DIDD....p
    1C61: 0A 0D 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1C71: 44 49 44 44 44 49 44 58                          // DIDDDIDX

                    Return (0x0D)
                }


    1C79: A4 0A 0D                                         // ...

                If (LEqual (DIDD, Zero))
                {

    1C7C: A0 0A 93 44 49 44 44 00                          // ...DIDD.

                    Return (0x0D)
                }

    1C84: A4 0A 0D                                         // ...

                Else
                {

    1C87: A1 0B                                            // ..

                    Return (
    1C89: A4                                               // .

And (0xFFFF, DIDD))
                }
            }


    1C8A: 7B 0B FF FF 44 49 44 44 00                       // {...DIDD.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1C93: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DIDD, Zero))
                {

    1C9A: A0 0A 93 44 49 44 44 00                          // ...DIDD.

                    Return (0x0D)
                }

    1CA2: A4 0A 0D                                         // ...

                Else
                {

    1CA5: A1 0A                                            // ..

                    Return (CDDS (DIDD))
                }
            }


    1CA7: A4 43 44 44 53 44 49 44 44                       // .CDDSDIDD

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1CB0: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    1CB7: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1CC4: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1CCB: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDD))
            }


    1CD0: A4 4E 44 44 53 44 49 44 44                       // .NDDSDIDD

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1CD9: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0E)
        {

    1CE5: 5B 82 42 0A 44 44 30 45                          // [.B.DD0E

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1CED: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DIDE), 0x0400))
                {
                    Store (0x0E, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDE, DIDX) /* \DIDX */

    1CF5: A0 2A 93 7B 0B 00 0F 44 49 44 45 00 0B 00 04 70  // .*.{...DIDE....p
    1D05: 0A 0E 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1D15: 44 49 44 45 44 49 44 58                          // DIDEDIDX

                    Return (0x0E)
                }


    1D1D: A4 0A 0E                                         // ...

                If (LEqual (DIDE, Zero))
                {

    1D20: A0 0A 93 44 49 44 45 00                          // ...DIDE.

                    Return (0x0E)
                }

    1D28: A4 0A 0E                                         // ...

                Else
                {

    1D2B: A1 0B                                            // ..

                    Return (
    1D2D: A4                                               // .

And (0xFFFF, DIDE))
                }
            }


    1D2E: 7B 0B FF FF 44 49 44 45 00                       // {...DIDE.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1D37: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DIDE, Zero))
                {

    1D3E: A0 0A 93 44 49 44 45 00                          // ...DIDE.

                    Return (0x0E)
                }

    1D46: A4 0A 0E                                         // ...

                Else
                {

    1D49: A1 0A                                            // ..

                    Return (CDDS (DIDE))
                }
            }


    1D4B: A4 43 44 44 53 44 49 44 45                       // .CDDSDIDE

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1D54: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    1D5B: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1D68: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1D6F: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDE))
            }


    1D74: A4 4E 44 44 53 44 49 44 45                       // .NDDSDIDE

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1D7D: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD0F)
        {

    1D89: 5B 82 42 0A 44 44 30 46                          // [.B.DD0F

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1D91: 14 49 04 5F 41 44 52 08                          // .I._ADR.

                If (LEqual (And (0x0F00, DIDF), 0x0400))
                {
                    Store (0x0F, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDF, DIDX) /* \DIDX */

    1D99: A0 2A 93 7B 0B 00 0F 44 49 44 46 00 0B 00 04 70  // .*.{...DIDF....p
    1DA9: 0A 0F 45 44 50 56 70 4E 58 44 38 4E 58 44 58 70  // ..EDPVpNXD8NXDXp
    1DB9: 44 49 44 46 44 49 44 58                          // DIDFDIDX

                    Return (0x0F)
                }


    1DC1: A4 0A 0F                                         // ...

                If (LEqual (DIDF, Zero))
                {

    1DC4: A0 0A 93 44 49 44 46 00                          // ...DIDF.

                    Return (0x0F)
                }

    1DCC: A4 0A 0F                                         // ...

                Else
                {

    1DCF: A1 0B                                            // ..

                    Return (
    1DD1: A4                                               // .

And (0xFFFF, DIDF))
                }
            }


    1DD2: 7B 0B FF FF 44 49 44 46 00                       // {...DIDF.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1DDB: 14 1C 5F 44 43 53 00                             // .._DCS.

                If (LEqual (DIDC, Zero))
                {

    1DE2: A0 0A 93 44 49 44 43 00                          // ...DIDC.

                    Return (0x0F)
                }

    1DEA: A4 0A 0F                                         // ...

                Else
                {

    1DED: A1 0A                                            // ..

                    Return (CDDS (DIDF))
                }
            }


    1DEF: A4 43 44 44 53 44 49 44 46                       // .CDDSDIDF

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1DF8: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    1DFF: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1E0C: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXD8) /* \NXD8 */
                }


    1E13: A4 4E 58 44 38                                   // .NXD8

                Return (NDDS (DIDF))
            }


    1E18: A4 4E 44 44 53 44 49 44 46                       // .NDDSDIDF

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }


    1E21: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

        Device (DD1F)
        {

    1E2D: 5B 82 40 1E 44 44 31 46                          // [.@.DD1F

            Method (_ADR, 0, Serialized)  // _ADR: Address
            {

    1E35: 14 1D 5F 41 44 52 08                             // .._ADR.

                If (LEqual (EDPV, Zero))
                {

    1E3C: A0 0A 93 45 44 50 56 00                          // ...EDPV.

                    Return (0x1F)
                }

    1E44: A4 0A 1F                                         // ...

                Else
                {

    1E47: A1 0B                                            // ..

                    Return (
    1E49: A4                                               // .

And (0xFFFF, DIDX))
                }
            }


    1E4A: 7B 0B FF FF 44 49 44 58 00                       // {...DIDX.

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {

    1E53: 14 1B 5F 44 43 53 00                             // .._DCS.

                If (LEqual (EDPV, Zero))
                {

    1E5A: A0 09 93 45 44 50 56 00                          // ...EDPV.

                    Return (Zero)
                }

    1E62: A4 00                                            // ..

                Else
                {

    1E64: A1 0A                                            // ..

                    Return (CDDS (DIDX))
                }
            }


    1E66: A4 43 44 44 53 44 49 44 58                       // .CDDSDIDX

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {

    1E6F: 14 28 5F 44 47 53 00                             // .(_DGS.

                If (LAnd (LEqual (And (SGMD, 0x7F), One), 
    1E76: A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01           // ....{SGMD....

CondRefOf (SNXD)))
                {

    1E83: 5B 12 53 4E 58 44 00                             // [.SNXD.

                    Return (NXDX) /* \NXDX */
                }


    1E8A: A4 4E 58 44 58                                   // .NXDX

                Return (NDDS (DIDX))
            }


    1E8F: A4 4E 44 44 53 44 49 44 58                       // .NDDSDIDX

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }


    1E98: 14 0B 5F 44 53 53 01 44 53 53 54 68              // .._DSS.DSSTh

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {

    1EA4: 14 40 13 5F 42 43 4C 00                          // .@._BCL.

                If (\_OSI ("Linux"))
                {

    1EAC: A0 2A 5C 5F 4F 53 49 0D 4C 69 6E 75 78 00        // .*\_OSI.Linux.

                    Return (
    1EBA: A4                                               // .

Package (0x0D)
                    {
                        0x64, 
                        0x43, 
                        One, 
                        0x02, 
                        0x03, 
                        0x05, 
                        0x08, 
                        0x0C, 
                        0x12, 
                        0x1B, 
                        0x27, 
                        0x43, 
                        0x64
                    })
                }

    1EBB: 12 1B 0D 0A 64 0A 43 01 0A 02 0A 03 0A 05 0A 08  // ....d.C.........
    1ECB: 0A 0C 0A 12 0A 1B 0A 27 0A 43 0A 64              // .......'.C.d

                ElseIf
    1ED7: A1 4D 0F                                         // .M.

 (LEqual (OSYS, 0x07D9))
                {

    1EDA: A0 26 93 4F 53 59 53 0B D9 07                    // .&.OSYS...

                    Return (
    1EE4: A4                                               // .

Package (0x0D)
                    {
                        0x64, 
                        0x43, 
                        One, 
                        0x14, 
                        0x1E, 
                        0x28, 
                        0x3A, 
                        0x40, 
                        0x46, 
                        0x52, 
                        0x58, 
                        0x5E, 
                        0x64
                    })
                }

    1EE5: 12 1B 0D 0A 64 0A 43 01 0A 14 0A 1E 0A 28 0A 3A  // ....d.C......(.:
    1EF5: 0A 40 0A 46 0A 52 0A 58 0A 5E 0A 64              // .@.F.R.X.^.d

                Else
                {

    1F01: A1 43 0D                                         // .C.

                    Return (
    1F04: A4                                               // .

Package (0x67)
                    {
                        0x50, 
                        0x32, 
                        Zero, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }
            }


    1F05: 12 4F 0C 67 0A 50 0A 32 00 01 0A 02 0A 03 0A 04  // .O.g.P.2........
    1F15: 0A 05 0A 06 0A 07 0A 08 0A 09 0A 0A 0A 0B 0A 0C  // ................
    1F25: 0A 0D 0A 0E 0A 0F 0A 10 0A 11 0A 12 0A 13 0A 14  // ................
    1F35: 0A 15 0A 16 0A 17 0A 18 0A 19 0A 1A 0A 1B 0A 1C  // ................
    1F45: 0A 1D 0A 1E 0A 1F 0A 20 0A 21 0A 22 0A 23 0A 24  // ....... .!.".#.$
    1F55: 0A 25 0A 26 0A 27 0A 28 0A 29 0A 2A 0A 2B 0A 2C  // .%.&.'.(.).*.+.,
    1F65: 0A 2D 0A 2E 0A 2F 0A 30 0A 31 0A 32 0A 33 0A 34  // .-.../.0.1.2.3.4
    1F75: 0A 35 0A 36 0A 37 0A 38 0A 39 0A 3A 0A 3B 0A 3C  // .5.6.7.8.9.:.;.<
    1F85: 0A 3D 0A 3E 0A 3F 0A 40 0A 41 0A 42 0A 43 0A 44  // .=.>.?.@.A.B.C.D
    1F95: 0A 45 0A 46 0A 47 0A 48 0A 49 0A 4A 0A 4B 0A 4C  // .E.F.G.H.I.J.K.L
    1FA5: 0A 4D 0A 4E 0A 4F 0A 50 0A 51 0A 52 0A 53 0A 54  // .M.N.O.P.Q.R.S.T
    1FB5: 0A 55 0A 56 0A 57 0A 58 0A 59 0A 5A 0A 5B 0A 5C  // .U.V.W.X.Y.Z.[.\
    1FC5: 0A 5D 0A 5E 0A 5F 0A 60 0A 61 0A 62 0A 63 0A 64  // .].^._.`.a.b.c.d

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {

    1FD5: 14 2D 5F 42 43 4D 01                             // .-_BCM.

                If (LAnd (
    1FDC: A0 26 90 92                                      // .&..

LGreaterEqual (Arg0, Zero), 
    1FE0: 95 68 00                                         // .h.


    1FE3: 92                                               // .

LLessEqual (Arg0, 0x64)))
                {
                    \_SB.PCI0.GFX0.AINT (One, Arg0)

    1FE4: 94 68 0A 64 5C 2F 04 5F 53 42 5F 50 43 49 30 47  // .h.d\/._SB_PCI0G
    1FF4: 46 58 30 41 49 4E 54 01 68                       // FX0AINT.h

                    Store (Arg0, BRTL) /* \BRTL */
                }
            }


    1FFD: 70 68 42 52 54 4C                                // phBRTL

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {

    2003: 14 0B 5F 42 51 43 00                             // .._BQC.

                Return (BRTL) /* \BRTL */
            }
        }


    200A: A4 42 52 54 4C                                   // .BRTL

        Method (SDDL, 1, NotSerialized)
        {
            Increment (NDID)
            Store (And (Arg0, 0x0F0F), Local0)
            Or (0x80000000, Local0, Local1)

    200F: 14 44 0B 53 44 44 4C 01 75 4E 44 49 44 70 7B 68  // .D.SDDL.uNDIDp{h
    201F: 0B 0F 0F 00 60 7D 0C 00 00 00 80 60 61           // ....`}.....`a

            If (LEqual (DIDL, Local0))
            {

    202C: A0 09 93 44 49 44 4C 60                          // ...DIDL`

                Return (Local1)
            }


    2034: A4 61                                            // .a

            If (LEqual (DDL2, Local0))
            {

    2036: A0 09 93 44 44 4C 32 60                          // ...DDL2`

                Return (Local1)
            }


    203E: A4 61                                            // .a

            If (LEqual (DDL3, Local0))
            {

    2040: A0 09 93 44 44 4C 33 60                          // ...DDL3`

                Return (Local1)
            }


    2048: A4 61                                            // .a

            If (LEqual (DDL4, Local0))
            {

    204A: A0 09 93 44 44 4C 34 60                          // ...DDL4`

                Return (Local1)
            }


    2052: A4 61                                            // .a

            If (LEqual (DDL5, Local0))
            {

    2054: A0 09 93 44 44 4C 35 60                          // ...DDL5`

                Return (Local1)
            }


    205C: A4 61                                            // .a

            If (LEqual (DDL6, Local0))
            {

    205E: A0 09 93 44 44 4C 36 60                          // ...DDL6`

                Return (Local1)
            }


    2066: A4 61                                            // .a

            If (LEqual (DDL7, Local0))
            {

    2068: A0 09 93 44 44 4C 37 60                          // ...DDL7`

                Return (Local1)
            }


    2070: A4 61                                            // .a

            If (LEqual (DDL8, Local0))
            {

    2072: A0 09 93 44 44 4C 38 60                          // ...DDL8`

                Return (Local1)
            }


    207A: A4 61                                            // .a

            If (LEqual (DDL9, Local0))
            {

    207C: A0 09 93 44 44 4C 39 60                          // ...DDL9`

                Return (Local1)
            }


    2084: A4 61                                            // .a

            If (LEqual (DD10, Local0))
            {

    2086: A0 09 93 44 44 31 30 60                          // ...DD10`

                Return (Local1)
            }


    208E: A4 61                                            // .a

            If (LEqual (DD11, Local0))
            {

    2090: A0 09 93 44 44 31 31 60                          // ...DD11`

                Return (Local1)
            }


    2098: A4 61                                            // .a

            If (LEqual (DD12, Local0))
            {

    209A: A0 09 93 44 44 31 32 60                          // ...DD12`

                Return (Local1)
            }


    20A2: A4 61                                            // .a

            If (LEqual (DD13, Local0))
            {

    20A4: A0 09 93 44 44 31 33 60                          // ...DD13`

                Return (Local1)
            }


    20AC: A4 61                                            // .a

            If (LEqual (DD14, Local0))
            {

    20AE: A0 09 93 44 44 31 34 60                          // ...DD14`

                Return (Local1)
            }


    20B6: A4 61                                            // .a

            If (LEqual (DD15, Local0))
            {

    20B8: A0 09 93 44 44 31 35 60                          // ...DD15`

                Return (Local1)
            }


    20C0: A4 61                                            // .a

            Return (Zero)
        }


    20C2: A4 00                                            // ..

        Method (CDDS, 1, NotSerialized)
        {
            Store (And (Arg0, 0x0F0F), Local0)

    20C4: 14 42 07 43 44 44 53 01 70 7B 68 0B 0F 0F 00 60  // .B.CDDS.p{h....`

            If (LEqual (Zero, Local0))
            {

    20D4: A0 07 93 00 60                                   // ....`

                Return (0x1D)
            }


    20D9: A4 0A 1D                                         // ...

            If (LEqual (CADL, Local0))
            {

    20DC: A0 0A 93 43 41 44 4C 60                          // ...CADL`

                Return (0x1F)
            }


    20E4: A4 0A 1F                                         // ...

            If (LEqual (CAL2, Local0))
            {

    20E7: A0 0A 93 43 41 4C 32 60                          // ...CAL2`

                Return (0x1F)
            }


    20EF: A4 0A 1F                                         // ...

            If (LEqual (CAL3, Local0))
            {

    20F2: A0 0A 93 43 41 4C 33 60                          // ...CAL3`

                Return (0x1F)
            }


    20FA: A4 0A 1F                                         // ...

            If (LEqual (CAL4, Local0))
            {

    20FD: A0 0A 93 43 41 4C 34 60                          // ...CAL4`

                Return (0x1F)
            }


    2105: A4 0A 1F                                         // ...

            If (LEqual (CAL5, Local0))
            {

    2108: A0 0A 93 43 41 4C 35 60                          // ...CAL5`

                Return (0x1F)
            }


    2110: A4 0A 1F                                         // ...

            If (LEqual (CAL6, Local0))
            {

    2113: A0 0A 93 43 41 4C 36 60                          // ...CAL6`

                Return (0x1F)
            }


    211B: A4 0A 1F                                         // ...

            If (LEqual (CAL7, Local0))
            {

    211E: A0 0A 93 43 41 4C 37 60                          // ...CAL7`

                Return (0x1F)
            }


    2126: A4 0A 1F                                         // ...

            If (LEqual (CAL8, Local0))
            {

    2129: A0 0A 93 43 41 4C 38 60                          // ...CAL8`

                Return (0x1F)
            }


    2131: A4 0A 1F                                         // ...

            Return (0x1D)
        }


    2134: A4 0A 1D                                         // ...

        Method (NDDS, 1, NotSerialized)
        {
            Store (And (Arg0, 0x0F0F), Local0)

    2137: 14 48 06 4E 44 44 53 01 70 7B 68 0B 0F 0F 00 60  // .H.NDDS.p{h....`

            If (LEqual (Zero, Local0))
            {

    2147: A0 06 93 00 60                                   // ....`

                Return (Zero)
            }


    214C: A4 00                                            // ..

            If (LEqual (NADL, Local0))
            {

    214E: A0 09 93 4E 41 44 4C 60                          // ...NADL`

                Return (One)
            }


    2156: A4 01                                            // ..

            If (LEqual (NDL2, Local0))
            {

    2158: A0 09 93 4E 44 4C 32 60                          // ...NDL2`

                Return (One)
            }


    2160: A4 01                                            // ..

            If (LEqual (NDL3, Local0))
            {

    2162: A0 09 93 4E 44 4C 33 60                          // ...NDL3`

                Return (One)
            }


    216A: A4 01                                            // ..

            If (LEqual (NDL4, Local0))
            {

    216C: A0 09 93 4E 44 4C 34 60                          // ...NDL4`

                Return (One)
            }


    2174: A4 01                                            // ..

            If (LEqual (NDL5, Local0))
            {

    2176: A0 09 93 4E 44 4C 35 60                          // ...NDL5`

                Return (One)
            }


    217E: A4 01                                            // ..

            If (LEqual (NDL6, Local0))
            {

    2180: A0 09 93 4E 44 4C 36 60                          // ...NDL6`

                Return (One)
            }


    2188: A4 01                                            // ..

            If (LEqual (NDL7, Local0))
            {

    218A: A0 09 93 4E 44 4C 37 60                          // ...NDL7`

                Return (One)
            }


    2192: A4 01                                            // ..

            If (LEqual (NDL8, Local0))
            {

    2194: A0 09 93 4E 44 4C 38 60                          // ...NDL8`

                Return (One)
            }


    219C: A4 01                                            // ..

            Return (Zero)
        }


    219E: A4 00                                            // ..

        Method (DSST, 1, NotSerialized)
        {

    21A0: 14 1F 44 53 53 54 01                             // ..DSST.

            If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
            {

    21A7: A0 18 93 7B 68 0C 00 00 00 C0 00 0C 00 00 00 C0  // ...{h...........

                Store (NSTE, CSTE) /* \CSTE */
            }
        }


    21B7: 70 4E 53 54 45 43 53 54 45                       // pNSTECSTE

        Scope (\_SB.PCI0)
        {

    21C0: 10 30 5C 2E 5F 53 42 5F 50 43 49 30              // .0\._SB_PCI0

            OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)

    21CC: 5B 80 4D 43 48 50 02 0A 40 0A C0                 // [.MCHP..@..

            Field (MCHP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x14), 
                AUDE,   8, 
                Offset (0x60), 
                TASM,   10, 
                Offset (0x62)
            }
        }


    21D7: 5B 81 18 4D 43 48 50 00 00 40 0A 41 55 44 45 08  // [..MCHP..@.AUDE.
    21E7: 00 48 25 54 41 53 4D 0A 00 06                    // .H%TASM...

        OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)

    21F1: 5B 80 49 47 44 50 02 0A 40 0A C0                 // [.IGDP..@..

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


    21FC: 5B 81 47 05 49 47 44 50 00 00 40 08 00 01 47 49  // [.G.IGDP..@...GI
    220C: 56 44 01 00 02 47 55 4D 41 03 00 09 00 10 00 04  // VD...GUMA.......
    221C: 47 4D 46 4E 01 00 1B 00 40 46 41 53 4C 45 08 00  // GMFN....@FASLE..
    222C: 18 47 53 53 45 01 47 53 53 42 0E 47 53 45 53 01  // .GSSE.GSSB.GSES.
    223C: 00 30 00 0C 43 44 56 4C 01 00 03 00 18 4C 42 50  // .0..CDVL.....LBP
    224C: 43 08 00 30 41 53 4C 53 20                       // C..0ASLS 

        OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)

    2255: 5B 80 49 47 44 4D 00 41 53 4C 42 0B 00 20        // [.IGDM.ASLB.. 

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
            FDSP,   64, 
            FDSS,   32, 
            STAT,   32, 
            Offset (0x400), 
            GVD1,   49152, 
            PHED,   32, 
            BDDC,   2048
        }


    2263: 5B 81 42 20 49 47 44 4D 00 53 49 47 4E 40 08 53  // [.B IGDM.SIGN@.S
    2273: 49 5A 45 20 4F 56 45 52 20 53 56 45 52 40 10 56  // IZE OVER SVER@.V
    2283: 56 45 52 40 08 47 56 45 52 40 08 4D 42 4F 58 20  // VER@.GVER@.MBOX 
    2293: 44 4D 4F 44 20 50 43 4F 4E 20 44 56 45 52 40 04  // DMOD PCON DVER@.
    22A3: 00 40 4A 44 52 44 59 20 43 53 54 53 20 43 45 56  // .@JDRDY CSTS CEV
    22B3: 54 20 00 40 0A 44 49 44 4C 20 44 44 4C 32 20 44  // T .@.DIDL DDL2 D
    22C3: 44 4C 33 20 44 44 4C 34 20 44 44 4C 35 20 44 44  // DL3 DDL4 DDL5 DD
    22D3: 4C 36 20 44 44 4C 37 20 44 44 4C 38 20 43 50 44  // L6 DDL7 DDL8 CPD
    22E3: 4C 20 43 50 4C 32 20 43 50 4C 33 20 43 50 4C 34  // L CPL2 CPL3 CPL4
    22F3: 20 43 50 4C 35 20 43 50 4C 36 20 43 50 4C 37 20  //  CPL5 CPL6 CPL7 
    2303: 43 50 4C 38 20 43 41 44 4C 20 43 41 4C 32 20 43  // CPL8 CADL CAL2 C
    2313: 41 4C 33 20 43 41 4C 34 20 43 41 4C 35 20 43 41  // AL3 CAL4 CAL5 CA
    2323: 4C 36 20 43 41 4C 37 20 43 41 4C 38 20 4E 41 44  // L6 CAL7 CAL8 NAD
    2333: 4C 20 4E 44 4C 32 20 4E 44 4C 33 20 4E 44 4C 34  // L NDL2 NDL3 NDL4
    2343: 20 4E 44 4C 35 20 4E 44 4C 36 20 4E 44 4C 37 20  //  NDL5 NDL6 NDL7 
    2353: 4E 44 4C 38 20 41 53 4C 50 20 54 49 44 58 20 43  // NDL8 ASLP TIDX C
    2363: 48 50 44 20 43 4C 49 44 20 43 44 43 4B 20 53 58  // HPD CLID CDCK SX
    2373: 53 57 20 45 56 54 53 20 43 4E 4F 54 20 4E 52 44  // SW EVTS CNOT NRD
    2383: 59 20 44 44 4C 39 20 44 44 31 30 20 44 44 31 31  // Y DDL9 DD10 DD11
    2393: 20 44 44 31 32 20 44 44 31 33 20 44 44 31 34 20  //  DD12 DD13 DD14 
    23A3: 44 44 31 35 20 43 50 4C 39 20 43 50 31 30 20 43  // DD15 CPL9 CP10 C
    23B3: 50 31 31 20 43 50 31 32 20 43 50 31 33 20 43 50  // P11 CP12 CP13 CP
    23C3: 31 34 20 43 50 31 35 20 00 20 53 43 49 45 01 47  // 14 CP15 . SCIE.G
    23D3: 45 46 43 04 47 58 46 43 03 47 45 53 46 08 00 10  // EFC.GXFC.GESF...
    23E3: 50 41 52 4D 20 44 53 4C 50 20 00 40 7A 41 52 44  // PARM DSLP .@zARD
    23F3: 59 20 41 53 4C 43 20 54 43 48 45 20 41 4C 53 49  // Y ASLC TCHE ALSI
    2403: 20 42 43 4C 50 20 50 46 49 54 20 43 42 4C 56 20  //  BCLP PFIT CBLV 
    2413: 42 43 4C 4D 40 14 43 50 46 4D 20 45 50 46 4D 20  // BCLM@.CPFM EPFM 
    2423: 50 4C 55 54 40 25 50 46 4D 42 20 43 43 44 56 20  // PLUT@%PFMB CCDV 
    2433: 50 43 46 54 20 53 52 4F 54 20 49 55 45 52 20 46  // PCFT SROT IUER F
    2443: 44 53 50 40 04 46 44 53 53 20 53 54 41 54 20 00  // DSP@.FDSS STAT .
    2453: 40 23 47 56 44 31 80 00 0C 50 48 45 44 20 42 44  // @#GVD1...PHED BD
    2463: 44 43 40 80                                      // DC@.

        Name (DBTB, 
    2467: 08 44 42 54 42                                   // .DBTB

Package (0x15)
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

    246C: 12 32 15 00 0A 07 0A 38 0B C0 01 0B 00 0E 0A 3F  // .2.....8.......?
    247C: 0B C7 01 0B 07 0E 0B F8 01 0B 38 0E 0B C0 0F 00  // ..........8.....
    248C: 00 00 00 00 0B 00 70 0B 07 70 0B 38 70 0B C0 71  // ......p..p.8p..q
    249C: 0B 00 7E                                         // ..~

        Name (CDCT, 
    249F: 08 43 44 43 54                                   // .CDCT

Package (0x05)
        {

    24A4: 12 27 05                                         // .'.

            Package (0x02)
            {
                0xE4, 
                0x0140
            }, 


    24A7: 12 07 02 0A E4 0B 40 01                          // ......@.

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 


    24AF: 12 07 02 0A DE 0B 4D 01                          // ......M.

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 


    24B7: 12 07 02 0A DE 0B 4D 01                          // ......M.

            Package (0x02)
            {
                Zero, 
                Zero
            }, 


    24BF: 12 04 02 00 00                                   // .....

            Package (0x02)
            {
                0xDE, 
                0x014D
            }
        })

    24C4: 12 07 02 0A DE 0B 4D 01                          // ......M.

        Name (SUCC, One)

    24CC: 08 53 55 43 43 01                                // .SUCC.

        Name (NVLD, 0x02)

    24D2: 08 4E 56 4C 44 0A 02                             // .NVLD..

        Name (CRIT, 0x04)

    24D9: 08 43 52 49 54 0A 04                             // .CRIT..

        Name (NCRT, 0x06)

    24E0: 08 4E 43 52 54 0A 06                             // .NCRT..

        Method (GSCI, 0, Serialized)
        {

    24E7: 14 49 4E 47 53 43 49 08                          // .INGSCI.

            Method (GBDA, 0, Serialized)
            {

    24EF: 14 40 1D 47 42 44 41 08                          // .@.GBDA.

                If (LEqual (GESF, Zero))
                {
                    Store (0x0659, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */

    24F7: A0 1A 93 47 45 53 46 00 70 0B 59 06 50 41 52 4D  // ...GESF.p.Y.PARM
    2507: 70 00 47 45 53 46                                // p.GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    250D: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, One))
                {
                    Store (0x00300482, PARM) /* \_SB_.PCI0.GFX0.PARM */

    2512: A0 30 93 47 45 53 46 01 70 0C 82 04 30 00 50 41  // .0.GESF.p...0.PA
    2522: 52 4D                                            // RM

                    If (LEqual (S0ID, One))
                    {

    2524: A0 13 93 53 30 49 44 01                          // ...S0ID.

                        Or (PARM, 0x0100, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */

    252C: 7D 50 41 52 4D 0B 00 01 50 41 52 4D 70 00 47 45  // }PARM...PARMp.GE
    253C: 53 46                                            // SF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    253E: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x04))
                {
                    And (PARM, 0xEFFF0000, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    And (PARM, ShiftLeft (DerefOf (
    2543: A0 47 04 93 47 45 53 46 0A 04 7B 50 41 52 4D 0C  // .G..GESF..{PARM.
    2553: 00 00 FF EF 50 41 52 4D 7B 50 41 52 4D 79 83     // ....PARM{PARMy.

Index (DBTB, IBTT)), 0x10), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (IBTT, PARM, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */

    2562: 88 44 42 54 42 49 42 54 54 00 0A 10 00 50 41 52  // .DBTBIBTT....PAR
    2572: 4D 7D 49 42 54 54 50 41 52 4D 50 41 52 4D 70 00  // M}IBTTPARMPARMp.
    2582: 47 45 53 46                                      // GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2586: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x05))
                {
                    Store (IPSC, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, ShiftLeft (IPAT, 0x08), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Add (PARM, 0x0100, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, ShiftLeft (LIDS, 0x10), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Add (PARM, 0x00010000, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, ShiftLeft (IBIA, 0x14), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */

    258B: A0 4A 06 93 47 45 53 46 0A 05 70 49 50 53 43 50  // .J..GESF..pIPSCP
    259B: 41 52 4D 7D 50 41 52 4D 79 49 50 41 54 0A 08 00  // ARM}PARMyIPAT...
    25AB: 50 41 52 4D 72 50 41 52 4D 0B 00 01 50 41 52 4D  // PARMrPARM...PARM
    25BB: 7D 50 41 52 4D 79 4C 49 44 53 0A 10 00 50 41 52  // }PARMyLIDS...PAR
    25CB: 4D 72 50 41 52 4D 0C 00 00 01 00 50 41 52 4D 7D  // MrPARM.....PARM}
    25DB: 50 41 52 4D 79 49 42 49 41 0A 14 00 50 41 52 4D  // PARMyIBIA...PARM
    25EB: 70 00 47 45 53 46                                // p.GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    25F1: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x07))
                {
                    Store (GIVD, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    XOr (PARM, One, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, ShiftLeft (GMFN, One), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, 0x1800, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, ShiftLeft (IDMS, 0x11), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (ShiftLeft (DerefOf (
    25F6: A0 43 07 93 47 45 53 46 0A 07 70 47 49 56 44 50  // .C..GESF..pGIVDP
    2606: 41 52 4D 7F 50 41 52 4D 01 50 41 52 4D 7D 50 41  // ARM.PARM.PARM}PA
    2616: 52 4D 79 47 4D 46 4E 01 00 50 41 52 4D 7D 50 41  // RMyGMFN..PARM}PA
    2626: 52 4D 0B 00 18 50 41 52 4D 7D 50 41 52 4D 79 49  // RM...PARM}PARMyI
    2636: 44 4D 53 0A 11 00 50 41 52 4D 7D 79 83           // DMS...PARM}y.

Index (DerefOf (
    2643: 88 83                                            // ..

Index (CDCT, HVCO)), CDVL)), 0x15
                        ), PARM, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (One, GESF) /* \_SB_.PCI0.GFX0.GESF */

    2645: 88 43 44 43 54 48 56 43 4F 00 43 44 56 4C 00 0A  // .CDCTHVCO.CDVL..
    2655: 15 00 50 41 52 4D 50 41 52 4D 70 01 47 45 53 46  // ..PARMPARMp.GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2665: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x0A))
                {
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    266A: A0 2A 93 47 45 53 46 0A 0A 70 00 50 41 52 4D     // .*.GESF..p.PARM

                    If (ISSC)
                    {

    2679: A0 10 49 53 53 43                                // ..ISSC

                        Or (PARM, 0x03, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */

    267F: 7D 50 41 52 4D 0A 03 50 41 52 4D 70 00 47 45 53  // }PARM..PARMp.GES
    268F: 46                                               // F

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2690: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x0B))
                {
                    Store (KSV0, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (KSV1, GESF) /* \_SB_.PCI0.GFX0.GESF */

    2695: A0 1F 93 47 45 53 46 0A 0B 70 4B 53 56 30 50 41  // ...GESF..pKSV0PA
    26A5: 52 4D 70 4B 53 56 31 47 45 53 46                 // RMpKSV1GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */

    26B0: A4 53 55 43 43 70 00 47 45 53 46                 // .SUCCp.GESF

                Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
            }


    26BB: A4 43 52 49 54                                   // .CRIT

            Method (SBCB, 0, Serialized)
            {

    26C0: 14 42 2D 53 42 43 42 08                          // .B-SBCB.

                If (LEqual (GESF, Zero))
                {
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (0x000F87DD, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */

    26C8: A0 22 93 47 45 53 46 00 70 00 50 41 52 4D 70 0C  // .".GESF.p.PARMp.
    26D8: DD 87 0F 00 50 41 52 4D 70 00 47 45 53 46        // ....PARMp.GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    26E6: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, One))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    26EB: A0 18 93 47 45 53 46 01 70 00 47 45 53 46 70 00  // ...GESF.p.GESFp.
    26FB: 50 41 52 4D                                      // PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    26FF: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x03))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    2704: A0 19 93 47 45 53 46 0A 03 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    2714: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2719: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x04))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    271E: A0 19 93 47 45 53 46 0A 04 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    272E: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2733: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x05))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    2738: A0 19 93 47 45 53 46 0A 05 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    2748: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    274D: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x07))
                {

    2752: A0 4A 07 93 47 45 53 46 0A 07                    // .J..GESF..

                    If (LAnd (LEqual (S0ID, One), 
    275C: A0 34 90 93 53 30 49 44 01                       // .4..S0ID.

LLess (OSYS, 0x07DF)))
                    {

    2765: 95 4F 53 59 53 0B DF 07                          // .OSYS...

                        If (LEqual (And (PARM, 0xFF), One))
                        {
                            \GUAM (One)
                        }


    276D: A0 11 93 7B 50 41 52 4D 0A FF 00 01 5C 47 55 41  // ...{PARM....\GUA
    277D: 4D 01                                            // M.

                        If (LEqual (And (PARM, 0xFF), Zero))
                        {
                            \GUAM (Zero)
                        }
                    }


    277F: A0 11 93 7B 50 41 52 4D 0A FF 00 00 5C 47 55 41  // ...{PARM....\GUA
    278F: 4D 00                                            // M.

                    If (LEqual (PARM, Zero))
                    {
                        Store (CLID, Local0)

    2791: A0 2A 93 50 41 52 4D 00 70 43 4C 49 44 60        // .*.PARM.pCLID`

                        If (And (0x80000000, Local0))
                        {
                            And (CLID, 0x0F, CLID) /* \_SB_.PCI0.GFX0.CLID */
                            GLID (CLID)
                        }
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    279F: A0 1C 7B 0C 00 00 00 80 60 00 7B 43 4C 49 44 0A  // ..{.....`.{CLID.
    27AF: 0F 43 4C 49 44 47 4C 49 44 43 4C 49 44 70 00 47  // .CLIDGLIDCLIDp.G
    27BF: 45 53 46 70 00 50 41 52 4D                       // ESFp.PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    27C8: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x08))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    27CD: A0 19 93 47 45 53 46 0A 08 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    27DD: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    27E2: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x09))
                {
                    And (PARM, 0xFF, IBTT) /* \IBTT */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    27E7: A0 24 93 47 45 53 46 0A 09 7B 50 41 52 4D 0A FF  // .$.GESF..{PARM..
    27F7: 49 42 54 54 70 00 47 45 53 46 70 00 50 41 52 4D  // IBTTp.GESFp.PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2807: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x0A))
                {
                    And (PARM, 0xFF, IPSC) /* \IPSC */

    280C: A0 46 05 93 47 45 53 46 0A 0A 7B 50 41 52 4D 0A  // .F..GESF..{PARM.
    281C: FF 49 50 53 43                                   // .IPSC

                    If (And (ShiftRight (PARM, 0x08), 0xFF))
                    {
                        And (ShiftRight (PARM, 0x08), 0xFF, IPAT) /* \IPAT */

    2821: A0 21 7B 7A 50 41 52 4D 0A 08 00 0A FF 00 7B 7A  // .!{zPARM......{z
    2831: 50 41 52 4D 0A 08 00 0A FF 49 50 41 54           // PARM.....IPAT

                        Decrement (IPAT)
                    }

                    And (ShiftRight (PARM, 0x14), 0x07, IBIA) /* \IBIA */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    283E: 76 49 50 41 54 7B 7A 50 41 52 4D 0A 14 00 0A 07  // vIPAT{zPARM.....
    284E: 49 42 49 41 70 00 47 45 53 46 70 00 50 41 52 4D  // IBIAp.GESFp.PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    285E: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x0B))
                {
                    And (ShiftRight (PARM, One), One, IF1E) /* \IF1E */

    2863: A0 44 05 93 47 45 53 46 0A 0B 7B 7A 50 41 52 4D  // .D..GESF..{zPARM
    2873: 01 00 01 49 46 31 45                             // ...IF1E

                    If (And (PARM, 0x0001E000))
                    {

    287A: A0 1B 7B 50 41 52 4D 0C 00 E0 01 00 00           // ..{PARM......

                        And (ShiftRight (PARM, 0x0D), 0x0F, IDMS) /* \IDMS */
                    }

    2887: 7B 7A 50 41 52 4D 0A 0D 00 0A 0F 49 44 4D 53     // {zPARM.....IDMS

                    Else
                    {

    2896: A1 10                                            // ..

                        And (ShiftRight (PARM, 0x11), 0x0F, IDMS) /* \IDMS */
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    2898: 7B 7A 50 41 52 4D 0A 11 00 0A 0F 49 44 4D 53 70  // {zPARM.....IDMSp
    28A8: 00 47 45 53 46 70 00 50 41 52 4D                 // .GESFp.PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    28B3: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x10))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    28B8: A0 19 93 47 45 53 46 0A 10 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    28C8: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    28CD: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x11))
                {
                    Store (ShiftLeft (LIDS, 0x08), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Add (PARM, 0x0100, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */

    28D2: A0 2C 93 47 45 53 46 0A 11 70 79 4C 49 44 53 0A  // .,.GESF..pyLIDS.
    28E2: 08 00 50 41 52 4D 72 50 41 52 4D 0B 00 01 50 41  // ..PARMrPARM...PA
    28F2: 52 4D 70 00 47 45 53 46                          // RMp.GESF

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    28FA: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x12))
                {

    28FF: A0 49 04 93 47 45 53 46 0A 12                    // .I..GESF..

                    If (And (PARM, One))
                    {

    2909: A0 26 7B 50 41 52 4D 01 00                       // .&{PARM..

                        If (LEqual (ShiftRight (PARM, One), One))
                        {

    2912: A0 10 93 7A 50 41 52 4D 01 00 01                 // ...zPARM...

                            Store (One, ISSC) /* \ISSC */
                        }

    291D: 70 01 49 53 53 43                                // p.ISSC

                        Else
                        {
                            Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */

    2923: A1 0C 70 00 47 45 53 46                          // ..p.GESF

                            Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                        }
                    }

    292B: A4 43 52 49 54                                   // .CRIT

                    Else
                    {

    2930: A1 07                                            // ..

                        Store (Zero, ISSC) /* \ISSC */
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    2932: 70 00 49 53 53 43 70 00 47 45 53 46 70 00 50 41  // p.ISSCp.GESFp.PA
    2942: 52 4D                                            // RM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    2944: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x13))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    2949: A0 19 93 47 45 53 46 0A 13 70 00 47 45 53 46 70  // ...GESF..p.GESFp
    2959: 00 50 41 52 4D                                   // .PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }


    295E: A4 53 55 43 43                                   // .SUCC

                If (LEqual (GESF, 0x14))
                {
                    And (PARM, 0x0F, PAVP) /* \PAVP */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */

    2963: A0 24 93 47 45 53 46 0A 14 7B 50 41 52 4D 0A 0F  // .$.GESF..{PARM..
    2973: 50 41 56 50 70 00 47 45 53 46 70 00 50 41 52 4D  // PAVPp.GESFp.PARM

                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */

    2983: A4 53 55 43 43 70 00 47 45 53 46                 // .SUCCp.GESF

                Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
            }


    298E: A4 53 55 43 43                                   // .SUCC

            If (LEqual (GEFC, 0x04))
            {

    2993: A0 11 93 47 45 46 43 0A 04                       // ...GEFC..

                Store (GBDA (), GXFC) /* \_SB_.PCI0.GFX0.GXFC */
            }


    299C: 70 47 42 44 41 47 58 46 43                       // pGBDAGXFC

            If (LEqual (GEFC, 0x06))
            {

    29A5: A0 11 93 47 45 46 43 0A 06                       // ...GEFC..

                Store (SBCB (), GXFC) /* \_SB_.PCI0.GFX0.GXFC */
            }

            Store (Zero, GEFC) /* \_SB_.PCI0.GFX0.GEFC */
            Store (One, CPSC) /* External reference */
            Store (Zero, GSSE) /* \_SB_.PCI0.GFX0.GSSE */
            Store (Zero, SCIE) /* \_SB_.PCI0.GFX0.SCIE */

    29AE: 70 53 42 43 42 47 58 46 43 70 00 47 45 46 43 70  // pSBCBGXFCp.GEFCp
    29BE: 01 43 50 53 43 70 00 47 53 53 45 70 00 53 43 49  // .CPSCp.GSSEp.SCI
    29CE: 45                                               // E

            Return (Zero)
        }


    29CF: A4 00                                            // ..

        Method (PDRD, 0, NotSerialized)
        {

    29D1: 14 0C 50 44 52 44 00                             // ..PDRD.

            Return (
    29D8: A4                                               // .

LNot (DRDY))
        }


    29D9: 92 44 52 44 59                                   // .DRDY

        Method (PSTS, 0, NotSerialized)
        {

    29DE: 14 1D 50 53 54 53 00                             // ..PSTS.

            If (LGreater (CSTS, 0x02))
            {

    29E5: A0 0E 94 43 53 54 53 0A 02                       // ...CSTS..

                Sleep (ASLP)
            }


    29EE: 5B 22 41 53 4C 50                                // ["ASLP

            Return (
    29F4: A4                                               // .

LEqual (CSTS, 0x03))
        }


    29F5: 93 43 53 54 53 0A 03                             // .CSTS..

        Method (GNOT, 2, NotSerialized)
        {

    29FC: 14 4D 05 47 4E 4F 54 02                          // .M.GNOT.

            If (PDRD ())
            {

    2A04: A0 07 50 44 52 44                                // ..PDRD

                Return (One)
            }

            Store (Arg0, CEVT) /* \_SB_.PCI0.GFX0.CEVT */
            Store (0x03, CSTS) /* \_SB_.PCI0.GFX0.CSTS */

    2A0A: A4 01 70 68 43 45 56 54 70 0A 03 43 53 54 53     // ..phCEVTp..CSTS

            If (LAnd (LEqual (CHPD, Zero), 
    2A19: A0 1C 90 93 43 48 50 44 00                       // ....CHPD.

LEqual (Arg1, Zero)))
            {

    2A22: 93 69 00                                         // .i.

                Notify (\_SB.PCI0.GFX0, Arg1)
            }


    2A25: 86 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46 58 30  // .\/._SB_PCI0GFX0
    2A35: 69                                               // i

            If (CondRefOf (HNOT))
            {
                HNOT (Arg0)
            }

    2A36: A0 0D 5B 12 48 4E 4F 54 00 48 4E 4F 54 68        // ..[.HNOT.HNOTh

            Else
            {

    2A44: A1 13                                            // ..

                Notify (\_SB.PCI0.GFX0, 0x80) // Status Change
            }


    2A46: 86 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46 58 30  // .\/._SB_PCI0GFX0
    2A56: 0A 80                                            // ..

            Return (Zero)
        }


    2A58: A4 00                                            // ..

        Method (GHDS, 1, NotSerialized)
        {
            Store (Arg0, TIDX) /* \_SB_.PCI0.GFX0.TIDX */

    2A5A: 14 13 47 48 44 53 01 70 68 54 49 44 58           // ..GHDS.phTIDX

            Return (GNOT (One, Zero))
        }


    2A67: A4 47 4E 4F 54 01 00                             // .GNOT..

        Method (GLID, 1, NotSerialized)
        {

    2A6E: 14 35 47 4C 49 44 01                             // .5GLID.

            If (LEqual (Arg0, One))
            {

    2A75: A0 0B 93 68 01                                   // ...h.

                Store (0x03, CLID) /* \_SB_.PCI0.GFX0.CLID */
            }

    2A7A: 70 0A 03 43 4C 49 44                             // p..CLID

            Else
            {

    2A81: A1 07                                            // ..

                Store (Arg0, CLID) /* \_SB_.PCI0.GFX0.CLID */
            }


    2A83: 70 68 43 4C 49 44                                // phCLID

            If (GNOT (0x02, Zero))
            {
                Or (CLID, 0x80000000, CLID) /* \_SB_.PCI0.GFX0.CLID */

    2A89: A0 18 47 4E 4F 54 0A 02 00 7D 43 4C 49 44 0C 00  // ..GNOT...}CLID..
    2A99: 00 00 80 43 4C 49 44                             // ...CLID

                Return (One)
            }


    2AA0: A4 01                                            // ..

            Return (Zero)
        }


    2AA2: A4 00                                            // ..

        Method (GDCK, 1, NotSerialized)
        {
            Store (Arg0, CDCK) /* \_SB_.PCI0.GFX0.CDCK */

    2AA4: 14 14 47 44 43 4B 01 70 68 43 44 43 4B           // ..GDCK.phCDCK

            Return (GNOT (0x04, Zero))
        }


    2AB1: A4 47 4E 4F 54 0A 04 00                          // .GNOT...

        Method (PARD, 0, NotSerialized)
        {

    2AB9: 14 19 50 41 52 44 00                             // ..PARD.

            If (LNot (ARDY))
            {

    2AC0: A0 0C 92 41 52 44 59                             // ...ARDY

                Sleep (ASLP)
            }


    2AC7: 5B 22 41 53 4C 50                                // ["ASLP

            Return (
    2ACD: A4                                               // .

LNot (ARDY))
        }


    2ACE: 92 41 52 44 59                                   // .ARDY

        Method (IUEH, 1, Serialized)
        {
            And (IUER, 0xC0, IUER) /* \_SB_.PCI0.GFX0.IUER */
            XOr (IUER, ShiftLeft (One, Arg0), IUER) /* \_SB_.PCI0.GFX0.IUER */

    2AD3: 14 36 49 55 45 48 09 7B 49 55 45 52 0A C0 49 55  // .6IUEH.{IUER..IU
    2AE3: 45 52 7F 49 55 45 52 79 01 68 00 49 55 45 52     // ER.IUERy.h.IUER

            If (
    2AF2: A0 0E 92                                         // ...

LLessEqual (Arg0, 0x04))
            {

    2AF5: 94 68 0A 04                                      // .h..

                Return (AINT (0x05, Zero))
            }

    2AF9: A4 41 49 4E 54 0A 05 00                          // .AINT...

            Else
            {

    2B01: A1 08                                            // ..

                Return (AINT (Arg0, Zero))
            }
        }


    2B03: A4 41 49 4E 54 68 00                             // .AINTh.

        Method (AINT, 2, NotSerialized)
        {

    2B0A: 14 4F 15 41 49 4E 54 02                          // .O.AINT.

            If (LNot (
    2B12: A0 0E 92                                         // ...

And (TCHE, ShiftLeft (One, Arg0))))
            {

    2B15: 7B 54 43 48 45 79 01 68 00 00                    // {TCHEy.h..

                Return (One)
            }


    2B1F: A4 01                                            // ..

            If (PARD ())
            {

    2B21: A0 07 50 41 52 44                                // ..PARD

                Return (One)
            }


    2B27: A4 01                                            // ..

            If (LAnd (
    2B29: A0 34 90 92                                      // .4..

LGreaterEqual (Arg0, 0x05), 
    2B2D: 95 68 0A 05                                      // .h..


    2B31: 92                                               // .

LLessEqual (Arg0, 0x07)))
            {
                Store (ShiftLeft (One, Arg0), ASLC) /* \_SB_.PCI0.GFX0.ASLC */
                Store (One, ASLE) /* \_SB_.PCI0.GFX0.ASLE */
                Store (Zero, Local2)

    2B32: 94 68 0A 07 70 79 01 68 00 41 53 4C 43 70 01 41  // .h..py.h.ASLCp.A
    2B42: 53 4C 45 70 00 62                                // SLEp.b

                While (LAnd (LLess (Local2, 0xFA), 
    2B48: A2 13 90 95 62 0A FA                             // ....b..


    2B4F: 92                                               // .

LNotEqual (ASLC, Zero)))
                {
                    Sleep (0x04)

    2B50: 93 41 53 4C 43 00 5B 22 0A 04                    // .ASLC.["..

                    Increment (Local2)
                }


    2B5A: 75 62                                            // ub

                Return (Zero)
            }


    2B5C: A4 00                                            // ..

            If (LEqual (Arg0, 0x02))
            {

    2B5E: A0 40 0C 93 68 0A 02                             // .@..h..

                If (CPFM)
                {
                    And (CPFM, 0x0F, Local0)
                    And (EPFM, 0x0F, Local1)

    2B65: A0 47 09 43 50 46 4D 7B 43 50 46 4D 0A 0F 60 7B  // .G.CPFM{CPFM..`{
    2B75: 45 50 46 4D 0A 0F 61                             // EPFM..a

                    If (LEqual (Local0, One))
                    {

    2B7C: A0 2A 93 60 01                                   // .*.`.

                        If (And (Local1, 0x06))
                        {

    2B81: A0 0D 7B 61 0A 06 00                             // ..{a...

                            Store (0x06, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }

    2B88: 70 0A 06 50 46 49 54                             // p..PFIT

                        ElseIf
    2B8F: A1 17                                            // ..

 (And (Local1, 0x08))
                        {

    2B91: A0 0D 7B 61 0A 08 00                             // ..{a...

                            Store (0x08, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }

    2B98: 70 0A 08 50 46 49 54                             // p..PFIT

                        Else
                        {

    2B9F: A1 07                                            // ..

                            Store (One, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                    }


    2BA1: 70 01 50 46 49 54                                // p.PFIT

                    If (LEqual (Local0, 0x06))
                    {

    2BA7: A0 2A 93 60 0A 06                                // .*.`..

                        If (And (Local1, 0x08))
                        {

    2BAD: A0 0D 7B 61 0A 08 00                             // ..{a...

                            Store (0x08, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }

    2BB4: 70 0A 08 50 46 49 54                             // p..PFIT

                        ElseIf
    2BBB: A1 16                                            // ..

 (And (Local1, One))
                        {

    2BBD: A0 0B 7B 61 01 00                                // ..{a..

                            Store (One, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }

    2BC3: 70 01 50 46 49 54                                // p.PFIT

                        Else
                        {

    2BC9: A1 08                                            // ..

                            Store (0x06, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                    }


    2BCB: 70 0A 06 50 46 49 54                             // p..PFIT

                    If (LEqual (Local0, 0x08))
                    {

    2BD2: A0 2A 93 60 0A 08                                // .*.`..

                        If (And (Local1, One))
                        {

    2BD8: A0 0B 7B 61 01 00                                // ..{a..

                            Store (One, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }

    2BDE: 70 01 50 46 49 54                                // p.PFIT

                        ElseIf
    2BE4: A1 18                                            // ..

 (And (Local1, 0x06))
                        {

    2BE6: A0 0D 7B 61 0A 06 00                             // ..{a...

                            Store (0x06, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }

    2BED: 70 0A 06 50 46 49 54                             // p..PFIT

                        Else
                        {

    2BF4: A1 08                                            // ..

                            Store (0x08, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                    }
                }

    2BF6: 70 0A 08 50 46 49 54                             // p..PFIT

                Else
                {

    2BFD: A1 0C                                            // ..

                    XOr (PFIT, 0x07, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                }

                Or (PFIT, 0x80000000, PFIT) /* \_SB_.PCI0.GFX0.PFIT */

    2BFF: 7F 50 46 49 54 0A 07 50 46 49 54 7D 50 46 49 54  // .PFIT..PFIT}PFIT
    2C0F: 0C 00 00 00 80 50 46 49 54                       // .....PFIT

                Store (0x04, ASLC) /* \_SB_.PCI0.GFX0.ASLC */
            }

    2C18: 70 0A 04 41 53 4C 43                             // p..ASLC

            ElseIf
    2C1F: A1 42 04                                         // .B.

 (LEqual (Arg0, One))
            {
                Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP) /* \_SB_.PCI0.GFX0.BCLP */
                Or (BCLP, 0x80000000, BCLP) /* \_SB_.PCI0.GFX0.BCLP */

    2C22: A0 28 93 68 01 70 78 77 69 0A FF 00 0A 64 00 00  // .(.h.pxwi....d..
    2C32: 42 43 4C 50 7D 42 43 4C 50 0C 00 00 00 80 42 43  // BCLP}BCLP.....BC
    2C42: 4C 50                                            // LP

                Store (0x02, ASLC) /* \_SB_.PCI0.GFX0.ASLC */
            }

    2C44: 70 0A 02 41 53 4C 43                             // p..ASLC

            ElseIf
    2C4B: A1 16                                            // ..

 (LEqual (Arg0, Zero))
            {
                Store (Arg1, ALSI) /* \_SB_.PCI0.GFX0.ALSI */

    2C4D: A0 10 93 68 00 70 69 41 4C 53 49                 // ...h.piALSI

                Store (One, ASLC) /* \_SB_.PCI0.GFX0.ASLC */
            }

    2C58: 70 01 41 53 4C 43                                // p.ASLC

            Else
            {

    2C5E: A1 03                                            // ..

                Return (One)
            }

            Store (One, ASLE) /* \_SB_.PCI0.GFX0.ASLE */

    2C60: A4 01 70 01 41 53 4C 45                          // ..p.ASLE

            Return (Zero)
        }


    2C68: A4 00                                            // ..

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {

    2C6A: 14 4D 48 5F 44 53 4D 0C                          // .MH_DSM.


    2C72: 08 5F 54 5F 30 00                                // ._T_0.

            If (LEqual (Arg0, 
    2C78: A0 4A 47 93 68                                   // .JG.h

ToUUID ("3e5b41c6-eb1d-4260-9d15-c71fbadae414") /* Unknown UUID */))
            {

    2C7D: 11 13 0A 10 C6 41 5B 3E 1D EB 60 42 9D 15 C7 1F  // .....A[>..`B....
    2C8D: BA DA E4 14                                      // ....

                Switch (ToInteger (Arg2))
                {

    2C91: A2 41 46 01 70 99 6A 00 5F 54 5F 30              // .AF.p.j._T_0

                    Case (Zero)
                    {

    2C9D: A0 37 93 5F 54 5F 30 00                          // .7._T_0.

                        If (LEqual (Arg1, One))
                        {
                            Store ("iGfx Supported Functions Bitmap ", Debug)

    2CA5: A0 2F 93 69 01 70 0D 69 47 66 78 20 53 75 70 70  // ./.i.p.iGfx Supp
    2CB5: 6F 72 74 65 64 20 46 75 6E 63 74 69 6F 6E 73 20  // orted Functions 
    2CC5: 42 69 74 6D 61 70 20 00 5B 31                    // Bitmap .[1

                            Return (0x0001E7FF)
                        }
                    }

    2CCF: A4 0C FF E7 01 00                                // ......

                    Case
    2CD5: A1 4C 41                                         // .LA

 (One)
                    {

    2CD8: A0 4D 09 93 5F 54 5F 30 01                       // .M.._T_0.

                        If (LEqual (Arg1, One))
                        {
                            Store (" Adapter Power State Notification ", Debug)

    2CE1: A0 44 09 93 69 01 70 0D 20 41 64 61 70 74 65 72  // .D..i.p. Adapter
    2CF1: 20 50 6F 77 65 72 20 53 74 61 74 65 20 4E 6F 74  //  Power State Not
    2D01: 69 66 69 63 61 74 69 6F 6E 20 00 5B 31           // ification .[1

                            If (LAnd (LEqual (S0ID, One), 
    2D0E: A0 39 90 93 53 30 49 44 01                       // .9..S0ID.

LLess (OSYS, 0x07DF)))
                            {

    2D17: 95 4F 53 59 53 0B DF 07                          // .OSYS...

                                If (LEqual (And (DerefOf (
    2D1F: A0 12 93 7B 83                                   // ...{.

Index (Arg3, Zero)), 0xFF), One))
                                {
                                    \GUAM (One)
                                }

                                Store (And (DerefOf (
    2D24: 88 6B 00 00 0A FF 00 01 5C 47 55 41 4D 01 70 7B  // .k......\GUAM.p{
    2D34: 83                                               // .

Index (Arg3, One)), 0xFF), Local0)

    2D35: 88 6B 01 00 0A FF 00 60                          // .k.....`

                                If (LEqual (Local0, Zero))
                                {
                                    \GUAM (Zero)
                                }
                            }


    2D3D: A0 0A 93 60 00 5C 47 55 41 4D 00                 // ...`.\GUAM.

                            If (LEqual (DerefOf (
    2D48: A0 2B 93 83                                      // .+..

Index (Arg3, Zero)), Zero))
                            {
                                Store (CLID, Local0)

    2D4C: 88 6B 00 00 00 70 43 4C 49 44 60                 // .k...pCLID`

                                If (And (0x80000000, Local0))
                                {
                                    And (CLID, 0x0F, CLID) /* \_SB_.PCI0.GFX0.CLID */
                                    GLID (CLID)
                                }
                            }


    2D57: A0 1C 7B 0C 00 00 00 80 60 00 7B 43 4C 49 44 0A  // ..{.....`.{CLID.
    2D67: 0F 43 4C 49 44 47 4C 49 44 43 4C 49 44           // .CLIDGLIDCLID

                            Return (One)
                        }
                    }

    2D74: A4 01                                            // ..

                    Case
    2D76: A1 4B 37                                         // .K7

 (0x02)
                    {

    2D79: A0 35 93 5F 54 5F 30 0A 02                       // .5._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("Display Power State Notification ", Debug)

    2D82: A0 2C 93 69 01 70 0D 44 69 73 70 6C 61 79 20 50  // .,.i.p.Display P
    2D92: 6F 77 65 72 20 53 74 61 74 65 20 4E 6F 74 69 66  // ower State Notif
    2DA2: 69 63 61 74 69 6F 6E 20 00 5B 31                 // ication .[1

                            Return (One)
                        }
                    }

    2DAD: A4 01                                            // ..

                    Case
    2DAF: A1 42 34                                         // .B4

 (0x03)
                    {

    2DB2: A0 36 93 5F 54 5F 30 0A 03                       // .6._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("BIOS POST Completion Notification ", Debug)

    2DBB: A0 2D 93 69 01 70 0D 42 49 4F 53 20 50 4F 53 54  // .-.i.p.BIOS POST
    2DCB: 20 43 6F 6D 70 6C 65 74 69 6F 6E 20 4E 6F 74 69  //  Completion Noti
    2DDB: 66 69 63 61 74 69 6F 6E 20 00 5B 31              // fication .[1

                            Return (One)
                        }
                    }

    2DE7: A4 01                                            // ..

                    Case
    2DE9: A1 48 30                                         // .H0

 (0x04)
                    {

    2DEC: A0 27 93 5F 54 5F 30 0A 04                       // .'._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("Pre-Hires Set Mode ", Debug)

    2DF5: A0 1E 93 69 01 70 0D 50 72 65 2D 48 69 72 65 73  // ...i.p.Pre-Hires
    2E05: 20 53 65 74 20 4D 6F 64 65 20 00 5B 31           //  Set Mode .[1

                            Return (One)
                        }
                    }

    2E12: A4 01                                            // ..

                    Case
    2E14: A1 4D 2D                                         // .M-

 (0x05)
                    {

    2E17: A0 28 93 5F 54 5F 30 0A 05                       // .(._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("Post-Hires Set Mode ", Debug)

    2E20: A0 1F 93 69 01 70 0D 50 6F 73 74 2D 48 69 72 65  // ...i.p.Post-Hire
    2E30: 73 20 53 65 74 20 4D 6F 64 65 20 00 5B 31        // s Set Mode .[1

                            Return (One)
                        }
                    }

    2E3E: A4 01                                            // ..

                    Case
    2E40: A1 41 2B                                         // .A+

 (0x06)
                    {

    2E43: A0 30 93 5F 54 5F 30 0A 06                       // .0._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("SetDisplayDeviceNotification", Debug)

    2E4C: A0 27 93 69 01 70 0D 53 65 74 44 69 73 70 6C 61  // .'.i.p.SetDispla
    2E5C: 79 44 65 76 69 63 65 4E 6F 74 69 66 69 63 61 74  // yDeviceNotificat
    2E6C: 69 6F 6E 00 5B 31                                // ion.[1

                            Return (One)
                        }
                    }

    2E72: A4 01                                            // ..

                    Case
    2E74: A1 4D 27                                         // .M'

 (0x07)
                    {

    2E77: A0 38 93 5F 54 5F 30 0A 07                       // .8._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("SetBootDevicePreference ", Debug)
                            And (DerefOf (
    2E80: A0 2F 93 69 01 70 0D 53 65 74 42 6F 6F 74 44 65  // ./.i.p.SetBootDe
    2E90: 76 69 63 65 50 72 65 66 65 72 65 6E 63 65 20 00  // vicePreference .
    2EA0: 5B 31 7B 83                                      // [1{.

Index (Arg3, Zero)), 0xFF, IBTT) /* \IBTT */

    2EA4: 88 6B 00 00 0A FF 49 42 54 54                    // .k....IBTT

                            Return (One)
                        }
                    }

    2EAE: A4 01                                            // ..

                    Case
    2EB0: A1 41 24                                         // .A$

 (0x08)
                    {

    2EB3: A0 42 06 93 5F 54 5F 30 0A 08                    // .B.._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("SetPanelPreference ", Debug)
                            And (DerefOf (
    2EBD: A0 48 05 93 69 01 70 0D 53 65 74 50 61 6E 65 6C  // .H..i.p.SetPanel
    2ECD: 50 72 65 66 65 72 65 6E 63 65 20 00 5B 31 7B 83  // Preference .[1{.

Index (Arg3, Zero)), 0xFF, IPSC) /* \IPSC */

    2EDD: 88 6B 00 00 0A FF 49 50 53 43                    // .k....IPSC

                            If (And (DerefOf (
    2EE7: A0 1B 7B 83                                      // ..{.

Index (Arg3, One)), 0xFF))
                            {
                                And (DerefOf (
    2EEB: 88 6B 01 00 0A FF 00 7B 83                       // .k.....{.

Index (Arg3, One)), 0xFF, IPAT) /* \IPAT */

    2EF4: 88 6B 01 00 0A FF 49 50 41 54                    // .k....IPAT

                                Decrement (IPAT)
                            }

                            And (ShiftRight (DerefOf (
    2EFE: 76 49 50 41 54 7B 7A 83                          // vIPAT{z.

Index (Arg3, 0x02)), 0x04), 0x07, IBIA) /* \IBIA */

    2F06: 88 6B 0A 02 00 0A 04 00 0A 07 49 42 49 41        // .k........IBIA

                            Return (One)
                        }
                    }

    2F14: A4 01                                            // ..

                    Case
    2F16: A1 4B 1D                                         // .K.

 (0x09)
                    {

    2F19: A0 22 93 5F 54 5F 30 0A 09                       // ."._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("FullScreenDOS ", Debug)

    2F22: A0 19 93 69 01 70 0D 46 75 6C 6C 53 63 72 65 65  // ...i.p.FullScree
    2F32: 6E 44 4F 53 20 00 5B 31                          // nDOS .[1

                            Return (One)
                        }
                    }

    2F3A: A4 01                                            // ..

                    Case
    2F3C: A1 45 1B                                         // .E.

 (0x0A)
                    {

    2F3F: A0 31 93 5F 54 5F 30 0A 0A                       // .1._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("APM Complete ", Debug)
                            Store (ShiftLeft (LIDS, 0x08), Local0)
                            Add (Local0, 0x0100, Local0)

    2F48: A0 28 93 69 01 70 0D 41 50 4D 20 43 6F 6D 70 6C  // .(.i.p.APM Compl
    2F58: 65 74 65 20 00 5B 31 70 79 4C 49 44 53 0A 08 00  // ete .[1pyLIDS...
    2F68: 60 72 60 0B 00 01 60                             // `r`...`

                            Return (Local0)
                        }
                    }

    2F6F: A4 60                                            // .`

                    Case
    2F71: A1 40 18                                         // .@.

 (0x0D)
                    {

    2F74: A0 46 06 93 5F 54 5F 30 0A 0D                    // .F.._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("GetBootDisplayPreference ", Debug)
                            Or (ShiftLeft (DerefOf (
    2F7E: A0 4C 05 93 69 01 70 0D 47 65 74 42 6F 6F 74 44  // .L..i.p.GetBootD
    2F8E: 69 73 70 6C 61 79 50 72 65 66 65 72 65 6E 63 65  // isplayPreference
    2F9E: 20 00 5B 31 7D 79 83                             //  .[1}y.

Index (Arg3, 0x03)), 0x18), ShiftLeft (DerefOf (
    2FA5: 88 6B 0A 03 00 0A 18 00 79 83                    // .k......y.

Index (
                                Arg3, 0x02)), 0x10), Local0)
                            And (Local0, 0xEFFF0000, Local0)
                            And (Local0, ShiftLeft (DerefOf (
    2FAF: 88 6B 0A 02 00 0A 10 00 60 7B 60 0C 00 00 FF EF  // .k......`{`.....
    2FBF: 60 7B 60 79 83                                   // `{`y.

Index (DBTB, IBTT)), 0x10), Local0)
                            Or (IBTT, Local0, Local0)

    2FC4: 88 44 42 54 42 49 42 54 54 00 0A 10 00 60 7D 49  // .DBTBIBTT....`}I
    2FD4: 42 54 54 60 60                                   // BTT``

                            Return (Local0)
                        }
                    }

    2FD9: A4 60                                            // .`

                    Case
    2FDB: A1 46 11                                         // .F.

 (0x0E)
                    {

    2FDE: A0 4B 05 93 5F 54 5F 30 0A 0E                    // .K.._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("GetPanelDetails ", Debug)
                            Store (IPSC, Local0)
                            Or (Local0, ShiftLeft (IPAT, 0x08), Local0)
                            Add (Local0, 0x0100, Local0)
                            Or (Local0, ShiftLeft (LIDS, 0x10), Local0)
                            Add (Local0, 0x00010000, Local0)
                            Or (Local0, ShiftLeft (IBIA, 0x14), Local0)

    2FE8: A0 41 05 93 69 01 70 0D 47 65 74 50 61 6E 65 6C  // .A..i.p.GetPanel
    2FF8: 44 65 74 61 69 6C 73 20 00 5B 31 70 49 50 53 43  // Details .[1pIPSC
    3008: 60 7D 60 79 49 50 41 54 0A 08 00 60 72 60 0B 00  // `}`yIPAT...`r`..
    3018: 01 60 7D 60 79 4C 49 44 53 0A 10 00 60 72 60 0C  // .`}`yLIDS...`r`.
    3028: 00 00 01 00 60 7D 60 79 49 42 49 41 0A 14 00 60  // ....`}`yIBIA...`

                            Return (Local0)
                        }
                    }

    3038: A4 60                                            // .`

                    Case
    303A: A1 47 0B                                         // .G.

 (0x0F)
                    {

    303D: A0 48 06 93 5F 54 5F 30 0A 0F                    // .H.._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("GetInternalGraphics ", Debug)
                            Store (GIVD, Local0)
                            XOr (Local0, One, Local0)
                            Or (Local0, ShiftLeft (GMFN, One), Local0)
                            Or (Local0, 0x1800, Local0)
                            Or (Local0, ShiftLeft (IDMS, 0x11), Local0)
                            Or (ShiftLeft (DerefOf (
    3047: A0 4E 05 93 69 01 70 0D 47 65 74 49 6E 74 65 72  // .N..i.p.GetInter
    3057: 6E 61 6C 47 72 61 70 68 69 63 73 20 00 5B 31 70  // nalGraphics .[1p
    3067: 47 49 56 44 60 7F 60 01 60 7D 60 79 47 4D 46 4E  // GIVD`.`.`}`yGMFN
    3077: 01 00 60 7D 60 0B 00 18 60 7D 60 79 49 44 4D 53  // ..`}`...`}`yIDMS
    3087: 0A 11 00 60 7D 79 83                             // ...`}y.

Index (DerefOf (
    308E: 88 83                                            // ..

Index (CDCT, HVCO)), CDVL)), 0x15
                                ), Local0, Local0)

    3090: 88 43 44 43 54 48 56 43 4F 00 43 44 56 4C 00 0A  // .CDCTHVCO.CDVL..
    30A0: 15 00 60 60                                      // ..``

                            Return (Local0)
                        }
                    }

    30A4: A4 60                                            // .`

                    Case
    30A6: A1 4B 04                                         // .K.

 (0x10)
                    {

    30A9: A0 48 04 93 5F 54 5F 30 0A 10                    // .H.._T_0..

                        If (LEqual (Arg1, One))
                        {
                            Store ("GetAKSV ", Debug)

    30B3: A0 3E 93 69 01 70 0D 47 65 74 41 4B 53 56 20 00  // .>.i.p.GetAKSV .
    30C3: 5B 31                                            // [1

                            Name (KSVP, 
    30C5: 08 4B 53 56 50                                   // .KSVP

Package (0x02)
                            {
                                0x80000000, 
                                0x8000
                            })
                            Store (KSV0, 
    30CA: 12 0A 02 0C 00 00 00 80 0B 00 80 70 4B 53 56 30  // ...........pKSV0

Index (KSVP, Zero))
                            Store (KSV1, 
    30DA: 88 4B 53 56 50 00 00 70 4B 53 56 31              // .KSVP..pKSV1

Index (KSVP, One))

    30E6: 88 4B 53 56 50 01 00                             // .KSVP..

                            Return (KSVP) /* \_SB_.PCI0.GFX0._DSM.KSVP */
                        }
                    }


    30ED: A4 4B 53 56 50                                   // .KSVP

                }
            }


    30F2: A5                                               // .

            Return (
    30F3: A4                                               // .

Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }
}



Table Header:
Table Body (Length 0x30F8)

/*
Raw Table Data: Length 12536 (0x30F8)

    0000: 53 53 44 54 F8 30 00 00 02 AB 4C 45 4E 4F 56 4F  // SSDT.0....LENOVO
    0010: 43 42 2D 30 31 20 20 20 01 00 00 00 41 43 50 49  // CB-01   ....ACPI
    0020: 00 00 04 00 A0 44 09 00 15 5C 2E 5F 53 42 5F 50  // .....D...\._SB_P
    0030: 43 49 30 06 00 15 5C 2F 03 5F 53 42 5F 50 43 49  // CI0...\/._SB_PCI
    0040: 30 47 46 58 30 06 00 15 5C 2F 03 5F 53 42 5F 50  // 0GFX0...\/._SB_P
    0050: 43 49 30 42 30 44 33 06 00 15 5C 2F 04 5F 53 42  // CI0B0D3...\/._SB
    0060: 5F 50 43 49 30 47 46 58 30 48 44 4F 53 08 00 15  // _PCI0GFX0HDOS...
    0070: 5C 45 43 4F 4E 01 00 15 5C 50 4E 48 4D 01 00 15  // \ECON...\PNHM...
    0080: 4F 53 59 53 01 00 15 43 50 53 43 00 00 15 5C 47  // OSYS...CPSC...\G
    0090: 55 41 4D 08 01 15 44 53 45 4E 00 00 15 53 30 49  // UAM...DSEN...S0I
    00A0: 44 00 00 15 5C 2F 04 5F 53 42 5F 50 43 49 30 47  // D...\/._SB_PCI0G
    00B0: 46 58 30 48 4E 4F 54 08 01 5B 80 53 41 4E 56 00  // FX0HNOT..[.SANV.
    00C0: 0C 98 EA E6 8C 0B F7 01 5B 81 44 23 53 41 4E 56  // ........[.D#SANV
    00D0: 10 41 53 4C 42 20 49 4D 4F 4E 08 49 47 44 53 08  // .ASLB IMON.IGDS.
    00E0: 49 42 54 54 08 49 50 41 54 08 49 50 53 43 08 49  // IBTT.IPAT.IPSC.I
    00F0: 42 49 41 08 49 53 53 43 08 49 44 4D 53 08 49 46  // BIA.ISSC.IDMS.IF
    0100: 31 45 08 48 56 43 4F 08 47 53 4D 49 08 50 41 56  // 1E.HVCO.GSMI.PAV
    0110: 50 08 43 41 44 4C 08 43 53 54 45 10 4E 53 54 45  // P.CADL.CSTE.NSTE
    0120: 10 4E 44 49 44 08 44 49 44 31 20 44 49 44 32 20  // .NDID.DID1 DID2 
    0130: 44 49 44 33 20 44 49 44 34 20 44 49 44 35 20 44  // DID3 DID4 DID5 D
    0140: 49 44 36 20 44 49 44 37 20 44 49 44 38 20 44 49  // ID6 DID7 DID8 DI
    0150: 44 39 20 44 49 44 41 20 44 49 44 42 20 44 49 44  // D9 DIDA DIDB DID
    0160: 43 20 44 49 44 44 20 44 49 44 45 20 44 49 44 46  // C DIDD DIDE DIDF
    0170: 20 44 49 44 58 20 4E 58 44 31 20 4E 58 44 32 20  //  DIDX NXD1 NXD2 
    0180: 4E 58 44 33 20 4E 58 44 34 20 4E 58 44 35 20 4E  // NXD3 NXD4 NXD5 N
    0190: 58 44 36 20 4E 58 44 37 20 4E 58 44 38 20 4E 58  // XD6 NXD7 NXD8 NX
    01A0: 44 58 20 4C 49 44 53 08 4B 53 56 30 20 4B 53 56  // DX LIDS.KSV0 KSV
    01B0: 31 08 42 52 54 4C 08 41 4C 53 45 08 41 4C 41 46  // 1.BRTL.ALSE.ALAF
    01C0: 08 4C 4C 4F 57 08 4C 48 49 48 08 41 4C 46 50 08  // .LLOW.LHIH.ALFP.
    01D0: 49 4D 54 50 08 45 44 50 56 08 53 47 4D 44 08 53  // IMTP.EDPV.SGMD.S
    01E0: 47 46 4C 08 53 47 47 50 08 48 52 45 30 08 48 52  // GFL.SGGP.HRE0.HR
    01F0: 47 30 20 48 52 41 30 08 50 57 45 30 08 50 57 47  // G0 HRA0.PWE0.PWG
    0200: 30 20 50 57 41 30 08 50 31 47 50 08 48 52 45 31  // 0 PWA0.P1GP.HRE1
    0210: 08 48 52 47 31 20 48 52 41 31 08 50 57 45 31 08  // .HRG1 HRA1.PWE1.
    0220: 50 57 47 31 20 50 57 41 31 08 50 32 47 50 08 48  // PWG1 PWA1.P2GP.H
    0230: 52 45 32 08 48 52 47 32 20 48 52 41 32 08 50 57  // RE2.HRG2 HRA2.PW
    0240: 45 32 08 50 57 47 32 20 50 57 41 32 08 44 4C 50  // E2.PWG2 PWA2.DLP
    0250: 57 10 44 4C 48 52 10 45 45 43 50 08 58 42 41 53  // W.DLHR.EECP.XBAS
    0260: 20 47 42 41 53 10 4E 56 47 41 20 4E 56 48 41 20  //  GBAS.NVGA NVHA 
    0270: 41 4D 44 41 20 4C 54 52 58 08 4F 42 46 58 08 4C  // AMDA LTRX.OBFX.L
    0280: 54 52 59 08 4F 42 46 59 08 4C 54 52 5A 08 4F 42  // TRY.OBFY.LTRZ.OB
    0290: 46 5A 08 53 4D 53 4C 10 53 4E 53 4C 10 50 30 55  // FZ.SMSL.SNSL.P0U
    02A0: 42 08 50 31 55 42 08 50 32 55 42 08 50 43 53 4C  // B.P1UB.P2UB.PCSL
    02B0: 08 50 42 47 45 08 4D 36 34 42 40 04 4D 36 34 4C  // .PBGE.M64B@.M64L
    02C0: 40 04 43 50 45 58 20 45 45 43 31 08 45 45 43 32  // @.CPEX EEC1.EEC2
    02D0: 08 53 42 4E 30 08 53 42 4E 31 08 53 42 4E 32 08  // .SBN0.SBN1.SBN2.
    02E0: 4D 33 32 42 20 4D 33 32 4C 20 50 30 57 4B 20 50  // M32B M32L P0WK P
    02F0: 31 57 4B 20 50 32 57 4B 20 00 40 78 00 18 10 89  // 1WK P2WK .@x....
    0300: DF 02 5C 2F 03 5F 53 42 5F 50 43 49 30 47 46 58  // ..\/._SB_PCI0GFX
    0310: 30 14 26 5F 44 4F 53 01 70 7B 68 0A 07 00 44 53  // 0.&_DOS.p{h...DS
    0320: 45 4E A0 15 93 7B 68 0A 03 00 00 A0 0C 5B 12 48  // EN...{h......[.H
    0330: 44 4F 53 00 48 44 4F 53 14 8B 16 01 5F 44 4F 44  // DOS.HDOS...._DOD
    0340: 00 A0 0D 93 49 4D 54 50 01 70 01 4E 44 49 44 A1  // ....IMTP.p.NDID.
    0350: 07 70 00 4E 44 49 44 A0 15 92 93 44 49 44 4C 00  // .p.NDID....DIDL.
    0360: 70 53 44 44 4C 44 49 44 4C 44 49 44 31 A0 15 92  // pSDDLDIDLDID1...
    0370: 93 44 44 4C 32 00 70 53 44 44 4C 44 44 4C 32 44  // .DDL2.pSDDLDDL2D
    0380: 49 44 32 A0 15 92 93 44 44 4C 33 00 70 53 44 44  // ID2....DDL3.pSDD
    0390: 4C 44 44 4C 33 44 49 44 33 A0 15 92 93 44 44 4C  // LDDL3DID3....DDL
    03A0: 34 00 70 53 44 44 4C 44 44 4C 34 44 49 44 34 A0  // 4.pSDDLDDL4DID4.
    03B0: 15 92 93 44 44 4C 35 00 70 53 44 44 4C 44 44 4C  // ...DDL5.pSDDLDDL
    03C0: 35 44 49 44 35 A0 15 92 93 44 44 4C 36 00 70 53  // 5DID5....DDL6.pS
    03D0: 44 44 4C 44 44 4C 36 44 49 44 36 A0 15 92 93 44  // DDLDDL6DID6....D
    03E0: 44 4C 37 00 70 53 44 44 4C 44 44 4C 37 44 49 44  // DL7.pSDDLDDL7DID
    03F0: 37 A0 15 92 93 44 44 4C 38 00 70 53 44 44 4C 44  // 7....DDL8.pSDDLD
    0400: 44 4C 38 44 49 44 38 A0 15 92 93 44 44 4C 39 00  // DL8DID8....DDL9.
    0410: 70 53 44 44 4C 44 44 4C 39 44 49 44 39 A0 15 92  // pSDDLDDL9DID9...
    0420: 93 44 44 31 30 00 70 53 44 44 4C 44 44 31 30 44  // .DD10.pSDDLDD10D
    0430: 49 44 41 A0 15 92 93 44 44 31 31 00 70 53 44 44  // IDA....DD11.pSDD
    0440: 4C 44 44 31 31 44 49 44 42 A0 15 92 93 44 44 31  // LDD11DIDB....DD1
    0450: 32 00 70 53 44 44 4C 44 44 31 32 44 49 44 43 A0  // 2.pSDDLDD12DIDC.
    0460: 15 92 93 44 44 31 33 00 70 53 44 44 4C 44 44 31  // ...DD13.pSDDLDD1
    0470: 33 44 49 44 44 A0 15 92 93 44 44 31 34 00 70 53  // 3DIDD....DD14.pS
    0480: 44 44 4C 44 44 31 34 44 49 44 45 A0 15 92 93 44  // DDLDD14DIDE....D
    0490: 44 31 35 00 70 53 44 44 4C 44 44 31 35 44 49 44  // D15.pSDDLDD15DID
    04A0: 46 A0 44 04 93 4E 44 49 44 01 08 54 4D 50 31 12  // F.D..NDID..TMP1.
    04B0: 07 01 0C FF FF FF FF A0 14 93 49 4D 54 50 01 70  // ..........IMTP.p
    04C0: 0C 00 CA 02 00 88 54 4D 50 31 00 00 A1 14 70 7D  // ......TMP1....p}
    04D0: 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 31 00  // .....DID1..TMP1.
    04E0: 00 A4 54 4D 50 31 A0 4D 05 93 4E 44 49 44 0A 02  // ..TMP1.M..NDID..
    04F0: 08 54 4D 50 32 12 0C 02 0C FF FF FF FF 0C FF FF  // .TMP2...........
    0500: FF FF 70 7D 0C 00 00 01 00 44 49 44 31 00 88 54  // ..p}.....DID1..T
    0510: 4D 50 32 00 00 A0 14 93 49 4D 54 50 01 70 0C 00  // MP2.....IMTP.p..
    0520: CA 02 00 88 54 4D 50 32 01 00 A1 14 70 7D 0C 00  // ....TMP2....p}..
    0530: 00 01 00 44 49 44 32 00 88 54 4D 50 32 01 00 A4  // ...DID2..TMP2...
    0540: 54 4D 50 32 A0 47 07 93 4E 44 49 44 0A 03 08 54  // TMP2.G..NDID...T
    0550: 4D 50 33 12 11 03 0C FF FF FF FF 0C FF FF FF FF  // MP3.............
    0560: 0C FF FF FF FF 70 7D 0C 00 00 01 00 44 49 44 31  // .....p}.....DID1
    0570: 00 88 54 4D 50 33 00 00 70 7D 0C 00 00 01 00 44  // ..TMP3..p}.....D
    0580: 49 44 32 00 88 54 4D 50 33 01 00 A0 15 93 49 4D  // ID2..TMP3.....IM
    0590: 54 50 01 70 0C 00 CA 02 00 88 54 4D 50 33 0A 02  // TP.p......TMP3..
    05A0: 00 A1 15 70 7D 0C 00 00 01 00 44 49 44 33 00 88  // ...p}.....DID3..
    05B0: 54 4D 50 33 0A 02 00 A4 54 4D 50 33 A0 40 09 93  // TMP3....TMP3.@..
    05C0: 4E 44 49 44 0A 04 08 54 4D 50 34 12 16 04 0C FF  // NDID...TMP4.....
    05D0: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    05E0: FF FF 70 7D 0C 00 00 01 00 44 49 44 31 00 88 54  // ..p}.....DID1..T
    05F0: 4D 50 34 00 00 70 7D 0C 00 00 01 00 44 49 44 32  // MP4..p}.....DID2
    0600: 00 88 54 4D 50 34 01 00 70 7D 0C 00 00 01 00 44  // ..TMP4..p}.....D
    0610: 49 44 33 00 88 54 4D 50 34 0A 02 00 A0 15 93 49  // ID3..TMP4......I
    0620: 4D 54 50 01 70 0C 00 CA 02 00 88 54 4D 50 34 0A  // MTP.p......TMP4.
    0630: 03 00 A1 15 70 7D 0C 00 00 01 00 44 49 44 34 00  // ....p}.....DID4.
    0640: 88 54 4D 50 34 0A 03 00 A4 54 4D 50 34 A0 49 0A  // .TMP4....TMP4.I.
    0650: 93 4E 44 49 44 0A 05 08 54 4D 50 35 12 1B 05 0C  // .NDID...TMP5....
    0660: FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF  // ................
    0670: FF FF FF 0C FF FF FF FF 70 7D 0C 00 00 01 00 44  // ........p}.....D
    0680: 49 44 31 00 88 54 4D 50 35 00 00 70 7D 0C 00 00  // ID1..TMP5..p}...
    0690: 01 00 44 49 44 32 00 88 54 4D 50 35 01 00 70 7D  // ..DID2..TMP5..p}
    06A0: 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 35 0A  // .....DID3..TMP5.
    06B0: 02 00 70 7D 0C 00 00 01 00 44 49 44 34 00 88 54  // ..p}.....DID4..T
    06C0: 4D 50 35 0A 03 00 A0 15 93 49 4D 54 50 01 70 0C  // MP5......IMTP.p.
    06D0: 00 CA 02 00 88 54 4D 50 35 0A 04 00 A1 15 70 7D  // .....TMP5.....p}
    06E0: 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 35 0A  // .....DID5..TMP5.
    06F0: 04 00 A4 54 4D 50 35 A0 42 0C 93 4E 44 49 44 0A  // ...TMP5.B..NDID.
    0700: 06 08 54 4D 50 36 12 20 06 0C FF FF FF FF 0C FF  // ..TMP6. ........
    0710: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    0720: FF FF 0C FF FF FF FF 70 7D 0C 00 00 01 00 44 49  // .......p}.....DI
    0730: 44 31 00 88 54 4D 50 36 00 00 70 7D 0C 00 00 01  // D1..TMP6..p}....
    0740: 00 44 49 44 32 00 88 54 4D 50 36 01 00 70 7D 0C  // .DID2..TMP6..p}.
    0750: 00 00 01 00 44 49 44 33 00 88 54 4D 50 36 0A 02  // ....DID3..TMP6..
    0760: 00 70 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D  // .p}.....DID4..TM
    0770: 50 36 0A 03 00 70 7D 0C 00 00 01 00 44 49 44 35  // P6...p}.....DID5
    0780: 00 88 54 4D 50 36 0A 04 00 A0 15 93 49 4D 54 50  // ..TMP6......IMTP
    0790: 01 70 0C 00 CA 02 00 88 54 4D 50 36 0A 05 00 A1  // .p......TMP6....
    07A0: 15 70 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D  // .p}.....DID6..TM
    07B0: 50 36 0A 05 00 A4 54 4D 50 36 A0 4B 0D 93 4E 44  // P6....TMP6.K..ND
    07C0: 49 44 0A 07 08 54 4D 50 37 12 25 07 0C FF FF FF  // ID...TMP7.%.....
    07D0: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    07E0: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 70  // ...............p
    07F0: 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 37  // }.....DID1..TMP7
    0800: 00 00 70 7D 0C 00 00 01 00 44 49 44 32 00 88 54  // ..p}.....DID2..T
    0810: 4D 50 37 01 00 70 7D 0C 00 00 01 00 44 49 44 33  // MP7..p}.....DID3
    0820: 00 88 54 4D 50 37 0A 02 00 70 7D 0C 00 00 01 00  // ..TMP7...p}.....
    0830: 44 49 44 34 00 88 54 4D 50 37 0A 03 00 70 7D 0C  // DID4..TMP7...p}.
    0840: 00 00 01 00 44 49 44 35 00 88 54 4D 50 37 0A 04  // ....DID5..TMP7..
    0850: 00 70 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D  // .p}.....DID6..TM
    0860: 50 37 0A 05 00 A0 15 93 49 4D 54 50 01 70 0C 00  // P7......IMTP.p..
    0870: CA 02 00 88 54 4D 50 37 0A 06 00 A1 15 70 7D 0C  // ....TMP7.....p}.
    0880: 00 00 01 00 44 49 44 37 00 88 54 4D 50 37 0A 06  // ....DID7..TMP7..
    0890: 00 A4 54 4D 50 37 A0 44 0F 93 4E 44 49 44 0A 08  // ..TMP7.D..NDID..
    08A0: 08 54 4D 50 38 12 2A 08 0C FF FF FF FF 0C FF FF  // .TMP8.*.........
    08B0: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    08C0: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    08D0: 70 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50  // p}.....DID1..TMP
    08E0: 38 00 00 70 7D 0C 00 00 01 00 44 49 44 32 00 88  // 8..p}.....DID2..
    08F0: 54 4D 50 38 01 00 70 7D 0C 00 00 01 00 44 49 44  // TMP8..p}.....DID
    0900: 33 00 88 54 4D 50 38 0A 02 00 70 7D 0C 00 00 01  // 3..TMP8...p}....
    0910: 00 44 49 44 34 00 88 54 4D 50 38 0A 03 00 70 7D  // .DID4..TMP8...p}
    0920: 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 38 0A  // .....DID5..TMP8.
    0930: 04 00 70 7D 0C 00 00 01 00 44 49 44 36 00 88 54  // ..p}.....DID6..T
    0940: 4D 50 38 0A 05 00 70 7D 0C 00 00 01 00 44 49 44  // MP8...p}.....DID
    0950: 37 00 88 54 4D 50 38 0A 06 00 A0 15 93 49 4D 54  // 7..TMP8......IMT
    0960: 50 01 70 0C 00 CA 02 00 88 54 4D 50 38 0A 07 00  // P.p......TMP8...
    0970: A1 15 70 7D 0C 00 00 01 00 44 49 44 38 00 88 54  // ..p}.....DID8..T
    0980: 4D 50 38 0A 07 00 A4 54 4D 50 38 A0 4D 10 93 4E  // MP8....TMP8.M..N
    0990: 44 49 44 0A 09 08 54 4D 50 39 12 2F 09 0C FF FF  // DID...TMP9./....
    09A0: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    09B0: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    09C0: 0C FF FF FF FF 0C FF FF FF FF 70 7D 0C 00 00 01  // ..........p}....
    09D0: 00 44 49 44 31 00 88 54 4D 50 39 00 00 70 7D 0C  // .DID1..TMP9..p}.
    09E0: 00 00 01 00 44 49 44 32 00 88 54 4D 50 39 01 00  // ....DID2..TMP9..
    09F0: 70 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50  // p}.....DID3..TMP
    0A00: 39 0A 02 00 70 7D 0C 00 00 01 00 44 49 44 34 00  // 9...p}.....DID4.
    0A10: 88 54 4D 50 39 0A 03 00 70 7D 0C 00 00 01 00 44  // .TMP9...p}.....D
    0A20: 49 44 35 00 88 54 4D 50 39 0A 04 00 70 7D 0C 00  // ID5..TMP9...p}..
    0A30: 00 01 00 44 49 44 36 00 88 54 4D 50 39 0A 05 00  // ...DID6..TMP9...
    0A40: 70 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50  // p}.....DID7..TMP
    0A50: 39 0A 06 00 70 7D 0C 00 00 01 00 44 49 44 38 00  // 9...p}.....DID8.
    0A60: 88 54 4D 50 39 0A 07 00 A0 15 93 49 4D 54 50 01  // .TMP9......IMTP.
    0A70: 70 0C 00 CA 02 00 88 54 4D 50 39 0A 08 00 A1 15  // p......TMP9.....
    0A80: 70 7D 0C 00 00 01 00 44 49 44 39 00 88 54 4D 50  // p}.....DID9..TMP
    0A90: 39 0A 08 00 A4 54 4D 50 39 A0 46 12 93 4E 44 49  // 9....TMP9.F..NDI
    0AA0: 44 0A 0A 08 54 4D 50 41 12 34 0A 0C FF FF FF FF  // D...TMPA.4......
    0AB0: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
    0AC0: FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF  // ................
    0AD0: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 70 7D 0C  // .............p}.
    0AE0: 00 00 01 00 44 49 44 31 00 88 54 4D 50 41 00 00  // ....DID1..TMPA..
    0AF0: 70 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50  // p}.....DID2..TMP
    0B00: 41 01 00 70 7D 0C 00 00 01 00 44 49 44 33 00 88  // A..p}.....DID3..
    0B10: 54 4D 50 41 0A 02 00 70 7D 0C 00 00 01 00 44 49  // TMPA...p}.....DI
    0B20: 44 34 00 88 54 4D 50 41 0A 03 00 70 7D 0C 00 00  // D4..TMPA...p}...
    0B30: 01 00 44 49 44 35 00 88 54 4D 50 41 0A 04 00 70  // ..DID5..TMPA...p
    0B40: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 41  // }.....DID6..TMPA
    0B50: 0A 05 00 70 7D 0C 00 00 01 00 44 49 44 37 00 88  // ...p}.....DID7..
    0B60: 54 4D 50 41 0A 06 00 70 7D 0C 00 00 01 00 44 49  // TMPA...p}.....DI
    0B70: 44 38 00 88 54 4D 50 41 0A 07 00 70 7D 0C 00 00  // D8..TMPA...p}...
    0B80: 01 00 44 49 44 39 00 88 54 4D 50 41 0A 08 00 A0  // ..DID9..TMPA....
    0B90: 15 93 49 4D 54 50 01 70 0C 00 CA 02 00 88 54 4D  // ..IMTP.p......TM
    0BA0: 50 41 0A 09 00 A1 15 70 7D 0C 00 00 01 00 44 49  // PA.....p}.....DI
    0BB0: 44 41 00 88 54 4D 50 41 0A 09 00 A4 54 4D 50 41  // DA..TMPA....TMPA
    0BC0: A0 4F 13 93 4E 44 49 44 0A 0B 08 54 4D 50 42 12  // .O..NDID...TMPB.
    0BD0: 39 0B 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // 9...............
    0BE0: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0BF0: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
    0C00: FF FF FF FF 0C FF FF FF FF 70 7D 0C 00 00 01 00  // .........p}.....
    0C10: 44 49 44 31 00 88 54 4D 50 42 00 00 70 7D 0C 00  // DID1..TMPB..p}..
    0C20: 00 01 00 44 49 44 32 00 88 54 4D 50 42 01 00 70  // ...DID2..TMPB..p
    0C30: 7D 0C 00 00 01 00 44 49 44 33 00 88 54 4D 50 42  // }.....DID3..TMPB
    0C40: 0A 02 00 70 7D 0C 00 00 01 00 44 49 44 34 00 88  // ...p}.....DID4..
    0C50: 54 4D 50 42 0A 03 00 70 7D 0C 00 00 01 00 44 49  // TMPB...p}.....DI
    0C60: 44 35 00 88 54 4D 50 42 0A 04 00 70 7D 0C 00 00  // D5..TMPB...p}...
    0C70: 01 00 44 49 44 36 00 88 54 4D 50 42 0A 05 00 70  // ..DID6..TMPB...p
    0C80: 7D 0C 00 00 01 00 44 49 44 37 00 88 54 4D 50 42  // }.....DID7..TMPB
    0C90: 0A 06 00 70 7D 0C 00 00 01 00 44 49 44 38 00 88  // ...p}.....DID8..
    0CA0: 54 4D 50 42 0A 07 00 70 7D 0C 00 00 01 00 44 49  // TMPB...p}.....DI
    0CB0: 44 39 00 88 54 4D 50 42 0A 08 00 70 7D 0C 00 00  // D9..TMPB...p}...
    0CC0: 01 00 44 49 44 41 00 88 54 4D 50 42 0A 09 00 A0  // ..DIDA..TMPB....
    0CD0: 15 93 49 4D 54 50 01 70 0C 00 CA 02 00 88 54 4D  // ..IMTP.p......TM
    0CE0: 50 42 0A 0A 00 A1 15 70 7D 0C 00 00 01 00 44 49  // PB.....p}.....DI
    0CF0: 44 42 00 88 54 4D 50 42 0A 0A 00 A4 54 4D 50 42  // DB..TMPB....TMPB
    0D00: A0 48 15 93 4E 44 49 44 0A 0C 08 54 4D 50 43 12  // .H..NDID...TMPC.
    0D10: 3E 0C 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // >...............
    0D20: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0D30: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
    0D40: FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 70 7D  // ..............p}
    0D50: 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50 43 00  // .....DID1..TMPC.
    0D60: 00 70 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D  // .p}.....DID2..TM
    0D70: 50 43 01 00 70 7D 0C 00 00 01 00 44 49 44 33 00  // PC..p}.....DID3.
    0D80: 88 54 4D 50 43 0A 02 00 70 7D 0C 00 00 01 00 44  // .TMPC...p}.....D
    0D90: 49 44 34 00 88 54 4D 50 43 0A 03 00 70 7D 0C 00  // ID4..TMPC...p}..
    0DA0: 00 01 00 44 49 44 35 00 88 54 4D 50 43 0A 04 00  // ...DID5..TMPC...
    0DB0: 70 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50  // p}.....DID6..TMP
    0DC0: 43 0A 05 00 70 7D 0C 00 00 01 00 44 49 44 37 00  // C...p}.....DID7.
    0DD0: 88 54 4D 50 43 0A 06 00 70 7D 0C 00 00 01 00 44  // .TMPC...p}.....D
    0DE0: 49 44 38 00 88 54 4D 50 43 0A 07 00 70 7D 0C 00  // ID8..TMPC...p}..
    0DF0: 00 01 00 44 49 44 39 00 88 54 4D 50 43 0A 08 00  // ...DID9..TMPC...
    0E00: 70 7D 0C 00 00 01 00 44 49 44 41 00 88 54 4D 50  // p}.....DIDA..TMP
    0E10: 43 0A 09 00 70 7D 0C 00 00 01 00 44 49 44 42 00  // C...p}.....DIDB.
    0E20: 88 54 4D 50 43 0A 0A 00 A0 15 93 49 4D 54 50 01  // .TMPC......IMTP.
    0E30: 70 0C 00 CA 02 00 88 54 4D 50 43 0A 0B 00 A1 15  // p......TMPC.....
    0E40: 70 7D 0C 00 00 01 00 44 49 44 43 00 88 54 4D 50  // p}.....DIDC..TMP
    0E50: 43 0A 0B 00 A4 54 4D 50 43 A0 42 17 93 4E 44 49  // C....TMPC.B..NDI
    0E60: 44 0A 0D 08 54 4D 50 44 12 44 04 0D 0C FF FF FF  // D...TMPD.D......
    0E70: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    0E80: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
    0E90: FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF  // ................
    0EA0: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 70 7D 0C  // .............p}.
    0EB0: 00 00 01 00 44 49 44 31 00 88 54 4D 50 44 00 00  // ....DID1..TMPD..
    0EC0: 70 7D 0C 00 00 01 00 44 49 44 32 00 88 54 4D 50  // p}.....DID2..TMP
    0ED0: 44 01 00 70 7D 0C 00 00 01 00 44 49 44 33 00 88  // D..p}.....DID3..
    0EE0: 54 4D 50 44 0A 02 00 70 7D 0C 00 00 01 00 44 49  // TMPD...p}.....DI
    0EF0: 44 34 00 88 54 4D 50 44 0A 03 00 70 7D 0C 00 00  // D4..TMPD...p}...
    0F00: 01 00 44 49 44 35 00 88 54 4D 50 44 0A 04 00 70  // ..DID5..TMPD...p
    0F10: 7D 0C 00 00 01 00 44 49 44 36 00 88 54 4D 50 44  // }.....DID6..TMPD
    0F20: 0A 05 00 70 7D 0C 00 00 01 00 44 49 44 37 00 88  // ...p}.....DID7..
    0F30: 54 4D 50 44 0A 06 00 70 7D 0C 00 00 01 00 44 49  // TMPD...p}.....DI
    0F40: 44 38 00 88 54 4D 50 44 0A 07 00 70 7D 0C 00 00  // D8..TMPD...p}...
    0F50: 01 00 44 49 44 39 00 88 54 4D 50 44 0A 08 00 70  // ..DID9..TMPD...p
    0F60: 7D 0C 00 00 01 00 44 49 44 41 00 88 54 4D 50 44  // }.....DIDA..TMPD
    0F70: 0A 09 00 70 7D 0C 00 00 01 00 44 49 44 42 00 88  // ...p}.....DIDB..
    0F80: 54 4D 50 44 0A 0A 00 70 7D 0C 00 00 01 00 44 49  // TMPD...p}.....DI
    0F90: 44 43 00 88 54 4D 50 44 0A 0B 00 A0 15 93 49 4D  // DC..TMPD......IM
    0FA0: 54 50 01 70 0C 00 CA 02 00 88 54 4D 50 44 0A 0C  // TP.p......TMPD..
    0FB0: 00 A1 15 70 7D 0C 00 00 01 00 44 49 44 44 00 88  // ...p}.....DIDD..
    0FC0: 54 4D 50 44 0A 0C 00 A4 54 4D 50 44 A0 4B 18 93  // TMPD....TMPD.K..
    0FD0: 4E 44 49 44 0A 0E 08 54 4D 50 45 12 49 04 0E 0C  // NDID...TMPE.I...
    0FE0: FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF  // ................
    0FF0: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    1000: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    1010: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    1020: 0C FF FF FF FF 70 7D 0C 00 00 01 00 44 49 44 31  // .....p}.....DID1
    1030: 00 88 54 4D 50 45 00 00 70 7D 0C 00 00 01 00 44  // ..TMPE..p}.....D
    1040: 49 44 32 00 88 54 4D 50 45 01 00 70 7D 0C 00 00  // ID2..TMPE..p}...
    1050: 01 00 44 49 44 33 00 88 54 4D 50 45 0A 02 00 70  // ..DID3..TMPE...p
    1060: 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50 45  // }.....DID4..TMPE
    1070: 0A 03 00 70 7D 0C 00 00 01 00 44 49 44 35 00 88  // ...p}.....DID5..
    1080: 54 4D 50 45 0A 04 00 70 7D 0C 00 00 01 00 44 49  // TMPE...p}.....DI
    1090: 44 36 00 88 54 4D 50 45 0A 05 00 70 7D 0C 00 00  // D6..TMPE...p}...
    10A0: 01 00 44 49 44 37 00 88 54 4D 50 45 0A 06 00 70  // ..DID7..TMPE...p
    10B0: 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50 45  // }.....DID8..TMPE
    10C0: 0A 07 00 70 7D 0C 00 00 01 00 44 49 44 39 00 88  // ...p}.....DID9..
    10D0: 54 4D 50 45 0A 08 00 70 7D 0C 00 00 01 00 44 49  // TMPE...p}.....DI
    10E0: 44 41 00 88 54 4D 50 45 0A 09 00 70 7D 0C 00 00  // DA..TMPE...p}...
    10F0: 01 00 44 49 44 42 00 88 54 4D 50 45 0A 0A 00 70  // ..DIDB..TMPE...p
    1100: 7D 0C 00 00 01 00 44 49 44 43 00 88 54 4D 50 45  // }.....DIDC..TMPE
    1110: 0A 0B 00 70 7D 0C 00 00 01 00 44 49 44 44 00 88  // ...p}.....DIDD..
    1120: 54 4D 50 45 0A 0C 00 A0 15 93 49 4D 54 50 01 70  // TMPE......IMTP.p
    1130: 0C 00 CA 02 00 88 54 4D 50 45 0A 0D 00 A1 15 70  // ......TMPE.....p
    1140: 7D 0C 00 00 01 00 44 49 44 45 00 88 54 4D 50 45  // }.....DIDE..TMPE
    1150: 0A 0D 00 A4 54 4D 50 45 A0 44 1A 93 4E 44 49 44  // ....TMPE.D..NDID
    1160: 0A 0F 08 54 4D 50 46 12 4E 04 0F 0C FF FF FF FF  // ...TMPF.N.......
    1170: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
    1180: FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF  // ................
    1190: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    11A0: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    11B0: FF 0C FF FF FF FF 70 7D 0C 00 00 01 00 44 49 44  // ......p}.....DID
    11C0: 31 00 88 54 4D 50 46 00 00 70 7D 0C 00 00 01 00  // 1..TMPF..p}.....
    11D0: 44 49 44 32 00 88 54 4D 50 46 01 00 70 7D 0C 00  // DID2..TMPF..p}..
    11E0: 00 01 00 44 49 44 33 00 88 54 4D 50 46 0A 02 00  // ...DID3..TMPF...
    11F0: 70 7D 0C 00 00 01 00 44 49 44 34 00 88 54 4D 50  // p}.....DID4..TMP
    1200: 46 0A 03 00 70 7D 0C 00 00 01 00 44 49 44 35 00  // F...p}.....DID5.
    1210: 88 54 4D 50 46 0A 04 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    1220: 49 44 36 00 88 54 4D 50 46 0A 05 00 70 7D 0C 00  // ID6..TMPF...p}..
    1230: 00 01 00 44 49 44 37 00 88 54 4D 50 46 0A 06 00  // ...DID7..TMPF...
    1240: 70 7D 0C 00 00 01 00 44 49 44 38 00 88 54 4D 50  // p}.....DID8..TMP
    1250: 46 0A 07 00 70 7D 0C 00 00 01 00 44 49 44 39 00  // F...p}.....DID9.
    1260: 88 54 4D 50 46 0A 08 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    1270: 49 44 41 00 88 54 4D 50 46 0A 09 00 70 7D 0C 00  // IDA..TMPF...p}..
    1280: 00 01 00 44 49 44 42 00 88 54 4D 50 46 0A 0A 00  // ...DIDB..TMPF...
    1290: 70 7D 0C 00 00 01 00 44 49 44 43 00 88 54 4D 50  // p}.....DIDC..TMP
    12A0: 46 0A 0B 00 70 7D 0C 00 00 01 00 44 49 44 44 00  // F...p}.....DIDD.
    12B0: 88 54 4D 50 46 0A 0C 00 70 7D 0C 00 00 01 00 44  // .TMPF...p}.....D
    12C0: 49 44 45 00 88 54 4D 50 46 0A 0D 00 A0 15 93 49  // IDE..TMPF......I
    12D0: 4D 54 50 01 70 0C 00 CA 02 00 88 54 4D 50 46 0A  // MTP.p......TMPF.
    12E0: 0E 00 A1 15 70 7D 0C 00 00 01 00 44 49 44 46 00  // ....p}.....DIDF.
    12F0: 88 54 4D 50 46 0A 0E 00 A4 54 4D 50 46 A0 4F 19  // .TMPF....TMPF.O.
    1300: 93 4E 44 49 44 0A 10 08 54 4D 50 47 12 43 05 10  // .NDID...TMPG.C..
    1310: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
    1320: FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF  // ................
    1330: FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF  // ................
    1340: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    1350: FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF  // ................
    1360: 70 7D 0C 00 00 01 00 44 49 44 31 00 88 54 4D 50  // p}.....DID1..TMP
    1370: 47 00 00 70 7D 0C 00 00 01 00 44 49 44 32 00 88  // G..p}.....DID2..
    1380: 54 4D 50 47 01 00 70 7D 0C 00 00 01 00 44 49 44  // TMPG..p}.....DID
    1390: 33 00 88 54 4D 50 47 0A 02 00 70 7D 0C 00 00 01  // 3..TMPG...p}....
    13A0: 00 44 49 44 34 00 88 54 4D 50 47 0A 03 00 70 7D  // .DID4..TMPG...p}
    13B0: 0C 00 00 01 00 44 49 44 35 00 88 54 4D 50 47 0A  // .....DID5..TMPG.
    13C0: 04 00 70 7D 0C 00 00 01 00 44 49 44 36 00 88 54  // ..p}.....DID6..T
    13D0: 4D 50 47 0A 05 00 70 7D 0C 00 00 01 00 44 49 44  // MPG...p}.....DID
    13E0: 37 00 88 54 4D 50 47 0A 06 00 70 7D 0C 00 00 01  // 7..TMPG...p}....
    13F0: 00 44 49 44 38 00 88 54 4D 50 47 0A 07 00 70 7D  // .DID8..TMPG...p}
    1400: 0C 00 00 01 00 44 49 44 39 00 88 54 4D 50 47 0A  // .....DID9..TMPG.
    1410: 08 00 70 7D 0C 00 00 01 00 44 49 44 41 00 88 54  // ..p}.....DIDA..T
    1420: 4D 50 47 0A 09 00 70 7D 0C 00 00 01 00 44 49 44  // MPG...p}.....DID
    1430: 42 00 88 54 4D 50 47 0A 0A 00 70 7D 0C 00 00 01  // B..TMPG...p}....
    1440: 00 44 49 44 43 00 88 54 4D 50 47 0A 0B 00 70 7D  // .DIDC..TMPG...p}
    1450: 0C 00 00 01 00 44 49 44 44 00 88 54 4D 50 47 0A  // .....DIDD..TMPG.
    1460: 0C 00 70 7D 0C 00 00 01 00 44 49 44 45 00 88 54  // ..p}.....DIDE..T
    1470: 4D 50 47 0A 0D 00 70 7D 0C 00 00 01 00 44 49 44  // MPG...p}.....DID
    1480: 46 00 88 54 4D 50 47 0A 0E 00 70 0C 00 CA 02 00  // F..TMPG...p.....
    1490: 88 54 4D 50 47 0A 0F 00 A4 54 4D 50 47 A4 12 05  // .TMPG....TMPG...
    14A0: 01 0B 00 04 5B 82 42 09 44 44 30 31 14 46 04 5F  // ....[.B.DD01.F._
    14B0: 41 44 52 08 A0 28 93 7B 0B 00 0F 44 49 44 31 00  // ADR..(.{...DID1.
    14C0: 0B 00 04 70 01 45 44 50 56 70 4E 58 44 31 4E 58  // ...p.EDPVpNXD1NX
    14D0: 44 58 70 44 49 44 31 44 49 44 58 A4 01 A0 09 93  // DXpDID1DIDX.....
    14E0: 44 49 44 31 00 A4 01 A1 0B A4 7B 0B FF FF 44 49  // DID1......{...DI
    14F0: 44 31 00 14 0F 5F 44 43 53 00 A4 43 44 44 53 44  // D1..._DCS..CDDSD
    1500: 49 44 31 14 28 5F 44 47 53 00 A0 18 90 93 7B 53  // ID1.(_DGS.....{S
    1510: 47 4D 44 0A 7F 00 01 5B 12 53 4E 58 44 00 A4 4E  // GMD....[.SNXD..N
    1520: 58 44 31 A4 4E 44 44 53 44 49 44 31 14 0B 5F 44  // XD1.NDDSDID1.._D
    1530: 53 53 01 44 53 53 54 68 5B 82 4F 09 44 44 30 32  // SS.DSSTh[.O.DD02
    1540: 14 49 04 5F 41 44 52 08 A0 2A 93 7B 0B 00 0F 44  // .I._ADR..*.{...D
    1550: 49 44 32 00 0B 00 04 70 0A 02 45 44 50 56 70 4E  // ID2....p..EDPVpN
    1560: 58 44 32 4E 58 44 58 70 44 49 44 32 44 49 44 58  // XD2NXDXpDID2DIDX
    1570: A4 0A 02 A0 0A 93 44 49 44 32 00 A4 0A 02 A1 0B  // ......DID2......
    1580: A4 7B 0B FF FF 44 49 44 32 00 14 19 5F 44 43 53  // .{...DID2..._DCS
    1590: 00 A0 09 93 4C 49 44 53 00 A4 00 A4 43 44 44 53  // ....LIDS....CDDS
    15A0: 44 49 44 32 14 28 5F 44 47 53 00 A0 18 90 93 7B  // DID2.(_DGS.....{
    15B0: 53 47 4D 44 0A 7F 00 01 5B 12 53 4E 58 44 00 A4  // SGMD....[.SNXD..
    15C0: 4E 58 44 32 A4 4E 44 44 53 44 49 44 32 14 0B 5F  // NXD2.NDDSDID2.._
    15D0: 44 53 53 01 44 53 53 54 68 5B 82 42 0A 44 44 30  // DSS.DSSTh[.B.DD0
    15E0: 33 14 49 04 5F 41 44 52 08 A0 2A 93 7B 0B 00 0F  // 3.I._ADR..*.{...
    15F0: 44 49 44 33 00 0B 00 04 70 0A 03 45 44 50 56 70  // DID3....p..EDPVp
    1600: 4E 58 44 33 4E 58 44 58 70 44 49 44 33 44 49 44  // NXD3NXDXpDID3DID
    1610: 58 A4 0A 03 A0 0A 93 44 49 44 33 00 A4 0A 03 A1  // X......DID3.....
    1620: 0B A4 7B 0B FF FF 44 49 44 33 00 14 1C 5F 44 43  // ..{...DID3..._DC
    1630: 53 00 A0 0A 93 44 49 44 33 00 A4 0A 0B A1 0A A4  // S....DID3.......
    1640: 43 44 44 53 44 49 44 33 14 28 5F 44 47 53 00 A0  // CDDSDID3.(_DGS..
    1650: 18 90 93 7B 53 47 4D 44 0A 7F 00 01 5B 12 53 4E  // ...{SGMD....[.SN
    1660: 58 44 00 A4 4E 58 44 33 A4 4E 44 44 53 44 49 44  // XD..NXD3.NDDSDID
    1670: 33 14 0B 5F 44 53 53 01 44 53 53 54 68 5B 82 42  // 3.._DSS.DSSTh[.B
    1680: 0A 44 44 30 34 14 49 04 5F 41 44 52 08 A0 2A 93  // .DD04.I._ADR..*.
    1690: 7B 0B 00 0F 44 49 44 34 00 0B 00 04 70 0A 04 45  // {...DID4....p..E
    16A0: 44 50 56 70 4E 58 44 34 4E 58 44 58 70 44 49 44  // DPVpNXD4NXDXpDID
    16B0: 34 44 49 44 58 A4 0A 04 A0 0A 93 44 49 44 34 00  // 4DIDX......DID4.
    16C0: A4 0A 04 A1 0B A4 7B 0B FF FF 44 49 44 34 00 14  // ......{...DID4..
    16D0: 1C 5F 44 43 53 00 A0 0A 93 44 49 44 34 00 A4 0A  // ._DCS....DID4...
    16E0: 0B A1 0A A4 43 44 44 53 44 49 44 34 14 28 5F 44  // ....CDDSDID4.(_D
    16F0: 47 53 00 A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01  // GS.....{SGMD....
    1700: 5B 12 53 4E 58 44 00 A4 4E 58 44 34 A4 4E 44 44  // [.SNXD..NXD4.NDD
    1710: 53 44 49 44 34 14 0B 5F 44 53 53 01 44 53 53 54  // SDID4.._DSS.DSST
    1720: 68 5B 82 42 0A 44 44 30 35 14 49 04 5F 41 44 52  // h[.B.DD05.I._ADR
    1730: 08 A0 2A 93 7B 0B 00 0F 44 49 44 35 00 0B 00 04  // ..*.{...DID5....
    1740: 70 0A 05 45 44 50 56 70 4E 58 44 35 4E 58 44 58  // p..EDPVpNXD5NXDX
    1750: 70 44 49 44 35 44 49 44 58 A4 0A 05 A0 0A 93 44  // pDID5DIDX......D
    1760: 49 44 35 00 A4 0A 05 A1 0B A4 7B 0B FF FF 44 49  // ID5.......{...DI
    1770: 44 35 00 14 1C 5F 44 43 53 00 A0 0A 93 44 49 44  // D5..._DCS....DID
    1780: 35 00 A4 0A 0B A1 0A A4 43 44 44 53 44 49 44 35  // 5.......CDDSDID5
    1790: 14 28 5F 44 47 53 00 A0 18 90 93 7B 53 47 4D 44  // .(_DGS.....{SGMD
    17A0: 0A 7F 00 01 5B 12 53 4E 58 44 00 A4 4E 58 44 35  // ....[.SNXD..NXD5
    17B0: A4 4E 44 44 53 44 49 44 35 14 0B 5F 44 53 53 01  // .NDDSDID5.._DSS.
    17C0: 44 53 53 54 68 5B 82 42 0A 44 44 30 36 14 49 04  // DSSTh[.B.DD06.I.
    17D0: 5F 41 44 52 08 A0 2A 93 7B 0B 00 0F 44 49 44 36  // _ADR..*.{...DID6
    17E0: 00 0B 00 04 70 0A 06 45 44 50 56 70 4E 58 44 36  // ....p..EDPVpNXD6
    17F0: 4E 58 44 58 70 44 49 44 36 44 49 44 58 A4 0A 06  // NXDXpDID6DIDX...
    1800: A0 0A 93 44 49 44 36 00 A4 0A 06 A1 0B A4 7B 0B  // ...DID6.......{.
    1810: FF FF 44 49 44 36 00 14 1C 5F 44 43 53 00 A0 0A  // ..DID6..._DCS...
    1820: 93 44 49 44 36 00 A4 0A 0B A1 0A A4 43 44 44 53  // .DID6.......CDDS
    1830: 44 49 44 36 14 28 5F 44 47 53 00 A0 18 90 93 7B  // DID6.(_DGS.....{
    1840: 53 47 4D 44 0A 7F 00 01 5B 12 53 4E 58 44 00 A4  // SGMD....[.SNXD..
    1850: 4E 58 44 36 A4 4E 44 44 53 44 49 44 36 14 0B 5F  // NXD6.NDDSDID6.._
    1860: 44 53 53 01 44 53 53 54 68 5B 82 42 0A 44 44 30  // DSS.DSSTh[.B.DD0
    1870: 37 14 49 04 5F 41 44 52 08 A0 2A 93 7B 0B 00 0F  // 7.I._ADR..*.{...
    1880: 44 49 44 37 00 0B 00 04 70 0A 07 45 44 50 56 70  // DID7....p..EDPVp
    1890: 4E 58 44 37 4E 58 44 58 70 44 49 44 37 44 49 44  // NXD7NXDXpDID7DID
    18A0: 58 A4 0A 07 A0 0A 93 44 49 44 37 00 A4 0A 07 A1  // X......DID7.....
    18B0: 0B A4 7B 0B FF FF 44 49 44 37 00 14 1C 5F 44 43  // ..{...DID7..._DC
    18C0: 53 00 A0 0A 93 44 49 44 37 00 A4 0A 0B A1 0A A4  // S....DID7.......
    18D0: 43 44 44 53 44 49 44 37 14 28 5F 44 47 53 00 A0  // CDDSDID7.(_DGS..
    18E0: 18 90 93 7B 53 47 4D 44 0A 7F 00 01 5B 12 53 4E  // ...{SGMD....[.SN
    18F0: 58 44 00 A4 4E 58 44 37 A4 4E 44 44 53 44 49 44  // XD..NXD7.NDDSDID
    1900: 37 14 0B 5F 44 53 53 01 44 53 53 54 68 5B 82 42  // 7.._DSS.DSSTh[.B
    1910: 0A 44 44 30 38 14 49 04 5F 41 44 52 08 A0 2A 93  // .DD08.I._ADR..*.
    1920: 7B 0B 00 0F 44 49 44 38 00 0B 00 04 70 0A 08 45  // {...DID8....p..E
    1930: 44 50 56 70 4E 58 44 38 4E 58 44 58 70 44 49 44  // DPVpNXD8NXDXpDID
    1940: 38 44 49 44 58 A4 0A 08 A0 0A 93 44 49 44 38 00  // 8DIDX......DID8.
    1950: A4 0A 08 A1 0B A4 7B 0B FF FF 44 49 44 38 00 14  // ......{...DID8..
    1960: 1C 5F 44 43 53 00 A0 0A 93 44 49 44 38 00 A4 0A  // ._DCS....DID8...
    1970: 0B A1 0A A4 43 44 44 53 44 49 44 38 14 28 5F 44  // ....CDDSDID8.(_D
    1980: 47 53 00 A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01  // GS.....{SGMD....
    1990: 5B 12 53 4E 58 44 00 A4 4E 58 44 38 A4 4E 44 44  // [.SNXD..NXD8.NDD
    19A0: 53 44 49 44 38 14 0B 5F 44 53 53 01 44 53 53 54  // SDID8.._DSS.DSST
    19B0: 68 5B 82 42 0A 44 44 30 39 14 49 04 5F 41 44 52  // h[.B.DD09.I._ADR
    19C0: 08 A0 2A 93 7B 0B 00 0F 44 49 44 39 00 0B 00 04  // ..*.{...DID9....
    19D0: 70 0A 09 45 44 50 56 70 4E 58 44 38 4E 58 44 58  // p..EDPVpNXD8NXDX
    19E0: 70 44 49 44 39 44 49 44 58 A4 0A 09 A0 0A 93 44  // pDID9DIDX......D
    19F0: 49 44 39 00 A4 0A 09 A1 0B A4 7B 0B FF FF 44 49  // ID9.......{...DI
    1A00: 44 39 00 14 1C 5F 44 43 53 00 A0 0A 93 44 49 44  // D9..._DCS....DID
    1A10: 39 00 A4 0A 0B A1 0A A4 43 44 44 53 44 49 44 39  // 9.......CDDSDID9
    1A20: 14 28 5F 44 47 53 00 A0 18 90 93 7B 53 47 4D 44  // .(_DGS.....{SGMD
    1A30: 0A 7F 00 01 5B 12 53 4E 58 44 00 A4 4E 58 44 38  // ....[.SNXD..NXD8
    1A40: A4 4E 44 44 53 44 49 44 39 14 0B 5F 44 53 53 01  // .NDDSDID9.._DSS.
    1A50: 44 53 53 54 68 5B 82 42 0A 44 44 30 41 14 49 04  // DSSTh[.B.DD0A.I.
    1A60: 5F 41 44 52 08 A0 2A 93 7B 0B 00 0F 44 49 44 41  // _ADR..*.{...DIDA
    1A70: 00 0B 00 04 70 0A 0A 45 44 50 56 70 4E 58 44 38  // ....p..EDPVpNXD8
    1A80: 4E 58 44 58 70 44 49 44 41 44 49 44 58 A4 0A 0A  // NXDXpDIDADIDX...
    1A90: A0 0A 93 44 49 44 41 00 A4 0A 0A A1 0B A4 7B 0B  // ...DIDA.......{.
    1AA0: FF FF 44 49 44 41 00 14 1C 5F 44 43 53 00 A0 0A  // ..DIDA..._DCS...
    1AB0: 93 44 49 44 41 00 A4 0A 0B A1 0A A4 43 44 44 53  // .DIDA.......CDDS
    1AC0: 44 49 44 41 14 28 5F 44 47 53 00 A0 18 90 93 7B  // DIDA.(_DGS.....{
    1AD0: 53 47 4D 44 0A 7F 00 01 5B 12 53 4E 58 44 00 A4  // SGMD....[.SNXD..
    1AE0: 4E 58 44 38 A4 4E 44 44 53 44 49 44 41 14 0B 5F  // NXD8.NDDSDIDA.._
    1AF0: 44 53 53 01 44 53 53 54 68 5B 82 42 0A 44 44 30  // DSS.DSSTh[.B.DD0
    1B00: 42 14 49 04 5F 41 44 52 08 A0 2A 93 7B 0B 00 0F  // B.I._ADR..*.{...
    1B10: 44 49 44 42 00 0B 00 04 70 0A 0B 45 44 50 56 70  // DIDB....p..EDPVp
    1B20: 4E 58 44 38 4E 58 44 58 70 44 49 44 42 44 49 44  // NXD8NXDXpDIDBDID
    1B30: 58 A4 0A 0B A0 0A 93 44 49 44 42 00 A4 0A 0B A1  // X......DIDB.....
    1B40: 0B A4 7B 0B FF FF 44 49 44 42 00 14 1C 5F 44 43  // ..{...DIDB..._DC
    1B50: 53 00 A0 0A 93 44 49 44 42 00 A4 0A 0B A1 0A A4  // S....DIDB.......
    1B60: 43 44 44 53 44 49 44 42 14 28 5F 44 47 53 00 A0  // CDDSDIDB.(_DGS..
    1B70: 18 90 93 7B 53 47 4D 44 0A 7F 00 01 5B 12 53 4E  // ...{SGMD....[.SN
    1B80: 58 44 00 A4 4E 58 44 38 A4 4E 44 44 53 44 49 44  // XD..NXD8.NDDSDID
    1B90: 42 14 0B 5F 44 53 53 01 44 53 53 54 68 5B 82 42  // B.._DSS.DSSTh[.B
    1BA0: 0A 44 44 30 43 14 49 04 5F 41 44 52 08 A0 2A 93  // .DD0C.I._ADR..*.
    1BB0: 7B 0B 00 0F 44 49 44 43 00 0B 00 04 70 0A 0C 45  // {...DIDC....p..E
    1BC0: 44 50 56 70 4E 58 44 38 4E 58 44 58 70 44 49 44  // DPVpNXD8NXDXpDID
    1BD0: 43 44 49 44 58 A4 0A 0C A0 0A 93 44 49 44 43 00  // CDIDX......DIDC.
    1BE0: A4 0A 0C A1 0B A4 7B 0B FF FF 44 49 44 43 00 14  // ......{...DIDC..
    1BF0: 1C 5F 44 43 53 00 A0 0A 93 44 49 44 43 00 A4 0A  // ._DCS....DIDC...
    1C00: 0C A1 0A A4 43 44 44 53 44 49 44 43 14 28 5F 44  // ....CDDSDIDC.(_D
    1C10: 47 53 00 A0 18 90 93 7B 53 47 4D 44 0A 7F 00 01  // GS.....{SGMD....
    1C20: 5B 12 53 4E 58 44 00 A4 4E 58 44 38 A4 4E 44 44  // [.SNXD..NXD8.NDD
    1C30: 53 44 49 44 43 14 0B 5F 44 53 53 01 44 53 53 54  // SDIDC.._DSS.DSST
    1C40: 68 5B 82 42 0A 44 44 30 44 14 49 04 5F 41 44 52  // h[.B.DD0D.I._ADR
    1C50: 08 A0 2A 93 7B 0B 00 0F 44 49 44 44 00 0B 00 04  // ..*.{...DIDD....
    1C60: 70 0A 0D 45 44 50 56 70 4E 58 44 38 4E 58 44 58  // p..EDPVpNXD8NXDX
    1C70: 70 44 49 44 44 44 49 44 58 A4 0A 0D A0 0A 93 44  // pDIDDDIDX......D
    1C80: 49 44 44 00 A4 0A 0D A1 0B A4 7B 0B FF FF 44 49  // IDD.......{...DI
    1C90: 44 44 00 14 1C 5F 44 43 53 00 A0 0A 93 44 49 44  // DD..._DCS....DID
    1CA0: 44 00 A4 0A 0D A1 0A A4 43 44 44 53 44 49 44 44  // D.......CDDSDIDD
    1CB0: 14 28 5F 44 47 53 00 A0 18 90 93 7B 53 47 4D 44  // .(_DGS.....{SGMD
    1CC0: 0A 7F 00 01 5B 12 53 4E 58 44 00 A4 4E 58 44 38  // ....[.SNXD..NXD8
    1CD0: A4 4E 44 44 53 44 49 44 44 14 0B 5F 44 53 53 01  // .NDDSDIDD.._DSS.
    1CE0: 44 53 53 54 68 5B 82 42 0A 44 44 30 45 14 49 04  // DSSTh[.B.DD0E.I.
    1CF0: 5F 41 44 52 08 A0 2A 93 7B 0B 00 0F 44 49 44 45  // _ADR..*.{...DIDE
    1D00: 00 0B 00 04 70 0A 0E 45 44 50 56 70 4E 58 44 38  // ....p..EDPVpNXD8
    1D10: 4E 58 44 58 70 44 49 44 45 44 49 44 58 A4 0A 0E  // NXDXpDIDEDIDX...
    1D20: A0 0A 93 44 49 44 45 00 A4 0A 0E A1 0B A4 7B 0B  // ...DIDE.......{.
    1D30: FF FF 44 49 44 45 00 14 1C 5F 44 43 53 00 A0 0A  // ..DIDE..._DCS...
    1D40: 93 44 49 44 45 00 A4 0A 0E A1 0A A4 43 44 44 53  // .DIDE.......CDDS
    1D50: 44 49 44 45 14 28 5F 44 47 53 00 A0 18 90 93 7B  // DIDE.(_DGS.....{
    1D60: 53 47 4D 44 0A 7F 00 01 5B 12 53 4E 58 44 00 A4  // SGMD....[.SNXD..
    1D70: 4E 58 44 38 A4 4E 44 44 53 44 49 44 45 14 0B 5F  // NXD8.NDDSDIDE.._
    1D80: 44 53 53 01 44 53 53 54 68 5B 82 42 0A 44 44 30  // DSS.DSSTh[.B.DD0
    1D90: 46 14 49 04 5F 41 44 52 08 A0 2A 93 7B 0B 00 0F  // F.I._ADR..*.{...
    1DA0: 44 49 44 46 00 0B 00 04 70 0A 0F 45 44 50 56 70  // DIDF....p..EDPVp
    1DB0: 4E 58 44 38 4E 58 44 58 70 44 49 44 46 44 49 44  // NXD8NXDXpDIDFDID
    1DC0: 58 A4 0A 0F A0 0A 93 44 49 44 46 00 A4 0A 0F A1  // X......DIDF.....
    1DD0: 0B A4 7B 0B FF FF 44 49 44 46 00 14 1C 5F 44 43  // ..{...DIDF..._DC
    1DE0: 53 00 A0 0A 93 44 49 44 43 00 A4 0A 0F A1 0A A4  // S....DIDC.......
    1DF0: 43 44 44 53 44 49 44 46 14 28 5F 44 47 53 00 A0  // CDDSDIDF.(_DGS..
    1E00: 18 90 93 7B 53 47 4D 44 0A 7F 00 01 5B 12 53 4E  // ...{SGMD....[.SN
    1E10: 58 44 00 A4 4E 58 44 38 A4 4E 44 44 53 44 49 44  // XD..NXD8.NDDSDID
    1E20: 46 14 0B 5F 44 53 53 01 44 53 53 54 68 5B 82 40  // F.._DSS.DSSTh[.@
    1E30: 1E 44 44 31 46 14 1D 5F 41 44 52 08 A0 0A 93 45  // .DD1F.._ADR....E
    1E40: 44 50 56 00 A4 0A 1F A1 0B A4 7B 0B FF FF 44 49  // DPV.......{...DI
    1E50: 44 58 00 14 1B 5F 44 43 53 00 A0 09 93 45 44 50  // DX..._DCS....EDP
    1E60: 56 00 A4 00 A1 0A A4 43 44 44 53 44 49 44 58 14  // V......CDDSDIDX.
    1E70: 28 5F 44 47 53 00 A0 18 90 93 7B 53 47 4D 44 0A  // (_DGS.....{SGMD.
    1E80: 7F 00 01 5B 12 53 4E 58 44 00 A4 4E 58 44 58 A4  // ...[.SNXD..NXDX.
    1E90: 4E 44 44 53 44 49 44 58 14 0B 5F 44 53 53 01 44  // NDDSDIDX.._DSS.D
    1EA0: 53 53 54 68 14 40 13 5F 42 43 4C 00 A0 2A 5C 5F  // SSTh.@._BCL..*\_
    1EB0: 4F 53 49 0D 4C 69 6E 75 78 00 A4 12 1B 0D 0A 64  // OSI.Linux......d
    1EC0: 0A 43 01 0A 02 0A 03 0A 05 0A 08 0A 0C 0A 12 0A  // .C..............
    1ED0: 1B 0A 27 0A 43 0A 64 A1 4D 0F A0 26 93 4F 53 59  // ..'.C.d.M..&.OSY
    1EE0: 53 0B D9 07 A4 12 1B 0D 0A 64 0A 43 01 0A 14 0A  // S........d.C....
    1EF0: 1E 0A 28 0A 3A 0A 40 0A 46 0A 52 0A 58 0A 5E 0A  // ..(.:.@.F.R.X.^.
    1F00: 64 A1 43 0D A4 12 4F 0C 67 0A 50 0A 32 00 01 0A  // d.C...O.g.P.2...
    1F10: 02 0A 03 0A 04 0A 05 0A 06 0A 07 0A 08 0A 09 0A  // ................
    1F20: 0A 0A 0B 0A 0C 0A 0D 0A 0E 0A 0F 0A 10 0A 11 0A  // ................
    1F30: 12 0A 13 0A 14 0A 15 0A 16 0A 17 0A 18 0A 19 0A  // ................
    1F40: 1A 0A 1B 0A 1C 0A 1D 0A 1E 0A 1F 0A 20 0A 21 0A  // ............ .!.
    1F50: 22 0A 23 0A 24 0A 25 0A 26 0A 27 0A 28 0A 29 0A  // ".#.$.%.&.'.(.).
    1F60: 2A 0A 2B 0A 2C 0A 2D 0A 2E 0A 2F 0A 30 0A 31 0A  // *.+.,.-.../.0.1.
    1F70: 32 0A 33 0A 34 0A 35 0A 36 0A 37 0A 38 0A 39 0A  // 2.3.4.5.6.7.8.9.
    1F80: 3A 0A 3B 0A 3C 0A 3D 0A 3E 0A 3F 0A 40 0A 41 0A  // :.;.<.=.>.?.@.A.
    1F90: 42 0A 43 0A 44 0A 45 0A 46 0A 47 0A 48 0A 49 0A  // B.C.D.E.F.G.H.I.
    1FA0: 4A 0A 4B 0A 4C 0A 4D 0A 4E 0A 4F 0A 50 0A 51 0A  // J.K.L.M.N.O.P.Q.
    1FB0: 52 0A 53 0A 54 0A 55 0A 56 0A 57 0A 58 0A 59 0A  // R.S.T.U.V.W.X.Y.
    1FC0: 5A 0A 5B 0A 5C 0A 5D 0A 5E 0A 5F 0A 60 0A 61 0A  // Z.[.\.].^._.`.a.
    1FD0: 62 0A 63 0A 64 14 2D 5F 42 43 4D 01 A0 26 90 92  // b.c.d.-_BCM..&..
    1FE0: 95 68 00 92 94 68 0A 64 5C 2F 04 5F 53 42 5F 50  // .h...h.d\/._SB_P
    1FF0: 43 49 30 47 46 58 30 41 49 4E 54 01 68 70 68 42  // CI0GFX0AINT.hphB
    2000: 52 54 4C 14 0B 5F 42 51 43 00 A4 42 52 54 4C 14  // RTL.._BQC..BRTL.
    2010: 44 0B 53 44 44 4C 01 75 4E 44 49 44 70 7B 68 0B  // D.SDDL.uNDIDp{h.
    2020: 0F 0F 00 60 7D 0C 00 00 00 80 60 61 A0 09 93 44  // ...`}.....`a...D
    2030: 49 44 4C 60 A4 61 A0 09 93 44 44 4C 32 60 A4 61  // IDL`.a...DDL2`.a
    2040: A0 09 93 44 44 4C 33 60 A4 61 A0 09 93 44 44 4C  // ...DDL3`.a...DDL
    2050: 34 60 A4 61 A0 09 93 44 44 4C 35 60 A4 61 A0 09  // 4`.a...DDL5`.a..
    2060: 93 44 44 4C 36 60 A4 61 A0 09 93 44 44 4C 37 60  // .DDL6`.a...DDL7`
    2070: A4 61 A0 09 93 44 44 4C 38 60 A4 61 A0 09 93 44  // .a...DDL8`.a...D
    2080: 44 4C 39 60 A4 61 A0 09 93 44 44 31 30 60 A4 61  // DL9`.a...DD10`.a
    2090: A0 09 93 44 44 31 31 60 A4 61 A0 09 93 44 44 31  // ...DD11`.a...DD1
    20A0: 32 60 A4 61 A0 09 93 44 44 31 33 60 A4 61 A0 09  // 2`.a...DD13`.a..
    20B0: 93 44 44 31 34 60 A4 61 A0 09 93 44 44 31 35 60  // .DD14`.a...DD15`
    20C0: A4 61 A4 00 14 42 07 43 44 44 53 01 70 7B 68 0B  // .a...B.CDDS.p{h.
    20D0: 0F 0F 00 60 A0 07 93 00 60 A4 0A 1D A0 0A 93 43  // ...`....`......C
    20E0: 41 44 4C 60 A4 0A 1F A0 0A 93 43 41 4C 32 60 A4  // ADL`......CAL2`.
    20F0: 0A 1F A0 0A 93 43 41 4C 33 60 A4 0A 1F A0 0A 93  // .....CAL3`......
    2100: 43 41 4C 34 60 A4 0A 1F A0 0A 93 43 41 4C 35 60  // CAL4`......CAL5`
    2110: A4 0A 1F A0 0A 93 43 41 4C 36 60 A4 0A 1F A0 0A  // ......CAL6`.....
    2120: 93 43 41 4C 37 60 A4 0A 1F A0 0A 93 43 41 4C 38  // .CAL7`......CAL8
    2130: 60 A4 0A 1F A4 0A 1D 14 48 06 4E 44 44 53 01 70  // `.......H.NDDS.p
    2140: 7B 68 0B 0F 0F 00 60 A0 06 93 00 60 A4 00 A0 09  // {h....`....`....
    2150: 93 4E 41 44 4C 60 A4 01 A0 09 93 4E 44 4C 32 60  // .NADL`.....NDL2`
    2160: A4 01 A0 09 93 4E 44 4C 33 60 A4 01 A0 09 93 4E  // .....NDL3`.....N
    2170: 44 4C 34 60 A4 01 A0 09 93 4E 44 4C 35 60 A4 01  // DL4`.....NDL5`..
    2180: A0 09 93 4E 44 4C 36 60 A4 01 A0 09 93 4E 44 4C  // ...NDL6`.....NDL
    2190: 37 60 A4 01 A0 09 93 4E 44 4C 38 60 A4 01 A4 00  // 7`.....NDL8`....
    21A0: 14 1F 44 53 53 54 01 A0 18 93 7B 68 0C 00 00 00  // ..DSST....{h....
    21B0: C0 00 0C 00 00 00 C0 70 4E 53 54 45 43 53 54 45  // .......pNSTECSTE
    21C0: 10 30 5C 2E 5F 53 42 5F 50 43 49 30 5B 80 4D 43  // .0\._SB_PCI0[.MC
    21D0: 48 50 02 0A 40 0A C0 5B 81 18 4D 43 48 50 00 00  // HP..@..[..MCHP..
    21E0: 40 0A 41 55 44 45 08 00 48 25 54 41 53 4D 0A 00  // @.AUDE..H%TASM..
    21F0: 06 5B 80 49 47 44 50 02 0A 40 0A C0 5B 81 47 05  // .[.IGDP..@..[.G.
    2200: 49 47 44 50 00 00 40 08 00 01 47 49 56 44 01 00  // IGDP..@...GIVD..
    2210: 02 47 55 4D 41 03 00 09 00 10 00 04 47 4D 46 4E  // .GUMA.......GMFN
    2220: 01 00 1B 00 40 46 41 53 4C 45 08 00 18 47 53 53  // ....@FASLE...GSS
    2230: 45 01 47 53 53 42 0E 47 53 45 53 01 00 30 00 0C  // E.GSSB.GSES..0..
    2240: 43 44 56 4C 01 00 03 00 18 4C 42 50 43 08 00 30  // CDVL.....LBPC..0
    2250: 41 53 4C 53 20 5B 80 49 47 44 4D 00 41 53 4C 42  // ASLS [.IGDM.ASLB
    2260: 0B 00 20 5B 81 42 20 49 47 44 4D 00 53 49 47 4E  // .. [.B IGDM.SIGN
    2270: 40 08 53 49 5A 45 20 4F 56 45 52 20 53 56 45 52  // @.SIZE OVER SVER
    2280: 40 10 56 56 45 52 40 08 47 56 45 52 40 08 4D 42  // @.VVER@.GVER@.MB
    2290: 4F 58 20 44 4D 4F 44 20 50 43 4F 4E 20 44 56 45  // OX DMOD PCON DVE
    22A0: 52 40 04 00 40 4A 44 52 44 59 20 43 53 54 53 20  // R@..@JDRDY CSTS 
    22B0: 43 45 56 54 20 00 40 0A 44 49 44 4C 20 44 44 4C  // CEVT .@.DIDL DDL
    22C0: 32 20 44 44 4C 33 20 44 44 4C 34 20 44 44 4C 35  // 2 DDL3 DDL4 DDL5
    22D0: 20 44 44 4C 36 20 44 44 4C 37 20 44 44 4C 38 20  //  DDL6 DDL7 DDL8 
    22E0: 43 50 44 4C 20 43 50 4C 32 20 43 50 4C 33 20 43  // CPDL CPL2 CPL3 C
    22F0: 50 4C 34 20 43 50 4C 35 20 43 50 4C 36 20 43 50  // PL4 CPL5 CPL6 CP
    2300: 4C 37 20 43 50 4C 38 20 43 41 44 4C 20 43 41 4C  // L7 CPL8 CADL CAL
    2310: 32 20 43 41 4C 33 20 43 41 4C 34 20 43 41 4C 35  // 2 CAL3 CAL4 CAL5
    2320: 20 43 41 4C 36 20 43 41 4C 37 20 43 41 4C 38 20  //  CAL6 CAL7 CAL8 
    2330: 4E 41 44 4C 20 4E 44 4C 32 20 4E 44 4C 33 20 4E  // NADL NDL2 NDL3 N
    2340: 44 4C 34 20 4E 44 4C 35 20 4E 44 4C 36 20 4E 44  // DL4 NDL5 NDL6 ND
    2350: 4C 37 20 4E 44 4C 38 20 41 53 4C 50 20 54 49 44  // L7 NDL8 ASLP TID
    2360: 58 20 43 48 50 44 20 43 4C 49 44 20 43 44 43 4B  // X CHPD CLID CDCK
    2370: 20 53 58 53 57 20 45 56 54 53 20 43 4E 4F 54 20  //  SXSW EVTS CNOT 
    2380: 4E 52 44 59 20 44 44 4C 39 20 44 44 31 30 20 44  // NRDY DDL9 DD10 D
    2390: 44 31 31 20 44 44 31 32 20 44 44 31 33 20 44 44  // D11 DD12 DD13 DD
    23A0: 31 34 20 44 44 31 35 20 43 50 4C 39 20 43 50 31  // 14 DD15 CPL9 CP1
    23B0: 30 20 43 50 31 31 20 43 50 31 32 20 43 50 31 33  // 0 CP11 CP12 CP13
    23C0: 20 43 50 31 34 20 43 50 31 35 20 00 20 53 43 49  //  CP14 CP15 . SCI
    23D0: 45 01 47 45 46 43 04 47 58 46 43 03 47 45 53 46  // E.GEFC.GXFC.GESF
    23E0: 08 00 10 50 41 52 4D 20 44 53 4C 50 20 00 40 7A  // ...PARM DSLP .@z
    23F0: 41 52 44 59 20 41 53 4C 43 20 54 43 48 45 20 41  // ARDY ASLC TCHE A
    2400: 4C 53 49 20 42 43 4C 50 20 50 46 49 54 20 43 42  // LSI BCLP PFIT CB
    2410: 4C 56 20 42 43 4C 4D 40 14 43 50 46 4D 20 45 50  // LV BCLM@.CPFM EP
    2420: 46 4D 20 50 4C 55 54 40 25 50 46 4D 42 20 43 43  // FM PLUT@%PFMB CC
    2430: 44 56 20 50 43 46 54 20 53 52 4F 54 20 49 55 45  // DV PCFT SROT IUE
    2440: 52 20 46 44 53 50 40 04 46 44 53 53 20 53 54 41  // R FDSP@.FDSS STA
    2450: 54 20 00 40 23 47 56 44 31 80 00 0C 50 48 45 44  // T .@#GVD1...PHED
    2460: 20 42 44 44 43 40 80 08 44 42 54 42 12 32 15 00  //  BDDC@..DBTB.2..
    2470: 0A 07 0A 38 0B C0 01 0B 00 0E 0A 3F 0B C7 01 0B  // ...8.......?....
    2480: 07 0E 0B F8 01 0B 38 0E 0B C0 0F 00 00 00 00 00  // ......8.........
    2490: 0B 00 70 0B 07 70 0B 38 70 0B C0 71 0B 00 7E 08  // ..p..p.8p..q..~.
    24A0: 43 44 43 54 12 27 05 12 07 02 0A E4 0B 40 01 12  // CDCT.'.......@..
    24B0: 07 02 0A DE 0B 4D 01 12 07 02 0A DE 0B 4D 01 12  // .....M.......M..
    24C0: 04 02 00 00 12 07 02 0A DE 0B 4D 01 08 53 55 43  // ..........M..SUC
    24D0: 43 01 08 4E 56 4C 44 0A 02 08 43 52 49 54 0A 04  // C..NVLD...CRIT..
    24E0: 08 4E 43 52 54 0A 06 14 49 4E 47 53 43 49 08 14  // .NCRT...INGSCI..
    24F0: 40 1D 47 42 44 41 08 A0 1A 93 47 45 53 46 00 70  // @.GBDA....GESF.p
    2500: 0B 59 06 50 41 52 4D 70 00 47 45 53 46 A4 53 55  // .Y.PARMp.GESF.SU
    2510: 43 43 A0 30 93 47 45 53 46 01 70 0C 82 04 30 00  // CC.0.GESF.p...0.
    2520: 50 41 52 4D A0 13 93 53 30 49 44 01 7D 50 41 52  // PARM...S0ID.}PAR
    2530: 4D 0B 00 01 50 41 52 4D 70 00 47 45 53 46 A4 53  // M...PARMp.GESF.S
    2540: 55 43 43 A0 47 04 93 47 45 53 46 0A 04 7B 50 41  // UCC.G..GESF..{PA
    2550: 52 4D 0C 00 00 FF EF 50 41 52 4D 7B 50 41 52 4D  // RM.....PARM{PARM
    2560: 79 83 88 44 42 54 42 49 42 54 54 00 0A 10 00 50  // y..DBTBIBTT....P
    2570: 41 52 4D 7D 49 42 54 54 50 41 52 4D 50 41 52 4D  // ARM}IBTTPARMPARM
    2580: 70 00 47 45 53 46 A4 53 55 43 43 A0 4A 06 93 47  // p.GESF.SUCC.J..G
    2590: 45 53 46 0A 05 70 49 50 53 43 50 41 52 4D 7D 50  // ESF..pIPSCPARM}P
    25A0: 41 52 4D 79 49 50 41 54 0A 08 00 50 41 52 4D 72  // ARMyIPAT...PARMr
    25B0: 50 41 52 4D 0B 00 01 50 41 52 4D 7D 50 41 52 4D  // PARM...PARM}PARM
    25C0: 79 4C 49 44 53 0A 10 00 50 41 52 4D 72 50 41 52  // yLIDS...PARMrPAR
    25D0: 4D 0C 00 00 01 00 50 41 52 4D 7D 50 41 52 4D 79  // M.....PARM}PARMy
    25E0: 49 42 49 41 0A 14 00 50 41 52 4D 70 00 47 45 53  // IBIA...PARMp.GES
    25F0: 46 A4 53 55 43 43 A0 43 07 93 47 45 53 46 0A 07  // F.SUCC.C..GESF..
    2600: 70 47 49 56 44 50 41 52 4D 7F 50 41 52 4D 01 50  // pGIVDPARM.PARM.P
    2610: 41 52 4D 7D 50 41 52 4D 79 47 4D 46 4E 01 00 50  // ARM}PARMyGMFN..P
    2620: 41 52 4D 7D 50 41 52 4D 0B 00 18 50 41 52 4D 7D  // ARM}PARM...PARM}
    2630: 50 41 52 4D 79 49 44 4D 53 0A 11 00 50 41 52 4D  // PARMyIDMS...PARM
    2640: 7D 79 83 88 83 88 43 44 43 54 48 56 43 4F 00 43  // }y....CDCTHVCO.C
    2650: 44 56 4C 00 0A 15 00 50 41 52 4D 50 41 52 4D 70  // DVL....PARMPARMp
    2660: 01 47 45 53 46 A4 53 55 43 43 A0 2A 93 47 45 53  // .GESF.SUCC.*.GES
    2670: 46 0A 0A 70 00 50 41 52 4D A0 10 49 53 53 43 7D  // F..p.PARM..ISSC}
    2680: 50 41 52 4D 0A 03 50 41 52 4D 70 00 47 45 53 46  // PARM..PARMp.GESF
    2690: A4 53 55 43 43 A0 1F 93 47 45 53 46 0A 0B 70 4B  // .SUCC...GESF..pK
    26A0: 53 56 30 50 41 52 4D 70 4B 53 56 31 47 45 53 46  // SV0PARMpKSV1GESF
    26B0: A4 53 55 43 43 70 00 47 45 53 46 A4 43 52 49 54  // .SUCCp.GESF.CRIT
    26C0: 14 42 2D 53 42 43 42 08 A0 22 93 47 45 53 46 00  // .B-SBCB..".GESF.
    26D0: 70 00 50 41 52 4D 70 0C DD 87 0F 00 50 41 52 4D  // p.PARMp.....PARM
    26E0: 70 00 47 45 53 46 A4 53 55 43 43 A0 18 93 47 45  // p.GESF.SUCC...GE
    26F0: 53 46 01 70 00 47 45 53 46 70 00 50 41 52 4D A4  // SF.p.GESFp.PARM.
    2700: 53 55 43 43 A0 19 93 47 45 53 46 0A 03 70 00 47  // SUCC...GESF..p.G
    2710: 45 53 46 70 00 50 41 52 4D A4 53 55 43 43 A0 19  // ESFp.PARM.SUCC..
    2720: 93 47 45 53 46 0A 04 70 00 47 45 53 46 70 00 50  // .GESF..p.GESFp.P
    2730: 41 52 4D A4 53 55 43 43 A0 19 93 47 45 53 46 0A  // ARM.SUCC...GESF.
    2740: 05 70 00 47 45 53 46 70 00 50 41 52 4D A4 53 55  // .p.GESFp.PARM.SU
    2750: 43 43 A0 4A 07 93 47 45 53 46 0A 07 A0 34 90 93  // CC.J..GESF...4..
    2760: 53 30 49 44 01 95 4F 53 59 53 0B DF 07 A0 11 93  // S0ID..OSYS......
    2770: 7B 50 41 52 4D 0A FF 00 01 5C 47 55 41 4D 01 A0  // {PARM....\GUAM..
    2780: 11 93 7B 50 41 52 4D 0A FF 00 00 5C 47 55 41 4D  // ..{PARM....\GUAM
    2790: 00 A0 2A 93 50 41 52 4D 00 70 43 4C 49 44 60 A0  // ..*.PARM.pCLID`.
    27A0: 1C 7B 0C 00 00 00 80 60 00 7B 43 4C 49 44 0A 0F  // .{.....`.{CLID..
    27B0: 43 4C 49 44 47 4C 49 44 43 4C 49 44 70 00 47 45  // CLIDGLIDCLIDp.GE
    27C0: 53 46 70 00 50 41 52 4D A4 53 55 43 43 A0 19 93  // SFp.PARM.SUCC...
    27D0: 47 45 53 46 0A 08 70 00 47 45 53 46 70 00 50 41  // GESF..p.GESFp.PA
    27E0: 52 4D A4 53 55 43 43 A0 24 93 47 45 53 46 0A 09  // RM.SUCC.$.GESF..
    27F0: 7B 50 41 52 4D 0A FF 49 42 54 54 70 00 47 45 53  // {PARM..IBTTp.GES
    2800: 46 70 00 50 41 52 4D A4 53 55 43 43 A0 46 05 93  // Fp.PARM.SUCC.F..
    2810: 47 45 53 46 0A 0A 7B 50 41 52 4D 0A FF 49 50 53  // GESF..{PARM..IPS
    2820: 43 A0 21 7B 7A 50 41 52 4D 0A 08 00 0A FF 00 7B  // C.!{zPARM......{
    2830: 7A 50 41 52 4D 0A 08 00 0A FF 49 50 41 54 76 49  // zPARM.....IPATvI
    2840: 50 41 54 7B 7A 50 41 52 4D 0A 14 00 0A 07 49 42  // PAT{zPARM.....IB
    2850: 49 41 70 00 47 45 53 46 70 00 50 41 52 4D A4 53  // IAp.GESFp.PARM.S
    2860: 55 43 43 A0 44 05 93 47 45 53 46 0A 0B 7B 7A 50  // UCC.D..GESF..{zP
    2870: 41 52 4D 01 00 01 49 46 31 45 A0 1B 7B 50 41 52  // ARM...IF1E..{PAR
    2880: 4D 0C 00 E0 01 00 00 7B 7A 50 41 52 4D 0A 0D 00  // M......{zPARM...
    2890: 0A 0F 49 44 4D 53 A1 10 7B 7A 50 41 52 4D 0A 11  // ..IDMS..{zPARM..
    28A0: 00 0A 0F 49 44 4D 53 70 00 47 45 53 46 70 00 50  // ...IDMSp.GESFp.P
    28B0: 41 52 4D A4 53 55 43 43 A0 19 93 47 45 53 46 0A  // ARM.SUCC...GESF.
    28C0: 10 70 00 47 45 53 46 70 00 50 41 52 4D A4 53 55  // .p.GESFp.PARM.SU
    28D0: 43 43 A0 2C 93 47 45 53 46 0A 11 70 79 4C 49 44  // CC.,.GESF..pyLID
    28E0: 53 0A 08 00 50 41 52 4D 72 50 41 52 4D 0B 00 01  // S...PARMrPARM...
    28F0: 50 41 52 4D 70 00 47 45 53 46 A4 53 55 43 43 A0  // PARMp.GESF.SUCC.
    2900: 49 04 93 47 45 53 46 0A 12 A0 26 7B 50 41 52 4D  // I..GESF...&{PARM
    2910: 01 00 A0 10 93 7A 50 41 52 4D 01 00 01 70 01 49  // .....zPARM...p.I
    2920: 53 53 43 A1 0C 70 00 47 45 53 46 A4 43 52 49 54  // SSC..p.GESF.CRIT
    2930: A1 07 70 00 49 53 53 43 70 00 47 45 53 46 70 00  // ..p.ISSCp.GESFp.
    2940: 50 41 52 4D A4 53 55 43 43 A0 19 93 47 45 53 46  // PARM.SUCC...GESF
    2950: 0A 13 70 00 47 45 53 46 70 00 50 41 52 4D A4 53  // ..p.GESFp.PARM.S
    2960: 55 43 43 A0 24 93 47 45 53 46 0A 14 7B 50 41 52  // UCC.$.GESF..{PAR
    2970: 4D 0A 0F 50 41 56 50 70 00 47 45 53 46 70 00 50  // M..PAVPp.GESFp.P
    2980: 41 52 4D A4 53 55 43 43 70 00 47 45 53 46 A4 53  // ARM.SUCCp.GESF.S
    2990: 55 43 43 A0 11 93 47 45 46 43 0A 04 70 47 42 44  // UCC...GEFC..pGBD
    29A0: 41 47 58 46 43 A0 11 93 47 45 46 43 0A 06 70 53  // AGXFC...GEFC..pS
    29B0: 42 43 42 47 58 46 43 70 00 47 45 46 43 70 01 43  // BCBGXFCp.GEFCp.C
    29C0: 50 53 43 70 00 47 53 53 45 70 00 53 43 49 45 A4  // PSCp.GSSEp.SCIE.
    29D0: 00 14 0C 50 44 52 44 00 A4 92 44 52 44 59 14 1D  // ...PDRD...DRDY..
    29E0: 50 53 54 53 00 A0 0E 94 43 53 54 53 0A 02 5B 22  // PSTS....CSTS..["
    29F0: 41 53 4C 50 A4 93 43 53 54 53 0A 03 14 4D 05 47  // ASLP..CSTS...M.G
    2A00: 4E 4F 54 02 A0 07 50 44 52 44 A4 01 70 68 43 45  // NOT...PDRD..phCE
    2A10: 56 54 70 0A 03 43 53 54 53 A0 1C 90 93 43 48 50  // VTp..CSTS....CHP
    2A20: 44 00 93 69 00 86 5C 2F 03 5F 53 42 5F 50 43 49  // D..i..\/._SB_PCI
    2A30: 30 47 46 58 30 69 A0 0D 5B 12 48 4E 4F 54 00 48  // 0GFX0i..[.HNOT.H
    2A40: 4E 4F 54 68 A1 13 86 5C 2F 03 5F 53 42 5F 50 43  // NOTh...\/._SB_PC
    2A50: 49 30 47 46 58 30 0A 80 A4 00 14 13 47 48 44 53  // I0GFX0......GHDS
    2A60: 01 70 68 54 49 44 58 A4 47 4E 4F 54 01 00 14 35  // .phTIDX.GNOT...5
    2A70: 47 4C 49 44 01 A0 0B 93 68 01 70 0A 03 43 4C 49  // GLID....h.p..CLI
    2A80: 44 A1 07 70 68 43 4C 49 44 A0 18 47 4E 4F 54 0A  // D..phCLID..GNOT.
    2A90: 02 00 7D 43 4C 49 44 0C 00 00 00 80 43 4C 49 44  // ..}CLID.....CLID
    2AA0: A4 01 A4 00 14 14 47 44 43 4B 01 70 68 43 44 43  // ......GDCK.phCDC
    2AB0: 4B A4 47 4E 4F 54 0A 04 00 14 19 50 41 52 44 00  // K.GNOT.....PARD.
    2AC0: A0 0C 92 41 52 44 59 5B 22 41 53 4C 50 A4 92 41  // ...ARDY["ASLP..A
    2AD0: 52 44 59 14 36 49 55 45 48 09 7B 49 55 45 52 0A  // RDY.6IUEH.{IUER.
    2AE0: C0 49 55 45 52 7F 49 55 45 52 79 01 68 00 49 55  // .IUER.IUERy.h.IU
    2AF0: 45 52 A0 0E 92 94 68 0A 04 A4 41 49 4E 54 0A 05  // ER....h...AINT..
    2B00: 00 A1 08 A4 41 49 4E 54 68 00 14 4F 15 41 49 4E  // ....AINTh..O.AIN
    2B10: 54 02 A0 0E 92 7B 54 43 48 45 79 01 68 00 00 A4  // T....{TCHEy.h...
    2B20: 01 A0 07 50 41 52 44 A4 01 A0 34 90 92 95 68 0A  // ...PARD...4...h.
    2B30: 05 92 94 68 0A 07 70 79 01 68 00 41 53 4C 43 70  // ...h..py.h.ASLCp
    2B40: 01 41 53 4C 45 70 00 62 A2 13 90 95 62 0A FA 92  // .ASLEp.b....b...
    2B50: 93 41 53 4C 43 00 5B 22 0A 04 75 62 A4 00 A0 40  // .ASLC.["..ub...@
    2B60: 0C 93 68 0A 02 A0 47 09 43 50 46 4D 7B 43 50 46  // ..h...G.CPFM{CPF
    2B70: 4D 0A 0F 60 7B 45 50 46 4D 0A 0F 61 A0 2A 93 60  // M..`{EPFM..a.*.`
    2B80: 01 A0 0D 7B 61 0A 06 00 70 0A 06 50 46 49 54 A1  // ...{a...p..PFIT.
    2B90: 17 A0 0D 7B 61 0A 08 00 70 0A 08 50 46 49 54 A1  // ...{a...p..PFIT.
    2BA0: 07 70 01 50 46 49 54 A0 2A 93 60 0A 06 A0 0D 7B  // .p.PFIT.*.`....{
    2BB0: 61 0A 08 00 70 0A 08 50 46 49 54 A1 16 A0 0B 7B  // a...p..PFIT....{
    2BC0: 61 01 00 70 01 50 46 49 54 A1 08 70 0A 06 50 46  // a..p.PFIT..p..PF
    2BD0: 49 54 A0 2A 93 60 0A 08 A0 0B 7B 61 01 00 70 01  // IT.*.`....{a..p.
    2BE0: 50 46 49 54 A1 18 A0 0D 7B 61 0A 06 00 70 0A 06  // PFIT....{a...p..
    2BF0: 50 46 49 54 A1 08 70 0A 08 50 46 49 54 A1 0C 7F  // PFIT..p..PFIT...
    2C00: 50 46 49 54 0A 07 50 46 49 54 7D 50 46 49 54 0C  // PFIT..PFIT}PFIT.
    2C10: 00 00 00 80 50 46 49 54 70 0A 04 41 53 4C 43 A1  // ....PFITp..ASLC.
    2C20: 42 04 A0 28 93 68 01 70 78 77 69 0A FF 00 0A 64  // B..(.h.pxwi....d
    2C30: 00 00 42 43 4C 50 7D 42 43 4C 50 0C 00 00 00 80  // ..BCLP}BCLP.....
    2C40: 42 43 4C 50 70 0A 02 41 53 4C 43 A1 16 A0 10 93  // BCLPp..ASLC.....
    2C50: 68 00 70 69 41 4C 53 49 70 01 41 53 4C 43 A1 03  // h.piALSIp.ASLC..
    2C60: A4 01 70 01 41 53 4C 45 A4 00 14 4D 48 5F 44 53  // ..p.ASLE...MH_DS
    2C70: 4D 0C 08 5F 54 5F 30 00 A0 4A 47 93 68 11 13 0A  // M.._T_0..JG.h...
    2C80: 10 C6 41 5B 3E 1D EB 60 42 9D 15 C7 1F BA DA E4  // ..A[>..`B.......
    2C90: 14 A2 41 46 01 70 99 6A 00 5F 54 5F 30 A0 37 93  // ..AF.p.j._T_0.7.
    2CA0: 5F 54 5F 30 00 A0 2F 93 69 01 70 0D 69 47 66 78  // _T_0../.i.p.iGfx
    2CB0: 20 53 75 70 70 6F 72 74 65 64 20 46 75 6E 63 74  //  Supported Funct
    2CC0: 69 6F 6E 73 20 42 69 74 6D 61 70 20 00 5B 31 A4  // ions Bitmap .[1.
    2CD0: 0C FF E7 01 00 A1 4C 41 A0 4D 09 93 5F 54 5F 30  // ......LA.M.._T_0
    2CE0: 01 A0 44 09 93 69 01 70 0D 20 41 64 61 70 74 65  // ..D..i.p. Adapte
    2CF0: 72 20 50 6F 77 65 72 20 53 74 61 74 65 20 4E 6F  // r Power State No
    2D00: 74 69 66 69 63 61 74 69 6F 6E 20 00 5B 31 A0 39  // tification .[1.9
    2D10: 90 93 53 30 49 44 01 95 4F 53 59 53 0B DF 07 A0  // ..S0ID..OSYS....
    2D20: 12 93 7B 83 88 6B 00 00 0A FF 00 01 5C 47 55 41  // ..{..k......\GUA
    2D30: 4D 01 70 7B 83 88 6B 01 00 0A FF 00 60 A0 0A 93  // M.p{..k.....`...
    2D40: 60 00 5C 47 55 41 4D 00 A0 2B 93 83 88 6B 00 00  // `.\GUAM..+...k..
    2D50: 00 70 43 4C 49 44 60 A0 1C 7B 0C 00 00 00 80 60  // .pCLID`..{.....`
    2D60: 00 7B 43 4C 49 44 0A 0F 43 4C 49 44 47 4C 49 44  // .{CLID..CLIDGLID
    2D70: 43 4C 49 44 A4 01 A1 4B 37 A0 35 93 5F 54 5F 30  // CLID...K7.5._T_0
    2D80: 0A 02 A0 2C 93 69 01 70 0D 44 69 73 70 6C 61 79  // ...,.i.p.Display
    2D90: 20 50 6F 77 65 72 20 53 74 61 74 65 20 4E 6F 74  //  Power State Not
    2DA0: 69 66 69 63 61 74 69 6F 6E 20 00 5B 31 A4 01 A1  // ification .[1...
    2DB0: 42 34 A0 36 93 5F 54 5F 30 0A 03 A0 2D 93 69 01  // B4.6._T_0...-.i.
    2DC0: 70 0D 42 49 4F 53 20 50 4F 53 54 20 43 6F 6D 70  // p.BIOS POST Comp
    2DD0: 6C 65 74 69 6F 6E 20 4E 6F 74 69 66 69 63 61 74  // letion Notificat
    2DE0: 69 6F 6E 20 00 5B 31 A4 01 A1 48 30 A0 27 93 5F  // ion .[1...H0.'._
    2DF0: 54 5F 30 0A 04 A0 1E 93 69 01 70 0D 50 72 65 2D  // T_0.....i.p.Pre-
    2E00: 48 69 72 65 73 20 53 65 74 20 4D 6F 64 65 20 00  // Hires Set Mode .
    2E10: 5B 31 A4 01 A1 4D 2D A0 28 93 5F 54 5F 30 0A 05  // [1...M-.(._T_0..
    2E20: A0 1F 93 69 01 70 0D 50 6F 73 74 2D 48 69 72 65  // ...i.p.Post-Hire
    2E30: 73 20 53 65 74 20 4D 6F 64 65 20 00 5B 31 A4 01  // s Set Mode .[1..
    2E40: A1 41 2B A0 30 93 5F 54 5F 30 0A 06 A0 27 93 69  // .A+.0._T_0...'.i
    2E50: 01 70 0D 53 65 74 44 69 73 70 6C 61 79 44 65 76  // .p.SetDisplayDev
    2E60: 69 63 65 4E 6F 74 69 66 69 63 61 74 69 6F 6E 00  // iceNotification.
    2E70: 5B 31 A4 01 A1 4D 27 A0 38 93 5F 54 5F 30 0A 07  // [1...M'.8._T_0..
    2E80: A0 2F 93 69 01 70 0D 53 65 74 42 6F 6F 74 44 65  // ./.i.p.SetBootDe
    2E90: 76 69 63 65 50 72 65 66 65 72 65 6E 63 65 20 00  // vicePreference .
    2EA0: 5B 31 7B 83 88 6B 00 00 0A FF 49 42 54 54 A4 01  // [1{..k....IBTT..
    2EB0: A1 41 24 A0 42 06 93 5F 54 5F 30 0A 08 A0 48 05  // .A$.B.._T_0...H.
    2EC0: 93 69 01 70 0D 53 65 74 50 61 6E 65 6C 50 72 65  // .i.p.SetPanelPre
    2ED0: 66 65 72 65 6E 63 65 20 00 5B 31 7B 83 88 6B 00  // ference .[1{..k.
    2EE0: 00 0A FF 49 50 53 43 A0 1B 7B 83 88 6B 01 00 0A  // ...IPSC..{..k...
    2EF0: FF 00 7B 83 88 6B 01 00 0A FF 49 50 41 54 76 49  // ..{..k....IPATvI
    2F00: 50 41 54 7B 7A 83 88 6B 0A 02 00 0A 04 00 0A 07  // PAT{z..k........
    2F10: 49 42 49 41 A4 01 A1 4B 1D A0 22 93 5F 54 5F 30  // IBIA...K.."._T_0
    2F20: 0A 09 A0 19 93 69 01 70 0D 46 75 6C 6C 53 63 72  // .....i.p.FullScr
    2F30: 65 65 6E 44 4F 53 20 00 5B 31 A4 01 A1 45 1B A0  // eenDOS .[1...E..
    2F40: 31 93 5F 54 5F 30 0A 0A A0 28 93 69 01 70 0D 41  // 1._T_0...(.i.p.A
    2F50: 50 4D 20 43 6F 6D 70 6C 65 74 65 20 00 5B 31 70  // PM Complete .[1p
    2F60: 79 4C 49 44 53 0A 08 00 60 72 60 0B 00 01 60 A4  // yLIDS...`r`...`.
    2F70: 60 A1 40 18 A0 46 06 93 5F 54 5F 30 0A 0D A0 4C  // `.@..F.._T_0...L
    2F80: 05 93 69 01 70 0D 47 65 74 42 6F 6F 74 44 69 73  // ..i.p.GetBootDis
    2F90: 70 6C 61 79 50 72 65 66 65 72 65 6E 63 65 20 00  // playPreference .
    2FA0: 5B 31 7D 79 83 88 6B 0A 03 00 0A 18 00 79 83 88  // [1}y..k......y..
    2FB0: 6B 0A 02 00 0A 10 00 60 7B 60 0C 00 00 FF EF 60  // k......`{`.....`
    2FC0: 7B 60 79 83 88 44 42 54 42 49 42 54 54 00 0A 10  // {`y..DBTBIBTT...
    2FD0: 00 60 7D 49 42 54 54 60 60 A4 60 A1 46 11 A0 4B  // .`}IBTT``.`.F..K
    2FE0: 05 93 5F 54 5F 30 0A 0E A0 41 05 93 69 01 70 0D  // .._T_0...A..i.p.
    2FF0: 47 65 74 50 61 6E 65 6C 44 65 74 61 69 6C 73 20  // GetPanelDetails 
    3000: 00 5B 31 70 49 50 53 43 60 7D 60 79 49 50 41 54  // .[1pIPSC`}`yIPAT
    3010: 0A 08 00 60 72 60 0B 00 01 60 7D 60 79 4C 49 44  // ...`r`...`}`yLID
    3020: 53 0A 10 00 60 72 60 0C 00 00 01 00 60 7D 60 79  // S...`r`.....`}`y
    3030: 49 42 49 41 0A 14 00 60 A4 60 A1 47 0B A0 48 06  // IBIA...`.`.G..H.
    3040: 93 5F 54 5F 30 0A 0F A0 4E 05 93 69 01 70 0D 47  // ._T_0...N..i.p.G
    3050: 65 74 49 6E 74 65 72 6E 61 6C 47 72 61 70 68 69  // etInternalGraphi
    3060: 63 73 20 00 5B 31 70 47 49 56 44 60 7F 60 01 60  // cs .[1pGIVD`.`.`
    3070: 7D 60 79 47 4D 46 4E 01 00 60 7D 60 0B 00 18 60  // }`yGMFN..`}`...`
    3080: 7D 60 79 49 44 4D 53 0A 11 00 60 7D 79 83 88 83  // }`yIDMS...`}y...
    3090: 88 43 44 43 54 48 56 43 4F 00 43 44 56 4C 00 0A  // .CDCTHVCO.CDVL..
    30A0: 15 00 60 60 A4 60 A1 4B 04 A0 48 04 93 5F 54 5F  // ..``.`.K..H.._T_
    30B0: 30 0A 10 A0 3E 93 69 01 70 0D 47 65 74 41 4B 53  // 0...>.i.p.GetAKS
    30C0: 56 20 00 5B 31 08 4B 53 56 50 12 0A 02 0C 00 00  // V .[1.KSVP......
    30D0: 00 80 0B 00 80 70 4B 53 56 30 88 4B 53 56 50 00  // .....pKSV0.KSVP.
    30E0: 00 70 4B 53 56 31 88 4B 53 56 50 01 00 A4 4B 53  // .pKSV1.KSVP...KS
    30F0: 56 50 A5 A4 11 03 01 00                          // VP......
 */
