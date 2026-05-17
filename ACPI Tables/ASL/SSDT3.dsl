{
    OperationRegion (MENV, SystemMemory, 0x8CE74FD8, 0x000C)

    0024: 5B 80 4D 45 4E 56 00 0C D8 4F E7 8C 0B 0C 00     // [.MENV...O.....

    Field (MENV, AnyAcc, Lock, Preserve)
    {
        MERV,   32, 
        PTTB,   64
    }
}



Table Header:
Table Body (Length 0x46)

/*
Raw Table Data: Length 70 (0x46)

    0000: 53 53 44 54 46 00 00 00 02 39 4C 45 4E 4F 56 4F  // SSDTF....9LENOVO
    0010: 43 42 2D 30 31 20 20 20 01 00 00 00 41 43 50 49  // CB-01   ....ACPI
    0020: 00 00 04 00 5B 80 4D 45 4E 56 00 0C D8 4F E7 8C  // ....[.MENV...O..
    0030: 0B 0C 00 5B 81 11 4D 45 4E 56 10 4D 45 52 56 20  // ...[..MENV.MERV 
    0040: 50 54 54 42 40 04                                // PTTB@.
 */
