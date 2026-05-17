{
    External (_PR_.CPU0, DeviceObj)
    External (C3LT, UnknownObj)
    External (C3MW, UnknownObj)
    External (C6LT, UnknownObj)
    External (C6MW, UnknownObj)
    External (C7LT, UnknownObj)
    External (C7MW, UnknownObj)
    External (CDLT, UnknownObj)
    External (CDLV, UnknownObj)
    External (CDMW, UnknownObj)
    External (CDPW, UnknownObj)
    External (CFGD, UnknownObj)
    External (FEMD, UnknownObj)
    External (FMBL, UnknownObj)
    External (PDC0, UnknownObj)
    External (PFLV, UnknownObj)


    0024: A0 49 07 00 15 5C 2E 5F 50 52 5F 43 50 55 30 06  // .I...\._PR_CPU0.
    0034: 00 15 43 46 47 44 00 00 15 50 44 43 30 00 00 15  // ..CFGD...PDC0...
    0044: 46 4D 42 4C 00 00 15 46 45 4D 44 00 00 15 50 46  // FMBL...FEMD...PF
    0054: 4C 56 00 00 15 43 33 4D 57 00 00 15 43 36 4D 57  // LV...C3MW...C6MW
    0064: 00 00 15 43 37 4D 57 00 00 15 43 44 4D 57 00 00  // ...C7MW...CDMW..
    0074: 15 43 33 4C 54 00 00 15 43 36 4C 54 00 00 15 43  // .C3LT...C6LT...C
    0084: 37 4C 54 00 00 15 43 44 4C 54 00 00 15 43 44 4C  // 7LT...CDLT...CDL
    0094: 56 00 00 15 43 44 50 57 00 00                    // V...CDPW..

    Scope (\_PR.CPU0)
    {

    009E: 10 40 36 5C 2E 5F 50 52 5F 43 50 55 30           // .@6\._PR_CPU0

        Name (C1TM, 
    00AB: 08 43 31 54 4D                                   // .C1TM

Package (0x04)
        {

    00B0: 12 1C 04                                         // ...

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            One, 
            One, 
            0x03E8
        })

    00B3: 11 14 0A 11 82 0C 00 7F 00 00 00 00 00 00 00 00  // ................
    00C3: 00 00 00 79 00 01 01 0B E8 03                    // ...y......

        Name (C3TM, 
    00CD: 08 43 33 54 4D                                   // .C3TM

Package (0x04)
        {

    00D2: 12 1D 04                                         // ...

            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001814, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0x01F4
        })

    00D5: 11 14 0A 11 82 0C 00 01 08 00 00 14 18 00 00 00  // ................
    00E5: 00 00 00 79 00 0A 02 00 0B F4 01                 // ...y.......

        Name (C6TM, 
    00F0: 08 43 36 54 4D                                   // .C6TM

Package (0x04)
        {

    00F5: 12 1D 04                                         // ...

            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001815, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0x015E
        })

    00F8: 11 14 0A 11 82 0C 00 01 08 00 00 15 18 00 00 00  // ................
    0108: 00 00 00 79 00 0A 02 00 0B 5E 01                 // ...y.....^.

        Name (C7TM, 
    0113: 08 43 37 54 4D                                   // .C7TM

Package (0x04)
        {

    0118: 12 1C 04                                         // ...

            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001816, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0xC8
        })

    011B: 11 14 0A 11 82 0C 00 01 08 00 00 16 18 00 00 00  // ................
    012B: 00 00 00 79 00 0A 02 00 0A C8                    // ...y......

        Name (CDTM, 
    0135: 08 43 44 54 4D                                   // .CDTM

Package (0x04)
        {

    013A: 12 1B 04                                         // ...

            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001816, // Address
                    ,)
            }, 

            0x03, 
            Zero, 
            Zero
        })

    013D: 11 14 0A 11 82 0C 00 01 08 00 00 16 18 00 00 00  // ................
    014D: 00 00 00 79 00 0A 03 00 00                       // ...y.....

        Name (MWES, 
    0156: 08 4D 57 45 53                                   // .MWES

ResourceTemplate ()
        {
            Register (FFixedHW, 
                0x01,               // Bit Width
                0x02,               // Bit Offset
                0x0000000000000000, // Address
                0x01,               // Access Size
                )
        })

    015B: 11 14 0A 11 82 0C 00 7F 01 02 01 00 00 00 00 00  // ................
    016B: 00 00 00 79 00                                   // ...y.

        Name (AC2V, Zero)

    0170: 08 41 43 32 56 00                                // .AC2V.

        Name (AC3V, Zero)

    0176: 08 41 43 33 56 00                                // .AC3V.

        Name (C3ST, 
    017C: 08 43 33 53 54                                   // .C3ST

Package (0x04)
        {
            0x03, 

    0181: 12 10 04 0A 03                                   // .....

            Package (0x01)
            {
                Zero
            }, 


    0186: 12 03 01 00                                      // ....

            Package (0x01)
            {
                Zero
            }, 


    018A: 12 03 01 00                                      // ....

            Package (0x01)
            {
                Zero
            }
        })

    018E: 12 03 01 00                                      // ....

        Name (C2ST, 
    0192: 08 43 32 53 54                                   // .C2ST

Package (0x03)
        {
            0x02, 

    0197: 12 0C 03 0A 02                                   // .....

            Package (0x01)
            {
                Zero
            }, 


    019C: 12 03 01 00                                      // ....

            Package (0x01)
            {
                Zero
            }
        })

    01A0: 12 03 01 00                                      // ....

        Name (C1ST, 
    01A4: 08 43 31 53 54                                   // .C1ST

Package (0x02)
        {
            One, 

    01A9: 12 07 02 01                                      // ....

            Package (0x01)
            {
                Zero
            }
        })

    01AD: 12 03 01 00                                      // ....

        Name (CSTF, Zero)

    01B1: 08 43 53 54 46 00                                // .CSTF.

        Method (_CST, 0, Serialized)  // _CST: C-States
        {

    01B7: 14 47 24 5F 43 53 54 08                          // .G$_CST.

            If (LNot (CSTF))
            {
                Store (C3LT, 
    01BF: A0 48 11 92 43 53 54 46 70 43 33 4C 54           // .H..CSTFpC3LT

Index (C3TM, 0x02))
                Store (C6LT, 
    01CC: 88 43 33 54 4D 0A 02 00 70 43 36 4C 54           // .C3TM...pC6LT

Index (C6TM, 0x02))
                Store (C7LT, 
    01D9: 88 43 36 54 4D 0A 02 00 70 43 37 4C 54           // .C6TM...pC7LT

Index (C7TM, 0x02))
                Store (CDLT, 
    01E6: 88 43 37 54 4D 0A 02 00 70 43 44 4C 54           // .C7TM...pCDLT

Index (CDTM, 0x02))
                Store (CDPW, 
    01F3: 88 43 44 54 4D 0A 02 00 70 43 44 50 57           // .CDTM...pCDPW

Index (CDTM, 0x03))
                Store (CDLV, 
    0200: 88 43 44 54 4D 0A 03 00 70 43 44 4C 56           // .CDTM...pCDLV

Index (DerefOf (
    020D: 88 83                                            // ..

Index (CDTM, Zero)), 0x07))

    020F: 88 43 44 54 4D 00 00 0A 07 00                    // .CDTM.....

                If (LAnd (And (CFGD, 0x0800), 
    0219: A0 45 09 90 7B 43 46 47 44 0B 00 08 00           // .E..{CFGD....

And (PDC0, 0x0200)))
                {
                    Store (MWES, 
    0226: 7B 50 44 43 30 0B 00 02 00 70 4D 57 45 53        // {PDC0....pMWES

Index (C1TM, Zero))
                    Store (MWES, 
    0234: 88 43 31 54 4D 00 00 70 4D 57 45 53              // .C1TM..pMWES

Index (C3TM, Zero))
                    Store (MWES, 
    0240: 88 43 33 54 4D 00 00 70 4D 57 45 53              // .C3TM..pMWES

Index (C6TM, Zero))
                    Store (MWES, 
    024C: 88 43 36 54 4D 00 00 70 4D 57 45 53              // .C6TM..pMWES

Index (C7TM, Zero))
                    Store (MWES, 
    0258: 88 43 37 54 4D 00 00 70 4D 57 45 53              // .C7TM..pMWES

Index (CDTM, Zero))
                    Store (C3MW, 
    0264: 88 43 44 54 4D 00 00 70 43 33 4D 57              // .CDTM..pC3MW

Index (DerefOf (
    0270: 88 83                                            // ..

Index (C3TM, Zero)), 0x07))
                    Store (C6MW, 
    0272: 88 43 33 54 4D 00 00 0A 07 00 70 43 36 4D 57     // .C3TM.....pC6MW

Index (DerefOf (
    0281: 88 83                                            // ..

Index (C6TM, Zero)), 0x07))
                    Store (C7MW, 
    0283: 88 43 36 54 4D 00 00 0A 07 00 70 43 37 4D 57     // .C6TM.....pC7MW

Index (DerefOf (
    0292: 88 83                                            // ..

Index (C7TM, Zero)), 0x07))

    0294: 88 43 37 54 4D 00 00 0A 07 00                    // .C7TM.....

                    Store (CDMW, 
    029E: 70 43 44 4D 57                                   // pCDMW

Index (DerefOf (
    02A3: 88 83                                            // ..

Index (CDTM, Zero)), 0x07))
                }

    02A5: 88 43 44 54 4D 00 00 0A 07 00                    // .CDTM.....

                ElseIf
    02AF: A1 22                                            // ."

 (LAnd (And (CFGD, 0x0800), 
    02B1: A0 20 90 7B 43 46 47 44 0B 00 08 00              // . .{CFGD....

And (PDC0, 0x0100)))
                {

    02BD: 7B 50 44 43 30 0B 00 01 00                       // {PDC0....

                    Store (MWES, 
    02C6: 70 4D 57 45 53                                   // pMWES

Index (C1TM, Zero))
                }


    02CB: 88 43 31 54 4D 00 00                             // .C1TM..

                Store (Ones, CSTF) /* \_PR_.CPU0.CSTF */
            }

            Store (Zero, AC2V) /* \_PR_.CPU0.AC2V */
            Store (Zero, AC3V) /* \_PR_.CPU0.AC3V */
            Store (C1TM, 
    02D2: 70 FF 43 53 54 46 70 00 41 43 32 56 70 00 41 43  // p.CSTFp.AC2Vp.AC
    02E2: 33 56 70 43 31 54 4D                             // 3VpC1TM

Index (C3ST, One))

    02E9: 88 43 33 53 54 01 00                             // .C3ST..

            If (And (CFGD, 0x20))
            {
                Store (C7TM, 
    02F0: A0 1C 7B 43 46 47 44 0A 20 00 70 43 37 54 4D     // ..{CFGD. .pC7TM

Index (C3ST, 0x02))

    02FF: 88 43 33 53 54 0A 02 00                          // .C3ST...

                Store (Ones, AC2V) /* \_PR_.CPU0.AC2V */
            }

    0307: 70 FF 41 43 32 56                                // p.AC2V

            ElseIf
    030D: A1 3D                                            // .=

 (And (CFGD, 0x10))
            {
                Store (C6TM, 
    030F: A0 1C 7B 43 46 47 44 0A 10 00 70 43 36 54 4D     // ..{CFGD...pC6TM

Index (C3ST, 0x02))

    031E: 88 43 33 53 54 0A 02 00                          // .C3ST...

                Store (Ones, AC2V) /* \_PR_.CPU0.AC2V */
            }

    0326: 70 FF 41 43 32 56                                // p.AC2V

            ElseIf
    032C: A1 1E                                            // ..

 (And (CFGD, 0x08))
            {
                Store (C3TM, 
    032E: A0 1C 7B 43 46 47 44 0A 08 00 70 43 33 54 4D     // ..{CFGD...pC3TM

Index (C3ST, 0x02))

    033D: 88 43 33 53 54 0A 02 00                          // .C3ST...

                Store (Ones, AC2V) /* \_PR_.CPU0.AC2V */
            }


    0345: 70 FF 41 43 32 56                                // p.AC2V

            If (And (CFGD, 0x4000))
            {
                Store (CDTM, 
    034B: A0 1D 7B 43 46 47 44 0B 00 40 00 70 43 44 54 4D  // ..{CFGD..@.pCDTM

Index (C3ST, 0x03))

    035B: 88 43 33 53 54 0A 03 00                          // .C3ST...

                Store (Ones, AC3V) /* \_PR_.CPU0.AC3V */
            }


    0363: 70 FF 41 43 33 56                                // p.AC3V

            If (LAnd (AC2V, AC3V))
            {

    0369: A0 0F 90 41 43 32 56 41 43 33 56                 // ...AC2VAC3V

                Return (C3ST) /* \_PR_.CPU0.C3ST */
            }

    0374: A4 43 33 53 54                                   // .C3ST

            ElseIf
    0379: A1 45 08                                         // .E.

 (AC2V)
            {
                Store (DerefOf (
    037C: A0 2C 41 43 32 56 70 83                          // .,AC2Vp.

Index (C3ST, One)), 
    0384: 88 43 33 53 54 01 00                             // .C3ST..

Index (C2ST, One))
                Store (DerefOf (
    038B: 88 43 32 53 54 01 00 70 83                       // .C2ST..p.

Index (C3ST, 0x02)), 
    0394: 88 43 33 53 54 0A 02 00                          // .C3ST...

Index (C2ST, 0x02))

    039C: 88 43 32 53 54 0A 02 00                          // .C2ST...

                Return (C2ST) /* \_PR_.CPU0.C2ST */
            }

    03A4: A4 43 32 53 54                                   // .C2ST

            ElseIf
    03A9: A1 45 05                                         // .E.

 (AC3V)
            {
                Store (DerefOf (
    03AC: A0 3B 41 43 33 56 70 83                          // .;AC3Vp.

Index (C3ST, One)), 
    03B4: 88 43 33 53 54 01 00                             // .C3ST..

Index (C2ST, One))
                Store (DerefOf (
    03BB: 88 43 32 53 54 01 00 70 83                       // .C2ST..p.

Index (C3ST, 0x03)), 
    03C4: 88 43 33 53 54 0A 03 00                          // .C3ST...

Index (C2ST, 0x02))
                Store (0x02, 
    03CC: 88 43 32 53 54 0A 02 00 70 0A 02                 // .C2ST...p..

Index (DerefOf (
    03D7: 88 83                                            // ..

Index (C2ST, 0x02)), One))

    03D9: 88 43 32 53 54 0A 02 00 01 00                    // .C2ST.....

                Return (C2ST) /* \_PR_.CPU0.C2ST */
            }

    03E3: A4 43 32 53 54                                   // .C2ST

            Else
            {
                Store (DerefOf (
    03E8: A1 16 70 83                                      // ..p.

Index (C3ST, One)), 
    03EC: 88 43 33 53 54 01 00                             // .C3ST..

Index (C1ST, One))

    03F3: 88 43 31 53 54 01 00                             // .C1ST..

                Return (C1ST) /* \_PR_.CPU0.C1ST */
            }
        }
    }
}



Table Header:
Table Body (Length 0x3FF)

/*
Raw Table Data: Length 1023 (0x3FF)

    0000: 53 53 44 54 FF 03 00 00 02 A9 50 6D 52 65 66 00  // SSDT......PmRef.
    0010: 43 70 75 30 43 73 74 00 01 30 00 00 49 4E 54 4C  // Cpu0Cst..0..INTL
    0020: 27 05 16 20 A0 49 07 00 15 5C 2E 5F 50 52 5F 43  // '.. .I...\._PR_C
    0030: 50 55 30 06 00 15 43 46 47 44 00 00 15 50 44 43  // PU0...CFGD...PDC
    0040: 30 00 00 15 46 4D 42 4C 00 00 15 46 45 4D 44 00  // 0...FMBL...FEMD.
    0050: 00 15 50 46 4C 56 00 00 15 43 33 4D 57 00 00 15  // ..PFLV...C3MW...
    0060: 43 36 4D 57 00 00 15 43 37 4D 57 00 00 15 43 44  // C6MW...C7MW...CD
    0070: 4D 57 00 00 15 43 33 4C 54 00 00 15 43 36 4C 54  // MW...C3LT...C6LT
    0080: 00 00 15 43 37 4C 54 00 00 15 43 44 4C 54 00 00  // ...C7LT...CDLT..
    0090: 15 43 44 4C 56 00 00 15 43 44 50 57 00 00 10 40  // .CDLV...CDPW...@
    00A0: 36 5C 2E 5F 50 52 5F 43 50 55 30 08 43 31 54 4D  // 6\._PR_CPU0.C1TM
    00B0: 12 1C 04 11 14 0A 11 82 0C 00 7F 00 00 00 00 00  // ................
    00C0: 00 00 00 00 00 00 79 00 01 01 0B E8 03 08 43 33  // ......y.......C3
    00D0: 54 4D 12 1D 04 11 14 0A 11 82 0C 00 01 08 00 00  // TM..............
    00E0: 14 18 00 00 00 00 00 00 79 00 0A 02 00 0B F4 01  // ........y.......
    00F0: 08 43 36 54 4D 12 1D 04 11 14 0A 11 82 0C 00 01  // .C6TM...........
    0100: 08 00 00 15 18 00 00 00 00 00 00 79 00 0A 02 00  // ...........y....
    0110: 0B 5E 01 08 43 37 54 4D 12 1C 04 11 14 0A 11 82  // .^..C7TM........
    0120: 0C 00 01 08 00 00 16 18 00 00 00 00 00 00 79 00  // ..............y.
    0130: 0A 02 00 0A C8 08 43 44 54 4D 12 1B 04 11 14 0A  // ......CDTM......
    0140: 11 82 0C 00 01 08 00 00 16 18 00 00 00 00 00 00  // ................
    0150: 79 00 0A 03 00 00 08 4D 57 45 53 11 14 0A 11 82  // y......MWES.....
    0160: 0C 00 7F 01 02 01 00 00 00 00 00 00 00 00 79 00  // ..............y.
    0170: 08 41 43 32 56 00 08 41 43 33 56 00 08 43 33 53  // .AC2V..AC3V..C3S
    0180: 54 12 10 04 0A 03 12 03 01 00 12 03 01 00 12 03  // T...............
    0190: 01 00 08 43 32 53 54 12 0C 03 0A 02 12 03 01 00  // ...C2ST.........
    01A0: 12 03 01 00 08 43 31 53 54 12 07 02 01 12 03 01  // .....C1ST.......
    01B0: 00 08 43 53 54 46 00 14 47 24 5F 43 53 54 08 A0  // ..CSTF..G$_CST..
    01C0: 48 11 92 43 53 54 46 70 43 33 4C 54 88 43 33 54  // H..CSTFpC3LT.C3T
    01D0: 4D 0A 02 00 70 43 36 4C 54 88 43 36 54 4D 0A 02  // M...pC6LT.C6TM..
    01E0: 00 70 43 37 4C 54 88 43 37 54 4D 0A 02 00 70 43  // .pC7LT.C7TM...pC
    01F0: 44 4C 54 88 43 44 54 4D 0A 02 00 70 43 44 50 57  // DLT.CDTM...pCDPW
    0200: 88 43 44 54 4D 0A 03 00 70 43 44 4C 56 88 83 88  // .CDTM...pCDLV...
    0210: 43 44 54 4D 00 00 0A 07 00 A0 45 09 90 7B 43 46  // CDTM......E..{CF
    0220: 47 44 0B 00 08 00 7B 50 44 43 30 0B 00 02 00 70  // GD....{PDC0....p
    0230: 4D 57 45 53 88 43 31 54 4D 00 00 70 4D 57 45 53  // MWES.C1TM..pMWES
    0240: 88 43 33 54 4D 00 00 70 4D 57 45 53 88 43 36 54  // .C3TM..pMWES.C6T
    0250: 4D 00 00 70 4D 57 45 53 88 43 37 54 4D 00 00 70  // M..pMWES.C7TM..p
    0260: 4D 57 45 53 88 43 44 54 4D 00 00 70 43 33 4D 57  // MWES.CDTM..pC3MW
    0270: 88 83 88 43 33 54 4D 00 00 0A 07 00 70 43 36 4D  // ...C3TM.....pC6M
    0280: 57 88 83 88 43 36 54 4D 00 00 0A 07 00 70 43 37  // W...C6TM.....pC7
    0290: 4D 57 88 83 88 43 37 54 4D 00 00 0A 07 00 70 43  // MW...C7TM.....pC
    02A0: 44 4D 57 88 83 88 43 44 54 4D 00 00 0A 07 00 A1  // DMW...CDTM......
    02B0: 22 A0 20 90 7B 43 46 47 44 0B 00 08 00 7B 50 44  // ". .{CFGD....{PD
    02C0: 43 30 0B 00 01 00 70 4D 57 45 53 88 43 31 54 4D  // C0....pMWES.C1TM
    02D0: 00 00 70 FF 43 53 54 46 70 00 41 43 32 56 70 00  // ..p.CSTFp.AC2Vp.
    02E0: 41 43 33 56 70 43 31 54 4D 88 43 33 53 54 01 00  // AC3VpC1TM.C3ST..
    02F0: A0 1C 7B 43 46 47 44 0A 20 00 70 43 37 54 4D 88  // ..{CFGD. .pC7TM.
    0300: 43 33 53 54 0A 02 00 70 FF 41 43 32 56 A1 3D A0  // C3ST...p.AC2V.=.
    0310: 1C 7B 43 46 47 44 0A 10 00 70 43 36 54 4D 88 43  // .{CFGD...pC6TM.C
    0320: 33 53 54 0A 02 00 70 FF 41 43 32 56 A1 1E A0 1C  // 3ST...p.AC2V....
    0330: 7B 43 46 47 44 0A 08 00 70 43 33 54 4D 88 43 33  // {CFGD...pC3TM.C3
    0340: 53 54 0A 02 00 70 FF 41 43 32 56 A0 1D 7B 43 46  // ST...p.AC2V..{CF
    0350: 47 44 0B 00 40 00 70 43 44 54 4D 88 43 33 53 54  // GD..@.pCDTM.C3ST
    0360: 0A 03 00 70 FF 41 43 33 56 A0 0F 90 41 43 32 56  // ...p.AC3V...AC2V
    0370: 41 43 33 56 A4 43 33 53 54 A1 45 08 A0 2C 41 43  // AC3V.C3ST.E..,AC
    0380: 32 56 70 83 88 43 33 53 54 01 00 88 43 32 53 54  // 2Vp..C3ST...C2ST
    0390: 01 00 70 83 88 43 33 53 54 0A 02 00 88 43 32 53  // ..p..C3ST....C2S
    03A0: 54 0A 02 00 A4 43 32 53 54 A1 45 05 A0 3B 41 43  // T....C2ST.E..;AC
    03B0: 33 56 70 83 88 43 33 53 54 01 00 88 43 32 53 54  // 3Vp..C3ST...C2ST
    03C0: 01 00 70 83 88 43 33 53 54 0A 03 00 88 43 32 53  // ..p..C3ST....C2S
    03D0: 54 0A 02 00 70 0A 02 88 83 88 43 32 53 54 0A 02  // T...p.....C2ST..
    03E0: 00 01 00 A4 43 32 53 54 A1 16 70 83 88 43 33 53  // ....C2ST..p..C3S
    03F0: 54 01 00 88 43 31 53 54 01 00 A4 43 31 53 54     // T...C1ST...C1ST
 */
