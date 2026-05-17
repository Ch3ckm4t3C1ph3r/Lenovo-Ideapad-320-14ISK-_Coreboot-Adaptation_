{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.I2C0.DFUD, DeviceObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (GPBS, UnknownObj)
    External (SDS0, UnknownObj)
    External (SHAP, UnknownObj)
    External (USBH, UnknownObj)


    0024: A0 43 05 00 15 5C 53 48 41 50 00 00 15 5C 47 50  // .C...\SHAP...\GP
    0034: 42 53 00 00 15 5C 53 44 53 30 00 00 15 5C 55 53  // BS...\SDS0...\US
    0044: 42 48 00 00 15 5C 2E 5F 53 42 5F 47 47 4F 56 08  // BH...\._SB_GGOV.
    0054: 01 15 5C 2E 5F 53 42 5F 53 47 4F 56 08 02 15 5C  // ..\._SB_SGOV...\
    0064: 2F 04 5F 53 42 5F 50 43 49 30 49 32 43 30 44 46  // /._SB_PCI0I2C0DF
    0074: 55 44 06 00                                      // UD..

    Scope (\)
    {

    0078: 10 46 22 5C 00                                   // .F"\.

        Device (SHAD)
        {

    007D: 5B 82 40 22 53 48 41 44                          // [.@"SHAD

            Name (_HID, EisaId ("INT33D0"))  // _HID: Hardware ID

    0085: 08 5F 48 49 44 0C 25 D4 33 D0                    // ._HID.%.3.

            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID

    008F: 08 5F 43 49 44 0C 41 D0 0C 02                    // ._CID.A...

            Method (_STA, 0, Serialized)  // _STA: Status
            {

    0099: 14 1C 5F 53 54 41 08                             // .._STA.

                If (LOr (And (SDS0, One), 
    00A0: A0 13 91 7B 53 44 53 30 01 00                    // ...{SDS0..

And (USBH, One)))
                {

    00AA: 7B 55 53 42 48 01 00                             // {USBH..

                    Return (0x0F)
                }


    00B1: A4 0A 0F                                         // ...

                Return (Zero)
            }


    00B4: A4 00                                            // ..

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {

    00B6: 14 48 1E 5F 44 53 4D 0C                          // .H._DSM.


    00BE: 08 5F 54 5F 30 00                                // ._T_0.

                Name (PGCE, Zero)

    00C4: 08 50 47 43 45 00                                // .PGCE.

                Name (PGCD, Zero)

    00CA: 08 50 47 43 44 00                                // .PGCD.

                Name (PGCG, 0x2E)

    00D0: 08 50 47 43 47 0A 2E                             // .PGCG..

                Name (DFUE, Zero)

    00D7: 08 44 46 55 45 00                                // .DFUE.

                Name (DFUD, Zero)

    00DD: 08 44 46 55 44 00                                // .DFUD.

                Name (OLDV, Zero)

    00E3: 08 4F 4C 44 56 00                                // .OLDV.

                Name (PGCV, Zero)

    00E9: 08 50 47 43 56 00                                // .PGCV.

                Name (DFUV, Zero)

    00EF: 08 44 46 55 56 00                                // .DFUV.

                If (LEqual (Arg0, 
    00F5: A0 44 1A 93 68                                   // .D..h

ToUUID ("03c868d5-563f-42a8-9f57-9a18d949b7cb") /* Unknown UUID */))
                {

    00FA: 11 13 0A 10 D5 68 C8 03 3F 56 A8 42 9F 57 9A 18  // .....h..?V.B.W..
    010A: D9 49 B7 CB                                      // .I..

                    If (LEqual (SHAP, One))
                    {

    010E: A0 0E 93 53 48 41 50 01                          // ...SHAP.

                        Store (0x3A, PGCG) /* \SHAD._DSM.PGCG */
                    }


    0116: 70 0A 3A 50 47 43 47                             // p.:PGCG

                    If (
    011D: A0 4A 17 92                                      // .J..

LGreaterEqual (ToInteger (Arg1), One))
                    {

    0121: 95 99 69 00 01                                   // ..i..

                        Switch (ToInteger (Arg2))
                        {

    0126: A2 4F 16 01 70 99 6A 00 5F 54 5F 30              // .O..p.j._T_0

                            Case (Zero)
                            {

    0132: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                                Return (
    013A: A4                                               // .

Buffer (One)
                                {
                                     0x0F                                             // .
                                })
                            }

    013B: 11 03 01 0F                                      // ....

                            Case
    013F: A1 45 15                                         // .E.

 (One)
                            {
                                Store (DerefOf (
    0142: A0 48 0A 93 5F 54 5F 30 01 70 83                 // .H.._T_0.p.

Index (Arg3, Zero)), PGCE) /* \SHAD._DSM.PGCE */
                                Store (DerefOf (
    014D: 88 6B 00 00 50 47 43 45 70 83                    // .k..PGCEp.

Index (Arg3, One)), PGCD) /* \SHAD._DSM.PGCD */
                                Store (\_SB.GGOV (0x02010016), OLDV) /* \SHAD._DSM.OLDV */
                                \_SB.SGOV (0x02010016, PGCE)

    0157: 88 6B 01 00 50 47 43 44 70 5C 2E 5F 53 42 5F 47  // .k..PGCDp\._SB_G
    0167: 47 4F 56 0C 16 00 01 02 4F 4C 44 56 5C 2E 5F 53  // GOV.....OLDV\._S
    0177: 42 5F 53 47 4F 56 0C 16 00 01 02 50 47 43 45     // B_SGOV.....PGCE

                                If (LGreater (PGCD, Zero))
                                {
                                    Sleep (PGCD)
                                    \_SB.GGOV (0x02010016)
                                    OLDV
                                }


    0186: A0 20 94 50 47 43 44 00 5B 22 50 47 43 44 5C 2E  // . .PGCD.["PGCD\.
    0196: 5F 53 42 5F 47 47 4F 56 0C 16 00 01 02 4F 4C 44  // _SB_GGOV.....OLD
    01A6: 56                                               // V

                                If (LEqual (\_SB.GGOV (0x02010016), One))
                                {
                                    Sleep (0x96)

    01A7: A0 41 04 93 5C 2E 5F 53 42 5F 47 47 4F 56 0C 16  // .A..\._SB_GGOV..
    01B7: 00 01 02 01 5B 22 0A 96                          // ....["..

                                    If (
    01BF: A0 12                                            // ..

LEqual (\_SB.GGOV (0x02010014), One)){}

    01C1: 93 5C 2E 5F 53 42 5F 47 47 4F 56 0C 14 00 01 02  // .\._SB_GGOV.....
    01D1: 01                                               // .

                                    Else
                                    {

    01D2: A1 16                                            // ..

                                        Notify (\_SB.PCI0.I2C0.DFUD, One) // Device Check
                                    }
                                }


    01D4: 86 5C 2F 04 5F 53 42 5F 50 43 49 30 49 32 43 30  // .\/._SB_PCI0I2C0
    01E4: 44 46 55 44 01                                   // DFUD.

                                Return (Zero)
                            }

    01E9: A4 00                                            // ..

                            Case
    01EB: A1 49 0A                                         // .I.

 (0x02)
                            {
                                Store (DerefOf (
    01EE: A0 47 06 93 5F 54 5F 30 0A 02 70 83              // .G.._T_0..p.

Index (Arg3, Zero)), DFUE) /* \SHAD._DSM.DFUE */
                                Store (DerefOf (
    01FA: 88 6B 00 00 44 46 55 45 70 83                    // .k..DFUEp.

Index (Arg3, One)), DFUD) /* \SHAD._DSM.DFUD */
                                Store (\_SB.GGOV (0x02010014), OLDV) /* \SHAD._DSM.OLDV */
                                \_SB.GGOV (0x02010014)
                                DFUE

    0204: 88 6B 01 00 44 46 55 44 70 5C 2E 5F 53 42 5F 47  // .k..DFUDp\._SB_G
    0214: 47 4F 56 0C 14 00 01 02 4F 4C 44 56 5C 2E 5F 53  // GOV.....OLDV\._S
    0224: 42 5F 47 47 4F 56 0C 14 00 01 02 44 46 55 45     // B_GGOV.....DFUE

                                If (LGreater (DFUD, Zero))
                                {
                                    Sleep (DFUD)
                                    \_SB.GGOV (0x02010014)
                                    OLDV
                                }


    0233: A0 20 94 44 46 55 44 00 5B 22 44 46 55 44 5C 2E  // . .DFUD.["DFUD\.
    0243: 5F 53 42 5F 47 47 4F 56 0C 14 00 01 02 4F 4C 44  // _SB_GGOV.....OLD
    0253: 56                                               // V

                                Return (Zero)
                            }

    0254: A4 00                                            // ..

                            Case
    0256: A1 3E                                            // .>

 (0x03)
                            {
                                Store (\_SB.GGOV (0x02010014), DFUV) /* \SHAD._DSM.DFUV */
                                Store (\_SB.GGOV (0x02010016), PGCV) /* \SHAD._DSM.PGCV */

    0258: A0 3C 93 5F 54 5F 30 0A 03 70 5C 2E 5F 53 42 5F  // .<._T_0..p\._SB_
    0268: 47 47 4F 56 0C 14 00 01 02 44 46 55 56 70 5C 2E  // GGOV.....DFUVp\.
    0278: 5F 53 42 5F 47 47 4F 56 0C 16 00 01 02 50 47 43  // _SB_GGOV.....PGC
    0288: 56                                               // V

                                Return (
    0289: A4                                               // .

Package (0x02)
                                {
                                    PGCV, 
                                    DFUV
                                })
                            }


    028A: 12 0A 02 50 47 43 56 44 46 55 56                 // ...PGCVDFUV

                        }


    0295: A5                                               // .

                        Return (Zero)
                    }


    0296: A4 00                                            // ..

                    Return (Zero)
                }


    0298: A4 00                                            // ..

                Return (
    029A: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}



Table Header:
Table Body (Length 0x29F)

/*
Raw Table Data: Length 671 (0x29F)

    0000: 53 53 44 54 9F 02 00 00 02 79 4C 45 4E 4F 56 4F  // SSDT.....yLENOVO
    0010: 43 42 2D 30 31 20 20 20 01 00 00 00 41 43 50 49  // CB-01   ....ACPI
    0020: 00 00 04 00 A0 43 05 00 15 5C 53 48 41 50 00 00  // .....C...\SHAP..
    0030: 15 5C 47 50 42 53 00 00 15 5C 53 44 53 30 00 00  // .\GPBS...\SDS0..
    0040: 15 5C 55 53 42 48 00 00 15 5C 2E 5F 53 42 5F 47  // .\USBH...\._SB_G
    0050: 47 4F 56 08 01 15 5C 2E 5F 53 42 5F 53 47 4F 56  // GOV...\._SB_SGOV
    0060: 08 02 15 5C 2F 04 5F 53 42 5F 50 43 49 30 49 32  // ...\/._SB_PCI0I2
    0070: 43 30 44 46 55 44 06 00 10 46 22 5C 00 5B 82 40  // C0DFUD...F"\.[.@
    0080: 22 53 48 41 44 08 5F 48 49 44 0C 25 D4 33 D0 08  // "SHAD._HID.%.3..
    0090: 5F 43 49 44 0C 41 D0 0C 02 14 1C 5F 53 54 41 08  // _CID.A....._STA.
    00A0: A0 13 91 7B 53 44 53 30 01 00 7B 55 53 42 48 01  // ...{SDS0..{USBH.
    00B0: 00 A4 0A 0F A4 00 14 48 1E 5F 44 53 4D 0C 08 5F  // .......H._DSM.._
    00C0: 54 5F 30 00 08 50 47 43 45 00 08 50 47 43 44 00  // T_0..PGCE..PGCD.
    00D0: 08 50 47 43 47 0A 2E 08 44 46 55 45 00 08 44 46  // .PGCG...DFUE..DF
    00E0: 55 44 00 08 4F 4C 44 56 00 08 50 47 43 56 00 08  // UD..OLDV..PGCV..
    00F0: 44 46 55 56 00 A0 44 1A 93 68 11 13 0A 10 D5 68  // DFUV..D..h.....h
    0100: C8 03 3F 56 A8 42 9F 57 9A 18 D9 49 B7 CB A0 0E  // ..?V.B.W...I....
    0110: 93 53 48 41 50 01 70 0A 3A 50 47 43 47 A0 4A 17  // .SHAP.p.:PGCG.J.
    0120: 92 95 99 69 00 01 A2 4F 16 01 70 99 6A 00 5F 54  // ...i...O..p.j._T
    0130: 5F 30 A0 0C 93 5F 54 5F 30 00 A4 11 03 01 0F A1  // _0..._T_0.......
    0140: 45 15 A0 48 0A 93 5F 54 5F 30 01 70 83 88 6B 00  // E..H.._T_0.p..k.
    0150: 00 50 47 43 45 70 83 88 6B 01 00 50 47 43 44 70  // .PGCEp..k..PGCDp
    0160: 5C 2E 5F 53 42 5F 47 47 4F 56 0C 16 00 01 02 4F  // \._SB_GGOV.....O
    0170: 4C 44 56 5C 2E 5F 53 42 5F 53 47 4F 56 0C 16 00  // LDV\._SB_SGOV...
    0180: 01 02 50 47 43 45 A0 20 94 50 47 43 44 00 5B 22  // ..PGCE. .PGCD.["
    0190: 50 47 43 44 5C 2E 5F 53 42 5F 47 47 4F 56 0C 16  // PGCD\._SB_GGOV..
    01A0: 00 01 02 4F 4C 44 56 A0 41 04 93 5C 2E 5F 53 42  // ...OLDV.A..\._SB
    01B0: 5F 47 47 4F 56 0C 16 00 01 02 01 5B 22 0A 96 A0  // _GGOV......["...
    01C0: 12 93 5C 2E 5F 53 42 5F 47 47 4F 56 0C 14 00 01  // ..\._SB_GGOV....
    01D0: 02 01 A1 16 86 5C 2F 04 5F 53 42 5F 50 43 49 30  // .....\/._SB_PCI0
    01E0: 49 32 43 30 44 46 55 44 01 A4 00 A1 49 0A A0 47  // I2C0DFUD....I..G
    01F0: 06 93 5F 54 5F 30 0A 02 70 83 88 6B 00 00 44 46  // .._T_0..p..k..DF
    0200: 55 45 70 83 88 6B 01 00 44 46 55 44 70 5C 2E 5F  // UEp..k..DFUDp\._
    0210: 53 42 5F 47 47 4F 56 0C 14 00 01 02 4F 4C 44 56  // SB_GGOV.....OLDV
    0220: 5C 2E 5F 53 42 5F 47 47 4F 56 0C 14 00 01 02 44  // \._SB_GGOV.....D
    0230: 46 55 45 A0 20 94 44 46 55 44 00 5B 22 44 46 55  // FUE. .DFUD.["DFU
    0240: 44 5C 2E 5F 53 42 5F 47 47 4F 56 0C 14 00 01 02  // D\._SB_GGOV.....
    0250: 4F 4C 44 56 A4 00 A1 3E A0 3C 93 5F 54 5F 30 0A  // OLDV...>.<._T_0.
    0260: 03 70 5C 2E 5F 53 42 5F 47 47 4F 56 0C 14 00 01  // .p\._SB_GGOV....
    0270: 02 44 46 55 56 70 5C 2E 5F 53 42 5F 47 47 4F 56  // .DFUVp\._SB_GGOV
    0280: 0C 16 00 01 02 50 47 43 56 A4 12 0A 02 50 47 43  // .....PGCV....PGC
    0290: 56 44 46 55 56 A5 A4 00 A4 00 A4 11 03 01 00     // VDFUV..........
 */
