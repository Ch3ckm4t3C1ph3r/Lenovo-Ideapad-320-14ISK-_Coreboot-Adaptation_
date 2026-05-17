{
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._CPC, MethodObj)    // 0 Arguments
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)


    0024: A0 4D 07 00 15 5C 2E 5F 50 52 5F 43 50 55 30 0C  // .M...\._PR_CPU0.
    0034: 00 15 5C 2E 5F 50 52 5F 43 50 55 31 0C 00 15 5C  // ..\._PR_CPU1...\
    0044: 2E 5F 50 52 5F 43 50 55 32 0C 00 15 5C 2E 5F 50  // ._PR_CPU2...\._P
    0054: 52 5F 43 50 55 33 0C 00 15 5C 2E 5F 50 52 5F 43  // R_CPU3...\._PR_C
    0064: 50 55 34 0C 00 15 5C 2E 5F 50 52 5F 43 50 55 35  // PU4...\._PR_CPU5
    0074: 0C 00 15 5C 2E 5F 50 52 5F 43 50 55 36 0C 00 15  // ...\._PR_CPU6...
    0084: 5C 2E 5F 50 52 5F 43 50 55 37 0C 00 15 5C 2F 03  // \._PR_CPU7...\/.
    0094: 5F 50 52 5F 43 50 55 30 5F 43 50 43 08 00        // _PR_CPU0_CPC..

    Scope (\_PR.CPU1)
    {

    00A2: 10 22 5C 2E 5F 50 52 5F 43 50 55 31              // ."\._PR_CPU1

        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {

    00AE: 14 16 5F 43 50 43 00                             // .._CPC.

            Return (\_PR.CPU0._CPC ())
        }
    }


    00B5: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 50 43  // .\/._PR_CPU0_CPC

    Scope (\_PR.CPU2)
    {

    00C5: 10 22 5C 2E 5F 50 52 5F 43 50 55 32              // ."\._PR_CPU2

        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {

    00D1: 14 16 5F 43 50 43 00                             // .._CPC.

            Return (\_PR.CPU0._CPC ())
        }
    }


    00D8: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 50 43  // .\/._PR_CPU0_CPC

    Scope (\_PR.CPU3)
    {

    00E8: 10 22 5C 2E 5F 50 52 5F 43 50 55 33              // ."\._PR_CPU3

        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {

    00F4: 14 16 5F 43 50 43 00                             // .._CPC.

            Return (\_PR.CPU0._CPC ())
        }
    }


    00FB: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 50 43  // .\/._PR_CPU0_CPC

    Scope (\_PR.CPU4)
    {

    010B: 10 22 5C 2E 5F 50 52 5F 43 50 55 34              // ."\._PR_CPU4

        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {

    0117: 14 16 5F 43 50 43 00                             // .._CPC.

            Return (\_PR.CPU0._CPC ())
        }
    }


    011E: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 50 43  // .\/._PR_CPU0_CPC

    Scope (\_PR.CPU5)
    {

    012E: 10 22 5C 2E 5F 50 52 5F 43 50 55 35              // ."\._PR_CPU5

        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {

    013A: 14 16 5F 43 50 43 00                             // .._CPC.

            Return (\_PR.CPU0._CPC ())
        }
    }


    0141: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 50 43  // .\/._PR_CPU0_CPC

    Scope (\_PR.CPU6)
    {

    0151: 10 22 5C 2E 5F 50 52 5F 43 50 55 36              // ."\._PR_CPU6

        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {

    015D: 14 16 5F 43 50 43 00                             // .._CPC.

            Return (\_PR.CPU0._CPC ())
        }
    }


    0164: A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 50 43  // .\/._PR_CPU0_CPC

    Scope (\_PR.CPU7)
    {

    0174: 10 22 5C 2E 5F 50 52 5F 43 50 55 37              // ."\._PR_CPU7

        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {

    0180: 14 16 5F 43 50 43 00                             // .._CPC.

            Return (\_PR.CPU0._CPC ())
        }
    }
}



Table Header:
Table Body (Length 0x197)

/*
Raw Table Data: Length 407 (0x197)

    0000: 53 53 44 54 97 01 00 00 02 EB 50 6D 52 65 66 00  // SSDT......PmRef.
    0010: 41 70 48 77 70 00 00 00 00 30 00 00 49 4E 54 4C  // ApHwp....0..INTL
    0020: 27 05 16 20 A0 4D 07 00 15 5C 2E 5F 50 52 5F 43  // '.. .M...\._PR_C
    0030: 50 55 30 0C 00 15 5C 2E 5F 50 52 5F 43 50 55 31  // PU0...\._PR_CPU1
    0040: 0C 00 15 5C 2E 5F 50 52 5F 43 50 55 32 0C 00 15  // ...\._PR_CPU2...
    0050: 5C 2E 5F 50 52 5F 43 50 55 33 0C 00 15 5C 2E 5F  // \._PR_CPU3...\._
    0060: 50 52 5F 43 50 55 34 0C 00 15 5C 2E 5F 50 52 5F  // PR_CPU4...\._PR_
    0070: 43 50 55 35 0C 00 15 5C 2E 5F 50 52 5F 43 50 55  // CPU5...\._PR_CPU
    0080: 36 0C 00 15 5C 2E 5F 50 52 5F 43 50 55 37 0C 00  // 6...\._PR_CPU7..
    0090: 15 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 50 43  // .\/._PR_CPU0_CPC
    00A0: 08 00 10 22 5C 2E 5F 50 52 5F 43 50 55 31 14 16  // ..."\._PR_CPU1..
    00B0: 5F 43 50 43 00 A4 5C 2F 03 5F 50 52 5F 43 50 55  // _CPC..\/._PR_CPU
    00C0: 30 5F 43 50 43 10 22 5C 2E 5F 50 52 5F 43 50 55  // 0_CPC."\._PR_CPU
    00D0: 32 14 16 5F 43 50 43 00 A4 5C 2F 03 5F 50 52 5F  // 2.._CPC..\/._PR_
    00E0: 43 50 55 30 5F 43 50 43 10 22 5C 2E 5F 50 52 5F  // CPU0_CPC."\._PR_
    00F0: 43 50 55 33 14 16 5F 43 50 43 00 A4 5C 2F 03 5F  // CPU3.._CPC..\/._
    0100: 50 52 5F 43 50 55 30 5F 43 50 43 10 22 5C 2E 5F  // PR_CPU0_CPC."\._
    0110: 50 52 5F 43 50 55 34 14 16 5F 43 50 43 00 A4 5C  // PR_CPU4.._CPC..\
    0120: 2F 03 5F 50 52 5F 43 50 55 30 5F 43 50 43 10 22  // /._PR_CPU0_CPC."
    0130: 5C 2E 5F 50 52 5F 43 50 55 35 14 16 5F 43 50 43  // \._PR_CPU5.._CPC
    0140: 00 A4 5C 2F 03 5F 50 52 5F 43 50 55 30 5F 43 50  // ..\/._PR_CPU0_CP
    0150: 43 10 22 5C 2E 5F 50 52 5F 43 50 55 36 14 16 5F  // C."\._PR_CPU6.._
    0160: 43 50 43 00 A4 5C 2F 03 5F 50 52 5F 43 50 55 30  // CPC..\/._PR_CPU0
    0170: 5F 43 50 43 10 22 5C 2E 5F 50 52 5F 43 50 55 37  // _CPC."\._PR_CPU7
    0180: 14 16 5F 43 50 43 00 A4 5C 2F 03 5F 50 52 5F 43  // .._CPC..\/._PR_C
    0190: 50 55 30 5F 43 50 43                             // PU0_CPC
 */
