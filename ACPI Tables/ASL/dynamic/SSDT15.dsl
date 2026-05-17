{
    External (_PR_.CPU0._CST, UnknownObj)
    External (_PR_.CPU1, DeviceObj)
    External (_PR_.CPU2, DeviceObj)
    External (_PR_.CPU3, DeviceObj)
    External (_PR_.CPU4, DeviceObj)
    External (_PR_.CPU5, DeviceObj)
    External (_PR_.CPU6, DeviceObj)
    External (_PR_.CPU7, DeviceObj)


    0024: A0 40 07 00 15 5C 2E 5F 50 52 5F 43 50 55 31 06  // .@...\._PR_CPU1.
    0034: 00 15 5C 2E 5F 50 52 5F 43 50 55 32 06 00 15 5C  // ..\._PR_CPU2...\
    0044: 2E 5F 50 52 5F 43 50 55 33 06 00 15 5C 2E 5F 50  // ._PR_CPU3...\._P
    0054: 52 5F 43 50 55 34 06 00 15 5C 2E 5F 50 52 5F 43  // R_CPU4...\._PR_C
    0064: 50 55 35 06 00 15 5C 2E 5F 50 52 5F 43 50 55 36  // PU5...\._PR_CPU6
    0074: 06 00 15 5C 2E 5F 50 52 5F 43 50 55 37 06 00 15  // ...\._PR_CPU7...
    0084: 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54 00  // \/._PR_CPU0_CST.
    0094: 00                                               // .

    Scope (\_PR.CPU1)
    {

    0095: 10 22 5C 2E 5F 50 52 5F 43 50 55 31              // ."\._PR_CPU1

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

    00A1: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST) /* External reference */
        }
    }


    00A8: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU2)
    {

    00B8: 10 22 5C 2E 5F 50 52 5F 43 50 55 32              // ."\._PR_CPU2

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

    00C4: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST) /* External reference */
        }
    }


    00CB: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU3)
    {

    00DB: 10 22 5C 2E 5F 50 52 5F 43 50 55 33              // ."\._PR_CPU3

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

    00E7: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST) /* External reference */
        }
    }


    00EE: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU4)
    {

    00FE: 10 22 5C 2E 5F 50 52 5F 43 50 55 34              // ."\._PR_CPU4

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

    010A: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST) /* External reference */
        }
    }


    0111: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU5)
    {

    0121: 10 22 5C 2E 5F 50 52 5F 43 50 55 35              // ."\._PR_CPU5

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

    012D: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST) /* External reference */
        }
    }


    0134: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU6)
    {

    0144: 10 22 5C 2E 5F 50 52 5F 43 50 55 36              // ."\._PR_CPU6

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

    0150: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST) /* External reference */
        }
    }


    0157: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54  // .\/._PR_CPU0_CST

    Scope (\_PR.CPU7)
    {

    0167: 10 22 5C 2E 5F 50 52 5F 43 50 55 37              // ."\._PR_CPU7

        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {

    0173: 14 16 5F 43 53 54 00                             // .._CST.

            Return (\_PR.CPU0._CST) /* External reference */
        }
    }
}



Table Header:
Table Body (Length 0x18A)

/*
Raw Table Data: Length 394 (0x18A)

    0000: 53 53 44 54 8A 01 00 00 02 33 50 6D 52 65 66 00  // SSDT.....3PmRef.
    0010: 41 70 43 73 74 00 00 00 00 30 00 00 49 4E 54 4C  // ApCst....0..INTL
    0020: 27 05 16 20 A0 40 07 00 15 5C 2E 5F 50 52 5F 43  // '.. .@...\._PR_C
    0030: 50 55 31 06 00 15 5C 2E 5F 50 52 5F 43 50 55 32  // PU1...\._PR_CPU2
    0040: 06 00 15 5C 2E 5F 50 52 5F 43 50 55 33 06 00 15  // ...\._PR_CPU3...
    0050: 5C 2E 5F 50 52 5F 43 50 55 34 06 00 15 5C 2E 5F  // \._PR_CPU4...\._
    0060: 50 52 5F 43 50 55 35 06 00 15 5C 2E 5F 50 52 5F  // PR_CPU5...\._PR_
    0070: 43 50 55 36 06 00 15 5C 2E 5F 50 52 5F 43 50 55  // CPU6...\._PR_CPU
    0080: 37 06 00 15 5C 2F 03 5F 50 52 5F 43 50 55 30 5F  // 7...\/._PR_CPU0_
    0090: 43 53 54 00 00 10 22 5C 2E 5F 50 52 5F 43 50 55  // CST..."\._PR_CPU
    00A0: 31 14 16 5F 43 53 54 00 A4 5C 2F 03 5F 50 52 5F  // 1.._CST..\/._PR_
    00B0: 43 50 55 30 5F 43 53 54 10 22 5C 2E 5F 50 52 5F  // CPU0_CST."\._PR_
    00C0: 43 50 55 32 14 16 5F 43 53 54 00 A4 5C 2F 03 5F  // CPU2.._CST..\/._
    00D0: 50 52 5F 43 50 55 30 5F 43 53 54 10 22 5C 2E 5F  // PR_CPU0_CST."\._
    00E0: 50 52 5F 43 50 55 33 14 16 5F 43 53 54 00 A4 5C  // PR_CPU3.._CST..\
    00F0: 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53 54 10 22  // /._PR_CPU0_CST."
    0100: 5C 2E 5F 50 52 5F 43 50 55 34 14 16 5F 43 53 54  // \._PR_CPU4.._CST
    0110: 00 A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 53  // ..\/._PR_CPU0_CS
    0120: 54 10 22 5C 2E 5F 50 52 5F 43 50 55 35 14 16 5F  // T."\._PR_CPU5.._
    0130: 43 53 54 00 A4 5C 2F 03 5F 50 52 5F 43 50 55 30  // CST..\/._PR_CPU0
    0140: 5F 43 53 54 10 22 5C 2E 5F 50 52 5F 43 50 55 36  // _CST."\._PR_CPU6
    0150: 14 16 5F 43 53 54 00 A4 5C 2F 03 5F 50 52 5F 43  // .._CST..\/._PR_C
    0160: 50 55 30 5F 43 53 54 10 22 5C 2E 5F 50 52 5F 43  // PU0_CST."\._PR_C
    0170: 50 55 37 14 16 5F 43 53 54 00 A4 5C 2F 03 5F 50  // PU7.._CST..\/._P
    0180: 52 5F 43 50 55 30 5F 43 53 54                    // R_CPU0_CST
 */
