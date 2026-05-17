{
    External (_PR_.CPU0, DeviceObj)
    External (_PR_.CPU0._PCT, MethodObj)    // 0 Arguments
    External (_PR_.CPU0._PPC, MethodObj)    // 0 Arguments
    External (_PR_.CPU0._PSS, MethodObj)    // 0 Arguments
    External (_PR_.CPU1, DeviceObj)
    External (_PR_.CPU2, DeviceObj)
    External (_PR_.CPU3, DeviceObj)
    External (_PR_.CPU4, DeviceObj)
    External (_PR_.CPU5, DeviceObj)
    External (_PR_.CPU6, DeviceObj)
    External (_PR_.CPU7, DeviceObj)
    External (PDC0, IntObj)
    External (TCNT, FieldUnitObj)


    0024: A0 41 0B 00 15 5C 50 44 43 30 01 00 15 5C 54 43  // .A...\PDC0...\TC
    0034: 4E 54 05 00 15 5C 2E 5F 50 52 5F 43 50 55 30 06  // NT...\._PR_CPU0.
    0044: 00 15 5C 2E 5F 50 52 5F 43 50 55 31 06 00 15 5C  // ..\._PR_CPU1...\
    0054: 2E 5F 50 52 5F 43 50 55 32 06 00 15 5C 2E 5F 50  // ._PR_CPU2...\._P
    0064: 52 5F 43 50 55 33 06 00 15 5C 2E 5F 50 52 5F 43  // R_CPU3...\._PR_C
    0074: 50 55 34 06 00 15 5C 2E 5F 50 52 5F 43 50 55 35  // PU4...\._PR_CPU5
    0084: 06 00 15 5C 2E 5F 50 52 5F 43 50 55 36 06 00 15  // ...\._PR_CPU6...
    0094: 5C 2E 5F 50 52 5F 43 50 55 37 06 00 15 5C 2F 03  // \._PR_CPU7...\/.
    00A4: 5F 50 52 5F 43 50 55 30 5F 50 50 43 08 00 15 5C  // _PR_CPU0_PPC...\
    00B4: 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54 08 00  // /._PR_CPU0_PCT..
    00C4: 15 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS
    00D4: 08 00                                            // ..

    Scope (\_PR.CPU1)
    {

    00D6: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 31           // .I.\._PR_CPU1

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

    00E3: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC ())
        }


    00EA: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

    00FA: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


    0101: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

    0111: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS ())
        }


    0118: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

    0128: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

    012E: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
    0136: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
    0142: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
    0144: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
    0153: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

    0155: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF) /* \_PR_.CPU1.PSDF */
            }


    015F: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

    0165: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD) /* \_PR_.CPU1.HPSD */
            }


    0170: A4 48 50 53 44                                   // .HPSD

            Return (SPSD) /* \_PR_.CPU1.SPSD */
        }


    0175: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
    017A: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

    017F: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

    0182: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
    018D: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

    0192: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


    0195: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU2)
    {

    01A0: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 32           // .I.\._PR_CPU2

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

    01AD: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC ())
        }


    01B4: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

    01C4: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


    01CB: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

    01DB: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS ())
        }


    01E2: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

    01F2: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

    01F8: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
    0200: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
    020C: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
    020E: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
    021D: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

    021F: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF) /* \_PR_.CPU2.PSDF */
            }


    0229: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

    022F: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD) /* \_PR_.CPU2.HPSD */
            }


    023A: A4 48 50 53 44                                   // .HPSD

            Return (SPSD) /* \_PR_.CPU2.SPSD */
        }


    023F: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
    0244: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

    0249: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

    024C: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
    0257: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

    025C: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


    025F: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU3)
    {

    026A: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 33           // .I.\._PR_CPU3

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

    0277: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC ())
        }


    027E: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

    028E: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


    0295: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

    02A5: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS ())
        }


    02AC: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

    02BC: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

    02C2: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
    02CA: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
    02D6: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
    02D8: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
    02E7: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

    02E9: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF) /* \_PR_.CPU3.PSDF */
            }


    02F3: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

    02F9: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD) /* \_PR_.CPU3.HPSD */
            }


    0304: A4 48 50 53 44                                   // .HPSD

            Return (SPSD) /* \_PR_.CPU3.SPSD */
        }


    0309: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
    030E: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

    0313: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

    0316: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
    0321: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

    0326: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


    0329: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU4)
    {

    0334: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 34           // .I.\._PR_CPU4

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

    0341: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC ())
        }


    0348: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

    0358: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


    035F: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

    036F: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS ())
        }


    0376: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

    0386: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

    038C: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
    0394: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
    03A0: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
    03A2: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
    03B1: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

    03B3: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF) /* \_PR_.CPU4.PSDF */
            }


    03BD: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

    03C3: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD) /* \_PR_.CPU4.HPSD */
            }


    03CE: A4 48 50 53 44                                   // .HPSD

            Return (SPSD) /* \_PR_.CPU4.SPSD */
        }


    03D3: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
    03D8: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

    03DD: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

    03E0: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
    03EB: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

    03F0: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


    03F3: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU5)
    {

    03FE: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 35           // .I.\._PR_CPU5

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

    040B: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC ())
        }


    0412: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

    0422: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


    0429: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

    0439: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS ())
        }


    0440: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

    0450: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

    0456: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
    045E: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
    046A: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
    046C: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
    047B: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

    047D: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF) /* \_PR_.CPU5.PSDF */
            }


    0487: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

    048D: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD) /* \_PR_.CPU5.HPSD */
            }


    0498: A4 48 50 53 44                                   // .HPSD

            Return (SPSD) /* \_PR_.CPU5.SPSD */
        }


    049D: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
    04A2: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

    04A7: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

    04AA: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
    04B5: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

    04BA: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


    04BD: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU6)
    {

    04C8: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 36           // .I.\._PR_CPU6

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

    04D5: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC ())
        }


    04DC: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

    04EC: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


    04F3: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

    0503: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS ())
        }


    050A: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

    051A: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

    0520: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
    0528: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
    0534: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
    0536: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
    0545: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

    0547: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF) /* \_PR_.CPU6.PSDF */
            }


    0551: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

    0557: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD) /* \_PR_.CPU6.HPSD */
            }


    0562: A4 48 50 53 44                                   // .HPSD

            Return (SPSD) /* \_PR_.CPU6.SPSD */
        }


    0567: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
    056C: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

    0571: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

    0574: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
    057F: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

    0584: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }


    0587: 12 0A 05 0A 05 00 00 0A FC 0A 80                 // ...........

    Scope (\_PR.CPU7)
    {

    0592: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 37           // .I.\._PR_CPU7

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {

    059F: 14 16 5F 50 50 43 00                             // .._PPC.

            Return (\_PR.CPU0._PPC ())
        }


    05A6: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {

    05B6: 14 16 5F 50 43 54 00                             // .._PCT.

            Return (\_PR.CPU0._PCT ())
        }


    05BD: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54  // .\/._PR_CPU0_PCT

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {

    05CD: 14 16 5F 50 53 53 00                             // .._PSS.

            Return (\_PR.CPU0._PSS ())
        }


    05D4: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS

        Name (PSDF, Zero)

    05E4: 08 50 53 44 46 00                                // .PSDF.

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {

    05EA: 14 4B 04 5F 50 53 44 00                          // .K._PSD.

            If (LNot (PSDF))
            {
                Store (TCNT, 
    05F2: A0 2E 92 50 53 44 46 70 54 43 4E 54              // ...PSDFpTCNT

Index (DerefOf (
    05FE: 88 83                                            // ..

Index (HPSD, Zero)), 0x04))
                Store (TCNT, 
    0600: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54     // .HPSD.....pTCNT

Index (DerefOf (
    060F: 88 83                                            // ..

Index (SPSD, Zero)), 0x04))

    0611: 88 53 50 53 44 00 00 0A 04 00                    // .SPSD.....

                Store (Ones, PSDF) /* \_PR_.CPU7.PSDF */
            }


    061B: 70 FF 50 53 44 46                                // p.PSDF

            If (And (PDC0, 0x0800))
            {

    0621: A0 0F 7B 50 44 43 30 0B 00 08 00                 // ..{PDC0....

                Return (HPSD) /* \_PR_.CPU7.HPSD */
            }


    062C: A4 48 50 53 44                                   // .HPSD

            Return (SPSD) /* \_PR_.CPU7.SPSD */
        }


    0631: A4 53 50 53 44                                   // .SPSD

        Name (HPSD, 
    0636: 08 48 50 53 44                                   // .HPSD

Package (0x01)
        {

    063B: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })

    063E: 12 0A 05 0A 05 00 00 0A FE 0A 80                 // ...........

        Name (SPSD, 
    0649: 08 53 50 53 44                                   // .SPSD

Package (0x01)
        {

    064E: 12 0D 01                                         // ...

            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}



Table Header:
Table Body (Length 0x65C)

/*
Raw Table Data: Length 1628 (0x65C)

    0000: 53 53 44 54 5C 06 00 00 02 A9 50 6D 52 65 66 00  // SSDT\.....PmRef.
    0010: 41 70 49 73 74 00 00 00 00 30 00 00 49 4E 54 4C  // ApIst....0..INTL
    0020: 27 05 16 20 A0 41 0B 00 15 5C 50 44 43 30 01 00  // '.. .A...\PDC0..
    0030: 15 5C 54 43 4E 54 05 00 15 5C 2E 5F 50 52 5F 43  // .\TCNT...\._PR_C
    0040: 50 55 30 06 00 15 5C 2E 5F 50 52 5F 43 50 55 31  // PU0...\._PR_CPU1
    0050: 06 00 15 5C 2E 5F 50 52 5F 43 50 55 32 06 00 15  // ...\._PR_CPU2...
    0060: 5C 2E 5F 50 52 5F 43 50 55 33 06 00 15 5C 2E 5F  // \._PR_CPU3...\._
    0070: 50 52 5F 43 50 55 34 06 00 15 5C 2E 5F 50 52 5F  // PR_CPU4...\._PR_
    0080: 43 50 55 35 06 00 15 5C 2E 5F 50 52 5F 43 50 55  // CPU5...\._PR_CPU
    0090: 36 06 00 15 5C 2E 5F 50 52 5F 43 50 55 37 06 00  // 6...\._PR_CPU7..
    00A0: 15 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43  // .\/._PR_CPU0_PPC
    00B0: 08 00 15 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50  // ...\/._PR_CPU0_P
    00C0: 43 54 08 00 15 5C 2F 03 5F 50 52 5F 43 50 55 30  // CT...\/._PR_CPU0
    00D0: 5F 50 53 53 08 00 10 49 0C 5C 2E 5F 50 52 5F 43  // _PSS...I.\._PR_C
    00E0: 50 55 31 14 16 5F 50 50 43 00 A4 5C 2F 03 5F 50  // PU1.._PPC..\/._P
    00F0: 52 5F 43 50 55 30 5F 50 50 43 14 16 5F 50 43 54  // R_CPU0_PPC.._PCT
    0100: 00 A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43  // ..\/._PR_CPU0_PC
    0110: 54 14 16 5F 50 53 53 00 A4 5C 2F 03 5F 50 52 5F  // T.._PSS..\/._PR_
    0120: 43 50 55 30 5F 50 53 53 08 50 53 44 46 00 14 4B  // CPU0_PSS.PSDF..K
    0130: 04 5F 50 53 44 00 A0 2E 92 50 53 44 46 70 54 43  // ._PSD....PSDFpTC
    0140: 4E 54 88 83 88 48 50 53 44 00 00 0A 04 00 70 54  // NT...HPSD.....pT
    0150: 43 4E 54 88 83 88 53 50 53 44 00 00 0A 04 00 70  // CNT...SPSD.....p
    0160: FF 50 53 44 46 A0 0F 7B 50 44 43 30 0B 00 08 00  // .PSDF..{PDC0....
    0170: A4 48 50 53 44 A4 53 50 53 44 08 48 50 53 44 12  // .HPSD.SPSD.HPSD.
    0180: 0D 01 12 0A 05 0A 05 00 00 0A FE 0A 80 08 53 50  // ..............SP
    0190: 53 44 12 0D 01 12 0A 05 0A 05 00 00 0A FC 0A 80  // SD..............
    01A0: 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 32 14 16 5F  // .I.\._PR_CPU2.._
    01B0: 50 50 43 00 A4 5C 2F 03 5F 50 52 5F 43 50 55 30  // PPC..\/._PR_CPU0
    01C0: 5F 50 50 43 14 16 5F 50 43 54 00 A4 5C 2F 03 5F  // _PPC.._PCT..\/._
    01D0: 50 52 5F 43 50 55 30 5F 50 43 54 14 16 5F 50 53  // PR_CPU0_PCT.._PS
    01E0: 53 00 A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50  // S..\/._PR_CPU0_P
    01F0: 53 53 08 50 53 44 46 00 14 4B 04 5F 50 53 44 00  // SS.PSDF..K._PSD.
    0200: A0 2E 92 50 53 44 46 70 54 43 4E 54 88 83 88 48  // ...PSDFpTCNT...H
    0210: 50 53 44 00 00 0A 04 00 70 54 43 4E 54 88 83 88  // PSD.....pTCNT...
    0220: 53 50 53 44 00 00 0A 04 00 70 FF 50 53 44 46 A0  // SPSD.....p.PSDF.
    0230: 0F 7B 50 44 43 30 0B 00 08 00 A4 48 50 53 44 A4  // .{PDC0.....HPSD.
    0240: 53 50 53 44 08 48 50 53 44 12 0D 01 12 0A 05 0A  // SPSD.HPSD.......
    0250: 05 00 00 0A FE 0A 80 08 53 50 53 44 12 0D 01 12  // ........SPSD....
    0260: 0A 05 0A 05 00 00 0A FC 0A 80 10 49 0C 5C 2E 5F  // ...........I.\._
    0270: 50 52 5F 43 50 55 33 14 16 5F 50 50 43 00 A4 5C  // PR_CPU3.._PPC..\
    0280: 2F 03 5F 50 52 5F 43 50 55 30 5F 50 50 43 14 16  // /._PR_CPU0_PPC..
    0290: 5F 50 43 54 00 A4 5C 2F 03 5F 50 52 5F 43 50 55  // _PCT..\/._PR_CPU
    02A0: 30 5F 50 43 54 14 16 5F 50 53 53 00 A4 5C 2F 03  // 0_PCT.._PSS..\/.
    02B0: 5F 50 52 5F 43 50 55 30 5F 50 53 53 08 50 53 44  // _PR_CPU0_PSS.PSD
    02C0: 46 00 14 4B 04 5F 50 53 44 00 A0 2E 92 50 53 44  // F..K._PSD....PSD
    02D0: 46 70 54 43 4E 54 88 83 88 48 50 53 44 00 00 0A  // FpTCNT...HPSD...
    02E0: 04 00 70 54 43 4E 54 88 83 88 53 50 53 44 00 00  // ..pTCNT...SPSD..
    02F0: 0A 04 00 70 FF 50 53 44 46 A0 0F 7B 50 44 43 30  // ...p.PSDF..{PDC0
    0300: 0B 00 08 00 A4 48 50 53 44 A4 53 50 53 44 08 48  // .....HPSD.SPSD.H
    0310: 50 53 44 12 0D 01 12 0A 05 0A 05 00 00 0A FE 0A  // PSD.............
    0320: 80 08 53 50 53 44 12 0D 01 12 0A 05 0A 05 00 00  // ..SPSD..........
    0330: 0A FC 0A 80 10 49 0C 5C 2E 5F 50 52 5F 43 50 55  // .....I.\._PR_CPU
    0340: 34 14 16 5F 50 50 43 00 A4 5C 2F 03 5F 50 52 5F  // 4.._PPC..\/._PR_
    0350: 43 50 55 30 5F 50 50 43 14 16 5F 50 43 54 00 A4  // CPU0_PPC.._PCT..
    0360: 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 43 54 14  // \/._PR_CPU0_PCT.
    0370: 16 5F 50 53 53 00 A4 5C 2F 03 5F 50 52 5F 43 50  // ._PSS..\/._PR_CP
    0380: 55 30 5F 50 53 53 08 50 53 44 46 00 14 4B 04 5F  // U0_PSS.PSDF..K._
    0390: 50 53 44 00 A0 2E 92 50 53 44 46 70 54 43 4E 54  // PSD....PSDFpTCNT
    03A0: 88 83 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E  // ...HPSD.....pTCN
    03B0: 54 88 83 88 53 50 53 44 00 00 0A 04 00 70 FF 50  // T...SPSD.....p.P
    03C0: 53 44 46 A0 0F 7B 50 44 43 30 0B 00 08 00 A4 48  // SDF..{PDC0.....H
    03D0: 50 53 44 A4 53 50 53 44 08 48 50 53 44 12 0D 01  // PSD.SPSD.HPSD...
    03E0: 12 0A 05 0A 05 00 00 0A FE 0A 80 08 53 50 53 44  // ............SPSD
    03F0: 12 0D 01 12 0A 05 0A 05 00 00 0A FC 0A 80 10 49  // ...............I
    0400: 0C 5C 2E 5F 50 52 5F 43 50 55 35 14 16 5F 50 50  // .\._PR_CPU5.._PP
    0410: 43 00 A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50  // C..\/._PR_CPU0_P
    0420: 50 43 14 16 5F 50 43 54 00 A4 5C 2F 03 5F 50 52  // PC.._PCT..\/._PR
    0430: 5F 43 50 55 30 5F 50 43 54 14 16 5F 50 53 53 00  // _CPU0_PCT.._PSS.
    0440: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 50 53 53  // .\/._PR_CPU0_PSS
    0450: 08 50 53 44 46 00 14 4B 04 5F 50 53 44 00 A0 2E  // .PSDF..K._PSD...
    0460: 92 50 53 44 46 70 54 43 4E 54 88 83 88 48 50 53  // .PSDFpTCNT...HPS
    0470: 44 00 00 0A 04 00 70 54 43 4E 54 88 83 88 53 50  // D.....pTCNT...SP
    0480: 53 44 00 00 0A 04 00 70 FF 50 53 44 46 A0 0F 7B  // SD.....p.PSDF..{
    0490: 50 44 43 30 0B 00 08 00 A4 48 50 53 44 A4 53 50  // PDC0.....HPSD.SP
    04A0: 53 44 08 48 50 53 44 12 0D 01 12 0A 05 0A 05 00  // SD.HPSD.........
    04B0: 00 0A FE 0A 80 08 53 50 53 44 12 0D 01 12 0A 05  // ......SPSD......
    04C0: 0A 05 00 00 0A FC 0A 80 10 49 0C 5C 2E 5F 50 52  // .........I.\._PR
    04D0: 5F 43 50 55 36 14 16 5F 50 50 43 00 A4 5C 2F 03  // _CPU6.._PPC..\/.
    04E0: 5F 50 52 5F 43 50 55 30 5F 50 50 43 14 16 5F 50  // _PR_CPU0_PPC.._P
    04F0: 43 54 00 A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F  // CT..\/._PR_CPU0_
    0500: 50 43 54 14 16 5F 50 53 53 00 A4 5C 2F 03 5F 50  // PCT.._PSS..\/._P
    0510: 52 5F 43 50 55 30 5F 50 53 53 08 50 53 44 46 00  // R_CPU0_PSS.PSDF.
    0520: 14 4B 04 5F 50 53 44 00 A0 2E 92 50 53 44 46 70  // .K._PSD....PSDFp
    0530: 54 43 4E 54 88 83 88 48 50 53 44 00 00 0A 04 00  // TCNT...HPSD.....
    0540: 70 54 43 4E 54 88 83 88 53 50 53 44 00 00 0A 04  // pTCNT...SPSD....
    0550: 00 70 FF 50 53 44 46 A0 0F 7B 50 44 43 30 0B 00  // .p.PSDF..{PDC0..
    0560: 08 00 A4 48 50 53 44 A4 53 50 53 44 08 48 50 53  // ...HPSD.SPSD.HPS
    0570: 44 12 0D 01 12 0A 05 0A 05 00 00 0A FE 0A 80 08  // D...............
    0580: 53 50 53 44 12 0D 01 12 0A 05 0A 05 00 00 0A FC  // SPSD............
    0590: 0A 80 10 49 0C 5C 2E 5F 50 52 5F 43 50 55 37 14  // ...I.\._PR_CPU7.
    05A0: 16 5F 50 50 43 00 A4 5C 2F 03 5F 50 52 5F 43 50  // ._PPC..\/._PR_CP
    05B0: 55 30 5F 50 50 43 14 16 5F 50 43 54 00 A4 5C 2F  // U0_PPC.._PCT..\/
    05C0: 03 5F 50 52 5F 43 50 55 30 5F 50 43 54 14 16 5F  // ._PR_CPU0_PCT.._
    05D0: 50 53 53 00 A4 5C 2F 03 5F 50 52 5F 43 50 55 30  // PSS..\/._PR_CPU0
    05E0: 5F 50 53 53 08 50 53 44 46 00 14 4B 04 5F 50 53  // _PSS.PSDF..K._PS
    05F0: 44 00 A0 2E 92 50 53 44 46 70 54 43 4E 54 88 83  // D....PSDFpTCNT..
    0600: 88 48 50 53 44 00 00 0A 04 00 70 54 43 4E 54 88  // .HPSD.....pTCNT.
    0610: 83 88 53 50 53 44 00 00 0A 04 00 70 FF 50 53 44  // ..SPSD.....p.PSD
    0620: 46 A0 0F 7B 50 44 43 30 0B 00 08 00 A4 48 50 53  // F..{PDC0.....HPS
    0630: 44 A4 53 50 53 44 08 48 50 53 44 12 0D 01 12 0A  // D.SPSD.HPSD.....
    0640: 05 0A 05 00 00 0A FE 0A 80 08 53 50 53 44 12 0D  // ..........SPSD..
    0650: 01 12 0A 05 0A 05 00 00 0A FC 0A 80              // ............
 */
