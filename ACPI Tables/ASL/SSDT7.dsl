{
    External (_PR_.DTS1, UnknownObj)
    External (_PR_.DTS2, UnknownObj)
    External (_PR_.DTS3, UnknownObj)
    External (_PR_.DTS4, UnknownObj)
    External (_PR_.PDTS, UnknownObj)
    External (_TZ_.TZ00._TMP, UnknownObj)
    External (_TZ_.TZ01._TMP, UnknownObj)
    External (PAMT, UnknownObj)
    External (TSDB, UnknownObj)


    0024: A0 48 07 00 15 5C 2E 5F 50 52 5F 44 54 53 31 00  // .H...\._PR_DTS1.
    0034: 00 15 5C 2E 5F 50 52 5F 44 54 53 32 00 00 15 5C  // ..\._PR_DTS2...\
    0044: 2E 5F 50 52 5F 44 54 53 33 00 00 15 5C 2E 5F 50  // ._PR_DTS3...\._P
    0054: 52 5F 44 54 53 34 00 00 15 5C 2E 5F 50 52 5F 50  // R_DTS4...\._PR_P
    0064: 44 54 53 00 00 15 5C 2F 03 5F 54 5A 5F 54 5A 30  // DTS...\/._TZ_TZ0
    0074: 30 5F 54 4D 50 00 00 15 5C 2F 03 5F 54 5A 5F 54  // 0_TMP...\/._TZ_T
    0084: 5A 30 31 5F 54 4D 50 00 00 15 5C 50 41 4D 54 00  // Z01_TMP...\PAMT.
    0094: 00 15 5C 54 53 44 42 00 00                       // ..\TSDB..

    Scope (\_SB)
    {

    009D: 10 43 DA 5C 5F 53 42 5F                          // .C.\_SB_

        Device (PTID)
        {

    00A5: 5B 82 4A D9 50 54 49 44                          // [.J.PTID

            Name (_HID, EisaId ("INT340E") /* Motherboard Resources */)  // _HID: Hardware ID

    00AD: 08 5F 48 49 44 0C 25 D4 34 0E                    // ._HID.%.4.

            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID

    00B7: 08 5F 43 49 44 0C 41 D0 0C 02                    // ._CID.A...

            Name (IVER, 0x00030000)

    00C1: 08 49 56 45 52 0C 00 00 03 00                    // .IVER.....

            Name (_STA, 0x0F)  // _STA: Status

    00CB: 08 5F 53 54 41 0A 0F                             // ._STA..

            Method (TSDL, 0, NotSerialized)
            {

    00D2: 14 18 54 53 44 4C 00                             // ..TSDL.

                If (LEqual (TSDB, One))
                {

    00D9: A0 0C 93 54 53 44 42 01                          // ...TSDB.

                    Return (TSD2) /* \_SB_.PTID.TSD2 */
                }


    00E1: A4 54 53 44 32                                   // .TSD2

                Return (TSD1) /* \_SB_.PTID.TSD1 */
            }


    00E6: A4 54 53 44 31                                   // .TSD1

            Name (TSD1, 
    00EB: 08 54 53 44 31                                   // .TSD1

Package (0x28)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "DIMM0_hotspot_U4C1", 
                0x03, 
                "DIMM1_hotspot_Q4D1", 
                0x03, 
                "IMVP_conn_Q7C1", 
                0x03, 
                "board_hotspot1_U3G3", 
                0x03, 
                "board_hotspot2_Q3G1", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TZ00 _TMP", 
                0x02, 
                "TZ01 _TMP", 
                0x03, 
                "SDRAM_hotspot_RT5B1", 
                0x03, 
                "NGFF_slot_RT6G1", 
                0x03, 
                "IMVP_conn_RT7D1", 
                0x03, 
                "board_hotspot3_RT8F1"
            })

    00F0: 12 45 1A 28 00 0D 43 50 55 20 43 6F 72 65 20 30  // .E.(..CPU Core 0
    0100: 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65 20  //  DTS...CPU Core 
    0110: 31 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65  // 1 DTS...CPU Core
    0120: 20 32 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72  //  2 DTS...CPU Cor
    0130: 65 20 33 20 44 54 53 00 00 0D 43 50 55 20 43 6F  // e 3 DTS...CPU Co
    0140: 72 65 20 50 61 63 6B 61 67 65 20 44 54 53 00 0A  // re Package DTS..
    0150: 03 0D 44 49 4D 4D 30 5F 68 6F 74 73 70 6F 74 5F  // ..DIMM0_hotspot_
    0160: 55 34 43 31 00 0A 03 0D 44 49 4D 4D 31 5F 68 6F  // U4C1....DIMM1_ho
    0170: 74 73 70 6F 74 5F 51 34 44 31 00 0A 03 0D 49 4D  // tspot_Q4D1....IM
    0180: 56 50 5F 63 6F 6E 6E 5F 51 37 43 31 00 0A 03 0D  // VP_conn_Q7C1....
    0190: 62 6F 61 72 64 5F 68 6F 74 73 70 6F 74 31 5F 55  // board_hotspot1_U
    01A0: 33 47 33 00 0A 03 0D 62 6F 61 72 64 5F 68 6F 74  // 3G3....board_hot
    01B0: 73 70 6F 74 32 5F 51 33 47 31 00 00 0D 43 50 55  // spot2_Q3G1...CPU
    01C0: 20 50 61 63 6B 61 67 65 20 54 65 6D 70 65 72 61  //  Package Tempera
    01D0: 74 75 72 65 00 0A 05 0D 50 43 48 20 44 54 53 20  // ture....PCH DTS 
    01E0: 54 65 6D 70 65 72 61 74 75 72 65 20 66 72 6F 6D  // Temperature from
    01F0: 20 50 43 48 00 00 0D 43 50 55 20 50 45 43 49 20  //  PCH...CPU PECI 
    0200: 72 65 61 64 69 6E 67 00 0A 05 0D 53 41 20 44 54  // reading....SA DT
    0210: 53 20 54 65 6D 70 65 72 61 74 75 72 65 20 66 72  // S Temperature fr
    0220: 6F 6D 20 50 43 48 00 0A 02 0D 54 5A 30 30 20 5F  // om PCH....TZ00 _
    0230: 54 4D 50 00 0A 02 0D 54 5A 30 31 20 5F 54 4D 50  // TMP....TZ01 _TMP
    0240: 00 0A 03 0D 53 44 52 41 4D 5F 68 6F 74 73 70 6F  // ....SDRAM_hotspo
    0250: 74 5F 52 54 35 42 31 00 0A 03 0D 4E 47 46 46 5F  // t_RT5B1....NGFF_
    0260: 73 6C 6F 74 5F 52 54 36 47 31 00 0A 03 0D 49 4D  // slot_RT6G1....IM
    0270: 56 50 5F 63 6F 6E 6E 5F 52 54 37 44 31 00 0A 03  // VP_conn_RT7D1...
    0280: 0D 62 6F 61 72 64 5F 68 6F 74 73 70 6F 74 33 5F  // .board_hotspot3_
    0290: 52 54 38 46 31 00                                // RT8F1.

            Name (TSD2, 
    0296: 08 54 53 44 32                                   // .TSD2

Package (0x26)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "A-Skin Hotspot U21", 
                0x03, 
                "A-Skin Hotspot U21 IR", 
                0x03, 
                "B-Skin Hotspot U1", 
                0x03, 
                "B-Skin Hotspot U1 IR", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TZ00 _TMP", 
                0x03, 
                "SoC VR Thermsitor RT11", 
                0x03, 
                "Memory Thermistor RT9", 
                0x03, 
                "GNSS Board Ambient Thermistor R4", 
                0x03, 
                "System VR Thermistor RT10", 
                0x03, 
                "A-Skin Skycam Thermistor RT8"
            })

    029B: 12 47 1C 26 00 0D 43 50 55 20 43 6F 72 65 20 30  // .G.&..CPU Core 0
    02AB: 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65 20  //  DTS...CPU Core 
    02BB: 31 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65  // 1 DTS...CPU Core
    02CB: 20 32 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72  //  2 DTS...CPU Cor
    02DB: 65 20 33 20 44 54 53 00 00 0D 43 50 55 20 43 6F  // e 3 DTS...CPU Co
    02EB: 72 65 20 50 61 63 6B 61 67 65 20 44 54 53 00 0A  // re Package DTS..
    02FB: 03 0D 41 2D 53 6B 69 6E 20 48 6F 74 73 70 6F 74  // ..A-Skin Hotspot
    030B: 20 55 32 31 00 0A 03 0D 41 2D 53 6B 69 6E 20 48  //  U21....A-Skin H
    031B: 6F 74 73 70 6F 74 20 55 32 31 20 49 52 00 0A 03  // otspot U21 IR...
    032B: 0D 42 2D 53 6B 69 6E 20 48 6F 74 73 70 6F 74 20  // .B-Skin Hotspot 
    033B: 55 31 00 0A 03 0D 42 2D 53 6B 69 6E 20 48 6F 74  // U1....B-Skin Hot
    034B: 73 70 6F 74 20 55 31 20 49 52 00 00 0D 43 50 55  // spot U1 IR...CPU
    035B: 20 50 61 63 6B 61 67 65 20 54 65 6D 70 65 72 61  //  Package Tempera
    036B: 74 75 72 65 00 0A 05 0D 50 43 48 20 44 54 53 20  // ture....PCH DTS 
    037B: 54 65 6D 70 65 72 61 74 75 72 65 20 66 72 6F 6D  // Temperature from
    038B: 20 50 43 48 00 00 0D 43 50 55 20 50 45 43 49 20  //  PCH...CPU PECI 
    039B: 72 65 61 64 69 6E 67 00 0A 05 0D 53 41 20 44 54  // reading....SA DT
    03AB: 53 20 54 65 6D 70 65 72 61 74 75 72 65 20 66 72  // S Temperature fr
    03BB: 6F 6D 20 50 43 48 00 0A 02 0D 54 5A 30 30 20 5F  // om PCH....TZ00 _
    03CB: 54 4D 50 00 0A 03 0D 53 6F 43 20 56 52 20 54 68  // TMP....SoC VR Th
    03DB: 65 72 6D 73 69 74 6F 72 20 52 54 31 31 00 0A 03  // ermsitor RT11...
    03EB: 0D 4D 65 6D 6F 72 79 20 54 68 65 72 6D 69 73 74  // .Memory Thermist
    03FB: 6F 72 20 52 54 39 00 0A 03 0D 47 4E 53 53 20 42  // or RT9....GNSS B
    040B: 6F 61 72 64 20 41 6D 62 69 65 6E 74 20 54 68 65  // oard Ambient The
    041B: 72 6D 69 73 74 6F 72 20 52 34 00 0A 03 0D 53 79  // rmistor R4....Sy
    042B: 73 74 65 6D 20 56 52 20 54 68 65 72 6D 69 73 74  // stem VR Thermist
    043B: 6F 72 20 52 54 31 30 00 0A 03 0D 41 2D 53 6B 69  // or RT10....A-Ski
    044B: 6E 20 53 6B 79 63 61 6D 20 54 68 65 72 6D 69 73  // n Skycam Thermis
    045B: 74 6F 72 20 52 54 38 00                          // tor RT8.

            Name (PSDL, 
    0463: 08 50 53 44 4C                                   // .PSDL

Package (0x22)
            {
                0x0B, 
                "Cpu Power (mW)", 
                0x0B, 
                "Platform Power (mW)", 
                0x0B, 
                "Cpu Average Power (mW)", 
                0x0B, 
                "Platform Average Power (mW)", 
                0x0C, 
                "Battery 1 Design Capacity (mWh)", 
                0x0C, 
                "Battery 1 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 1 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 1 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery 2 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 2 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 2 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery Pack 1 maximum power (mW)", 
                0x0C, 
                "Battery Pack 2 maximum power (mW)"
            })

    0468: 12 4C 28 22 0A 0B 0D 43 70 75 20 50 6F 77 65 72  // .L("...Cpu Power
    0478: 20 28 6D 57 29 00 0A 0B 0D 50 6C 61 74 66 6F 72  //  (mW)....Platfor
    0488: 6D 20 50 6F 77 65 72 20 28 6D 57 29 00 0A 0B 0D  // m Power (mW)....
    0498: 43 70 75 20 41 76 65 72 61 67 65 20 50 6F 77 65  // Cpu Average Powe
    04A8: 72 20 28 6D 57 29 00 0A 0B 0D 50 6C 61 74 66 6F  // r (mW)....Platfo
    04B8: 72 6D 20 41 76 65 72 61 67 65 20 50 6F 77 65 72  // rm Average Power
    04C8: 20 28 6D 57 29 00 0A 0C 0D 42 61 74 74 65 72 79  //  (mW)....Battery
    04D8: 20 31 20 44 65 73 69 67 6E 20 43 61 70 61 63 69  //  1 Design Capaci
    04E8: 74 79 20 28 6D 57 68 29 00 0A 0C 0D 42 61 74 74  // ty (mWh)....Batt
    04F8: 65 72 79 20 31 20 52 65 6D 61 69 6E 69 6E 67 20  // ery 1 Remaining 
    0508: 43 61 70 61 63 69 74 79 20 28 6D 57 68 29 00 0A  // Capacity (mWh)..
    0518: 0C 0D 42 61 74 74 65 72 79 20 31 20 46 75 6C 6C  // ..Battery 1 Full
    0528: 20 43 68 61 72 67 65 20 43 61 70 61 63 69 74 79  //  Charge Capacity
    0538: 20 28 6D 57 68 29 00 0A 0C 0D 42 61 74 74 65 72  //  (mWh)....Batter
    0548: 79 20 31 20 46 75 6C 6C 20 52 65 73 6F 6C 75 74  // y 1 Full Resolut
    0558: 69 6F 6E 20 56 6F 6C 74 61 67 65 20 28 6D 56 29  // ion Voltage (mV)
    0568: 00 0A 0C 0D 42 61 74 74 65 72 79 20 31 20 46 75  // ....Battery 1 Fu
    0578: 6C 6C 20 52 65 73 6F 6C 75 74 69 6F 6E 20 44 69  // ll Resolution Di
    0588: 73 63 68 61 72 67 65 20 43 75 72 72 65 6E 74 20  // scharge Current 
    0598: 28 6D 41 29 00 0A 0C 0D 42 61 74 74 65 72 79 20  // (mA)....Battery 
    05A8: 31 20 46 75 6C 6C 20 52 65 73 6F 6C 75 74 69 6F  // 1 Full Resolutio
    05B8: 6E 20 43 68 61 72 67 65 20 43 75 72 72 65 6E 74  // n Charge Current
    05C8: 20 28 6D 41 29 00 0A 0C 0D 42 61 74 74 65 72 79  //  (mA)....Battery
    05D8: 20 32 20 52 65 6D 61 69 6E 69 6E 67 20 43 61 70  //  2 Remaining Cap
    05E8: 61 63 69 74 79 20 28 6D 57 68 29 00 0A 0C 0D 42  // acity (mWh)....B
    05F8: 61 74 74 65 72 79 20 32 20 46 75 6C 6C 20 43 68  // attery 2 Full Ch
    0608: 61 72 67 65 20 43 61 70 61 63 69 74 79 20 28 6D  // arge Capacity (m
    0618: 57 68 29 00 0A 0C 0D 42 61 74 74 65 72 79 20 32  // Wh)....Battery 2
    0628: 20 46 75 6C 6C 20 52 65 73 6F 6C 75 74 69 6F 6E  //  Full Resolution
    0638: 20 56 6F 6C 74 61 67 65 20 28 6D 56 29 00 0A 0C  //  Voltage (mV)...
    0648: 0D 42 61 74 74 65 72 79 20 32 20 46 75 6C 6C 20  // .Battery 2 Full 
    0658: 52 65 73 6F 6C 75 74 69 6F 6E 20 44 69 73 63 68  // Resolution Disch
    0668: 61 72 67 65 20 43 75 72 72 65 6E 74 20 28 6D 41  // arge Current (mA
    0678: 29 00 0A 0C 0D 42 61 74 74 65 72 79 20 32 20 46  // )....Battery 2 F
    0688: 75 6C 6C 20 52 65 73 6F 6C 75 74 69 6F 6E 20 43  // ull Resolution C
    0698: 68 61 72 67 65 20 43 75 72 72 65 6E 74 20 28 6D  // harge Current (m
    06A8: 41 29 00 0A 0C 0D 42 61 74 74 65 72 79 20 50 61  // A)....Battery Pa
    06B8: 63 6B 20 31 20 6D 61 78 69 6D 75 6D 20 70 6F 77  // ck 1 maximum pow
    06C8: 65 72 20 28 6D 57 29 00 0A 0C 0D 42 61 74 74 65  // er (mW)....Batte
    06D8: 72 79 20 50 61 63 6B 20 32 20 6D 61 78 69 6D 75  // ry Pack 2 maximu
    06E8: 6D 20 70 6F 77 65 72 20 28 6D 57 29 00           // m power (mW).

            Method (OSDL, 0, NotSerialized)
            {

    06F5: 14 18 4F 53 44 4C 00                             // ..OSDL.

                If (LEqual (TSDB, One))
                {

    06FC: A0 0C 93 54 53 44 42 01                          // ...TSDB.

                    Return (OSD2) /* \_SB_.PTID.OSD2 */
                }


    0704: A4 4F 53 44 32                                   // .OSD2

                Return (OSD1) /* \_SB_.PTID.OSD1 */
            }


    0709: A4 4F 53 44 31                                   // .OSD1

            Name (OSD1, 
    070E: 08 4F 53 44 31                                   // .OSD1

Package (0x15)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW", 
                0x03, 
                "Thermistor 1 ", 
                "RAW", 
                0x03, 
                "Thermistor 2 ", 
                "RAW", 
                0x03, 
                "Thermistor 3 ", 
                "RAW", 
                0x03, 
                "Thermistor 4 ", 
                "RAW"
            })

    0713: 12 43 0A 15 0A 04 0D 43 50 55 20 46 61 6E 20 44  // .C.....CPU Fan D
    0723: 75 74 79 20 43 79 63 6C 65 00 0D 52 41 57 00 0A  // uty Cycle..RAW..
    0733: 04 0D 43 50 55 20 46 61 6E 20 23 31 20 53 70 65  // ..CPU Fan #1 Spe
    0743: 65 64 00 0D 52 50 4D 00 0A 03 0D 53 6B 69 6E 20  // ed..RPM....Skin 
    0753: 54 65 6D 70 20 30 00 0D 52 41 57 00 0A 03 0D 54  // Temp 0..RAW....T
    0763: 68 65 72 6D 69 73 74 6F 72 20 31 20 00 0D 52 41  // hermistor 1 ..RA
    0773: 57 00 0A 03 0D 54 68 65 72 6D 69 73 74 6F 72 20  // W....Thermistor 
    0783: 32 20 00 0D 52 41 57 00 0A 03 0D 54 68 65 72 6D  // 2 ..RAW....Therm
    0793: 69 73 74 6F 72 20 33 20 00 0D 52 41 57 00 0A 03  // istor 3 ..RAW...
    07A3: 0D 54 68 65 72 6D 69 73 74 6F 72 20 34 20 00 0D  // .Thermistor 4 ..
    07B3: 52 41 57 00                                      // RAW.

            Name (OSD2, 
    07B7: 08 4F 53 44 32                                   // .OSD2

Package (0x18)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW", 
                0x03, 
                "Thermistor 1 ", 
                "RAW", 
                0x03, 
                "Thermistor 2 ", 
                "RAW", 
                0x03, 
                "Thermistor 3 ", 
                "RAW", 
                0x03, 
                "Thermistor 4 ", 
                "RAW", 
                0x03, 
                "Thermistor 5 ", 
                "RAW"
            })

    07BC: 12 49 0B 18 0A 04 0D 43 50 55 20 46 61 6E 20 44  // .I.....CPU Fan D
    07CC: 75 74 79 20 43 79 63 6C 65 00 0D 52 41 57 00 0A  // uty Cycle..RAW..
    07DC: 04 0D 43 50 55 20 46 61 6E 20 23 31 20 53 70 65  // ..CPU Fan #1 Spe
    07EC: 65 64 00 0D 52 50 4D 00 0A 03 0D 53 6B 69 6E 20  // ed..RPM....Skin 
    07FC: 54 65 6D 70 20 30 00 0D 52 41 57 00 0A 03 0D 54  // Temp 0..RAW....T
    080C: 68 65 72 6D 69 73 74 6F 72 20 31 20 00 0D 52 41  // hermistor 1 ..RA
    081C: 57 00 0A 03 0D 54 68 65 72 6D 69 73 74 6F 72 20  // W....Thermistor 
    082C: 32 20 00 0D 52 41 57 00 0A 03 0D 54 68 65 72 6D  // 2 ..RAW....Therm
    083C: 69 73 74 6F 72 20 33 20 00 0D 52 41 57 00 0A 03  // istor 3 ..RAW...
    084C: 0D 54 68 65 72 6D 69 73 74 6F 72 20 34 20 00 0D  // .Thermistor 4 ..
    085C: 52 41 57 00 0A 03 0D 54 68 65 72 6D 69 73 74 6F  // RAW....Thermisto
    086C: 72 20 35 20 00 0D 52 41 57 00                    // r 5 ..RAW.

            Method (XLAT, 1, Serialized)
            {

    0876: 14 43 12 58 4C 41 54 09                          // .C.XLAT.

                If (
    087E: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x03AC))
                {

    0881: 95 68 0B AC 03                                   // .h...

                    Return (0x0A47)
                }


    0886: A4 0B 47 0A                                      // ..G.

                If (
    088A: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0394))
                {

    088D: 95 68 0B 94 03                                   // .h...

                    Return (0x0A79)
                }


    0892: A4 0B 79 0A                                      // ..y.

                If (
    0896: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0374))
                {

    0899: 95 68 0B 74 03                                   // .h.t.

                    Return (0x0AAB)
                }


    089E: A4 0B AB 0A                                      // ....

                If (
    08A2: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0354))
                {

    08A5: 95 68 0B 54 03                                   // .h.T.

                    Return (0x0ADD)
                }


    08AA: A4 0B DD 0A                                      // ....

                If (
    08AE: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x032C))
                {

    08B1: 95 68 0B 2C 03                                   // .h.,.

                    Return (0x0B0F)
                }


    08B6: A4 0B 0F 0B                                      // ....

                If (
    08BA: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0300))
                {

    08BD: 95 68 0B 00 03                                   // .h...

                    Return (0x0B41)
                }


    08C2: A4 0B 41 0B                                      // ..A.

                If (
    08C6: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x02D0))
                {

    08C9: 95 68 0B D0 02                                   // .h...

                    Return (0x0B73)
                }


    08CE: A4 0B 73 0B                                      // ..s.

                If (
    08D2: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x029C))
                {

    08D5: 95 68 0B 9C 02                                   // .h...

                    Return (0x0BA5)
                }


    08DA: A4 0B A5 0B                                      // ....

                If (
    08DE: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0264))
                {

    08E1: 95 68 0B 64 02                                   // .h.d.

                    Return (0x0BD7)
                }


    08E6: A4 0B D7 0B                                      // ....

                If (
    08EA: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0230))
                {

    08ED: 95 68 0B 30 02                                   // .h.0.

                    Return (0x0C09)
                }


    08F2: A4 0B 09 0C                                      // ....

                If (
    08F6: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x01FC))
                {

    08F9: 95 68 0B FC 01                                   // .h...

                    Return (0x0C3B)
                }


    08FE: A4 0B 3B 0C                                      // ..;.

                If (
    0902: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x01C8))
                {

    0905: 95 68 0B C8 01                                   // .h...

                    Return (0x0C6D)
                }


    090A: A4 0B 6D 0C                                      // ..m.

                If (
    090E: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0194))
                {

    0911: 95 68 0B 94 01                                   // .h...

                    Return (0x0C9F)
                }


    0916: A4 0B 9F 0C                                      // ....

                If (
    091A: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0164))
                {

    091D: 95 68 0B 64 01                                   // .h.d.

                    Return (0x0CD1)
                }


    0922: A4 0B D1 0C                                      // ....

                If (
    0926: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0138))
                {

    0929: 95 68 0B 38 01                                   // .h.8.

                    Return (0x0D03)
                }


    092E: A4 0B 03 0D                                      // ....

                If (
    0932: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0114))
                {

    0935: 95 68 0B 14 01                                   // .h...

                    Return (0x0D35)
                }


    093A: A4 0B 35 0D                                      // ..5.

                If (
    093E: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0xF0))
                {

    0941: 95 68 0A F0                                      // .h..

                    Return (0x0D67)
                }


    0945: A4 0B 67 0D                                      // ..g.

                If (
    0949: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0xD4))
                {

    094C: 95 68 0A D4                                      // .h..

                    Return (0x0D99)
                }


    0950: A4 0B 99 0D                                      // ....

                If (
    0954: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0xB8))
                {

    0957: 95 68 0A B8                                      // .h..

                    Return (0x0DCB)
                }


    095B: A4 0B CB 0D                                      // ....

                If (
    095F: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0xA0))
                {

    0962: 95 68 0A A0                                      // .h..

                    Return (0x0DFD)
                }


    0966: A4 0B FD 0D                                      // ....

                If (
    096A: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0x8C))
                {

    096D: 95 68 0A 8C                                      // .h..

                    Return (0x0E2F)
                }


    0971: A4 0B 2F 0E                                      // ../.

                If (
    0975: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0x7C))
                {

    0978: 95 68 0A 7C                                      // .h.|

                    Return (0x0E61)
                }


    097C: A4 0B 61 0E                                      // ..a.

                If (
    0980: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0x68))
                {

    0983: 95 68 0A 68                                      // .h.h

                    Return (0x0E93)
                }


    0987: A4 0B 93 0E                                      // ....

                If (
    098B: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0x58))
                {

    098E: 95 68 0A 58                                      // .h.X

                    Return (0x0EC5)
                }


    0992: A4 0B C5 0E                                      // ....

                Return (0x0EC5)
            }


    0996: A4 0B C5 0E                                      // ....

            Method (XSDS, 1, Serialized)
            {

    099A: 14 41 12 58 53 44 53 09                          // .A.XSDS.

                If (
    09A2: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x02F0))
                {

    09A5: 95 68 0B F0 02                                   // .h...

                    Return (0x0A47)
                }


    09AA: A4 0B 47 0A                                      // ..G.

                If (
    09AE: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x02DC))
                {

    09B1: 95 68 0B DC 02                                   // .h...

                    Return (0x0A79)
                }


    09B6: A4 0B 79 0A                                      // ..y.

                If (
    09BA: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x02C4))
                {

    09BD: 95 68 0B C4 02                                   // .h...

                    Return (0x0AAB)
                }


    09C2: A4 0B AB 0A                                      // ....

                If (
    09C6: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x02A8))
                {

    09C9: 95 68 0B A8 02                                   // .h...

                    Return (0x0ADD)
                }


    09CE: A4 0B DD 0A                                      // ....

                If (
    09D2: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0288))
                {

    09D5: 95 68 0B 88 02                                   // .h...

                    Return (0x0B0F)
                }


    09DA: A4 0B 0F 0B                                      // ....

                If (
    09DE: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0264))
                {

    09E1: 95 68 0B 64 02                                   // .h.d.

                    Return (0x0B41)
                }


    09E6: A4 0B 41 0B                                      // ..A.

                If (
    09EA: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0240))
                {

    09ED: 95 68 0B 40 02                                   // .h.@.

                    Return (0x0B73)
                }


    09F2: A4 0B 73 0B                                      // ..s.

                If (
    09F6: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0214))
                {

    09F9: 95 68 0B 14 02                                   // .h...

                    Return (0x0BA5)
                }


    09FE: A4 0B A5 0B                                      // ....

                If (
    0A02: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x01EC))
                {

    0A05: 95 68 0B EC 01                                   // .h...

                    Return (0x0BD7)
                }


    0A0A: A4 0B D7 0B                                      // ....

                If (
    0A0E: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x01C0))
                {

    0A11: 95 68 0B C0 01                                   // .h...

                    Return (0x0C09)
                }


    0A16: A4 0B 09 0C                                      // ....

                If (
    0A1A: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0194))
                {

    0A1D: 95 68 0B 94 01                                   // .h...

                    Return (0x0C3B)
                }


    0A22: A4 0B 3B 0C                                      // ..;.

                If (
    0A26: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x016C))
                {

    0A29: 95 68 0B 6C 01                                   // .h.l.

                    Return (0x0C6D)
                }


    0A2E: A4 0B 6D 0C                                      // ..m.

                If (
    0A32: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x0144))
                {

    0A35: 95 68 0B 44 01                                   // .h.D.

                    Return (0x0C9F)
                }


    0A3A: A4 0B 9F 0C                                      // ....

                If (
    0A3E: A0 0B 92                                         // ...

LGreaterEqual (Arg0, 0x011C))
                {

    0A41: 95 68 0B 1C 01                                   // .h...

                    Return (0x0CD1)
                }


    0A46: A4 0B D1 0C                                      // ....

                If (
    0A4A: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0xFC))
                {

    0A4D: 95 68 0A FC                                      // .h..

                    Return (0x0D03)
                }


    0A51: A4 0B 03 0D                                      // ....

                If (
    0A55: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0xDC))
                {

    0A58: 95 68 0A DC                                      // .h..

                    Return (0x0D35)
                }


    0A5C: A4 0B 35 0D                                      // ..5.

                If (
    0A60: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0xC0))
                {

    0A63: 95 68 0A C0                                      // .h..

                    Return (0x0D67)
                }


    0A67: A4 0B 67 0D                                      // ..g.

                If (
    0A6B: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0xA8))
                {

    0A6E: 95 68 0A A8                                      // .h..

                    Return (0x0D99)
                }


    0A72: A4 0B 99 0D                                      // ....

                If (
    0A76: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0x94))
                {

    0A79: 95 68 0A 94                                      // .h..

                    Return (0x0DCB)
                }


    0A7D: A4 0B CB 0D                                      // ....

                If (
    0A81: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0x80))
                {

    0A84: 95 68 0A 80                                      // .h..

                    Return (0x0DFD)
                }


    0A88: A4 0B FD 0D                                      // ....

                If (
    0A8C: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0x70))
                {

    0A8F: 95 68 0A 70                                      // .h.p

                    Return (0x0E2F)
                }


    0A93: A4 0B 2F 0E                                      // ../.

                If (
    0A97: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0x60))
                {

    0A9A: 95 68 0A 60                                      // .h.`

                    Return (0x0E61)
                }


    0A9E: A4 0B 61 0E                                      // ..a.

                If (
    0AA2: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0x54))
                {

    0AA5: 95 68 0A 54                                      // .h.T

                    Return (0x0E93)
                }


    0AA9: A4 0B 93 0E                                      // ....

                If (
    0AAD: A0 0A 92                                         // ...

LGreaterEqual (Arg0, 0x48))
                {

    0AB0: 95 68 0A 48                                      // .h.H

                    Return (0x0EC5)
                }


    0AB4: A4 0B C5 0E                                      // ....

                Return (0x0EC5)
            }


    0AB8: A4 0B C5 0E                                      // ....

            Method (TSDD, 0, Serialized)
            {

    0ABC: 14 4B 24 54 53 44 44 08                          // .K$TSDD.

                If (LEqual (TSDB, One))
                {

    0AC4: A0 47 11 93 54 53 44 42 01                       // .G..TSDB.

                    Name (TMPX, 
    0ACD: 08 54 4D 50 58                                   // .TMPX

Package (0x13)
                    {
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000
                    })
                    Store (Add (Multiply (\_PR.DTS1, 0x0A), 0x0AAC), 
    0AD2: 12 42 06 13 0C 00 00 00 80 0C 00 00 00 80 0C 00  // .B..............
    0AE2: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    0AF2: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    0B02: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    0B12: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    0B22: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00  // ................
    0B32: 00 00 80 70 72 77 5C 2E 5F 50 52 5F 44 54 53 31  // ...prw\._PR_DTS1
    0B42: 0A 0A 00 0B AC 0A 00                             // .......

Index (TMPX, Zero))
                    Store (Add (Multiply (\_PR.DTS2, 0x0A), 0x0AAC), 
    0B49: 88 54 4D 50 58 00 00 70 72 77 5C 2E 5F 50 52 5F  // .TMPX..prw\._PR_
    0B59: 44 54 53 32 0A 0A 00 0B AC 0A 00                 // DTS2.......

Index (TMPX, One))
                    Store (Add (Multiply (\_PR.DTS3, 0x0A), 0x0AAC), 
    0B64: 88 54 4D 50 58 01 00 70 72 77 5C 2E 5F 50 52 5F  // .TMPX..prw\._PR_
    0B74: 44 54 53 33 0A 0A 00 0B AC 0A 00                 // DTS3.......

Index (TMPX, 0x02))
                    Store (Add (Multiply (\_PR.DTS4, 0x0A), 0x0AAC), 
    0B7F: 88 54 4D 50 58 0A 02 00 70 72 77 5C 2E 5F 50 52  // .TMPX...prw\._PR
    0B8F: 5F 44 54 53 34 0A 0A 00 0B AC 0A 00              // _DTS4.......

Index (TMPX, 0x03))
                    Store (Add (Multiply (\_PR.PDTS, 0x0A), 0x0AAC), 
    0B9B: 88 54 4D 50 58 0A 03 00 70 72 77 5C 2E 5F 50 52  // .TMPX...prw\._PR
    0BAB: 5F 50 44 54 53 0A 0A 00 0B AC 0A 00              // _PDTS.......

Index (TMPX, 0x04))
                    Store (\_TZ.TZ00._TMP, 
    0BB7: 88 54 4D 50 58 0A 04 00 70 5C 2F 03 5F 54 5A 5F  // .TMPX...p\/._TZ_
    0BC7: 54 5A 30 30 5F 54 4D 50                          // TZ00_TMP

Index (TMPX, 0x0D))

    0BCF: 88 54 4D 50 58 0A 0D 00                          // .TMPX...

                    Return (TMPX) /* \_SB_.PTID.TSDD.TMPX */
                }


    0BD7: A4 54 4D 50 58                                   // .TMPX

                Name (TMPV, 
    0BDC: 08 54 4D 50 56                                   // .TMPV

Package (0x14)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Store (Add (Multiply (\_PR.DTS1, 0x0A), 0x0AAC), 
    0BE1: 12 47 06 14 0C 00 00 00 80 0C 00 00 00 80 0C 00  // .G..............
    0BF1: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    0C01: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    0C11: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    0C21: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    0C31: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00  // ................
    0C41: 00 00 80 0C 00 00 00 80 70 72 77 5C 2E 5F 50 52  // ........prw\._PR
    0C51: 5F 44 54 53 31 0A 0A 00 0B AC 0A 00              // _DTS1.......

Index (TMPV, Zero))
                Store (Add (Multiply (\_PR.DTS2, 0x0A), 0x0AAC), 
    0C5D: 88 54 4D 50 56 00 00 70 72 77 5C 2E 5F 50 52 5F  // .TMPV..prw\._PR_
    0C6D: 44 54 53 32 0A 0A 00 0B AC 0A 00                 // DTS2.......

Index (TMPV, One))
                Store (Add (Multiply (\_PR.DTS3, 0x0A), 0x0AAC), 
    0C78: 88 54 4D 50 56 01 00 70 72 77 5C 2E 5F 50 52 5F  // .TMPV..prw\._PR_
    0C88: 44 54 53 33 0A 0A 00 0B AC 0A 00                 // DTS3.......

Index (TMPV, 0x02))
                Store (Add (Multiply (\_PR.DTS4, 0x0A), 0x0AAC), 
    0C93: 88 54 4D 50 56 0A 02 00 70 72 77 5C 2E 5F 50 52  // .TMPV...prw\._PR
    0CA3: 5F 44 54 53 34 0A 0A 00 0B AC 0A 00              // _DTS4.......

Index (TMPV, 0x03))
                Store (Add (Multiply (\_PR.PDTS, 0x0A), 0x0AAC), 
    0CAF: 88 54 4D 50 56 0A 03 00 70 72 77 5C 2E 5F 50 52  // .TMPV...prw\._PR
    0CBF: 5F 50 44 54 53 0A 0A 00 0B AC 0A 00              // _PDTS.......

Index (TMPV, 0x04))
                Store (\_TZ.TZ00._TMP, 
    0CCB: 88 54 4D 50 56 0A 04 00 70 5C 2F 03 5F 54 5A 5F  // .TMPV...p\/._TZ_
    0CDB: 54 5A 30 30 5F 54 4D 50                          // TZ00_TMP

Index (TMPV, 0x0E))
                Store (\_TZ.TZ01._TMP, 
    0CE3: 88 54 4D 50 56 0A 0E 00 70 5C 2F 03 5F 54 5A 5F  // .TMPV...p\/._TZ_
    0CF3: 54 5A 30 31 5F 54 4D 50                          // TZ01_TMP

Index (TMPV, 0x0F))

    0CFB: 88 54 4D 50 56 0A 0F 00                          // .TMPV...

                Return (TMPV) /* \_SB_.PTID.TSDD.TMPV */
            }


    0D03: A4 54 4D 50 56                                   // .TMPV

            Method (PSDD, 0, Serialized)
            {

    0D08: 14 4A 06 50 53 44 44 08                          // .J.PSDD.

                Name (PWRV, 
    0D10: 08 50 57 52 56                                   // .PWRV

Package (0x11)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })

    0D15: 12 48 05 11 0C 00 00 00 80 0C 00 00 00 80 0C 00  // .H..............
    0D25: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    0D35: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    0D45: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    0D55: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    0D65: 00 00 00 80 0C 00 00 00 80                       // .........

                Return (PWRV) /* \_SB_.PTID.PSDD.PWRV */
            }


    0D6E: A4 50 57 52 56                                   // .PWRV

            Method (OSDD, 0, Serialized)
            {

    0D73: 14 0A 4F 53 44 44 08                             // ..OSDD.

                Return (
    0D7A: A4                                               // .

Package (0x00){})
            }


    0D7B: 12 02 00                                         // ...

            Method (SDSP, 0, NotSerialized)
            {

    0D7E: 14 09 53 44 53 50 00                             // ..SDSP.

                Return (0x0A)
            }


    0D85: A4 0A 0A                                         // ...

            Name (PADA, 
    0D88: 08 50 41 44 41                                   // .PADA

Package (0x0A)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x1A, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })

    0D8D: 12 2D 0A 01 0C FF FF FF FF 0C FF FF FF FF 0A 1A  // .-..............
    0D9D: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
    0DAD: FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF        // ..............

            Name (PADD, 
    0DBB: 08 50 41 44 44                                   // .PADD

Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x1A, 
                0x62, 
                0x63, 
                0x60, 
                0x61, 
                0x65, 
                0x64
            })

    0DC0: 12 18 0A 0A 02 0B A4 06 0B A0 06 0A 1A 0A 62 0A  // ..............b.
    0DD0: 63 0A 60 0A 61 0A 65 0A 64                       // c.`.a.e.d

            Method (PADT, 0, NotSerialized)
            {

    0DD9: 14 16 50 41 44 54 00                             // ..PADT.

                If (PAMT)
                {

    0DE0: A0 0A 50 41 4D 54                                // ..PAMT

                    Return (PADA) /* \_SB_.PTID.PADA */
                }


    0DE6: A4 50 41 44 41                                   // .PADA

                Return (PADD) /* \_SB_.PTID.PADD */
            }


    0DEB: A4 50 41 44 44                                   // .PADD

            Method (RPMD, 0, Serialized)
            {

    0DF0: 14 14 52 50 4D 44 08                             // ..RPMD.

                Name (MTMP, 
    0DF7: 08 4D 54 4D 50                                   // .MTMP

Buffer (0x1A){})

    0DFC: 11 03 0A 1A                                      // ....

                Return (MTMP) /* \_SB_.PTID.RPMD.MTMP */
            }


    0E00: A4 4D 54 4D 50                                   // .MTMP

            Method (WPMD, 1, NotSerialized)
            {

    0E05: 14 16 57 50 4D 44 01                             // ..WPMD.

                If (
    0E0C: A0 0D 92                                         // ...

LNotEqual (SizeOf (Arg0), 0x1A))
                {

    0E0F: 93 87 68 0A 1A                                   // ..h..

                    Return (0xFFFFFFFF)
                }


    0E14: A4 0C FF FF FF FF                                // ......

                Return (Zero)
            }


    0E1A: A4 00                                            // ..

            Method (ISPC, 0, NotSerialized)
            {

    0E1C: 14 08 49 53 50 43 00                             // ..ISPC.

                Return (Zero)
            }


    0E23: A4 00                                            // ..

            Method (ENPC, 0, NotSerialized)
            {

    0E25: 14 08 45 4E 50 43 00                             // ..ENPC.

                Return (Zero)
            }


    0E2C: A4 00                                            // ..

            Method (RPCS, 0, NotSerialized)
            {
            }


    0E2E: 14 06 52 50 43 53 00                             // ..RPCS.

            Method (RPEC, 0, NotSerialized)
            {
                Store (Zero, Local0)

    0E35: 14 0B 52 50 45 43 00 70 00 60                    // ..RPEC.p.`

                Return (Local0)
            }
        }
    }
}



Table Header:
Table Body (Length 0xE41)

/*
Raw Table Data: Length 3649 (0xE41)

    0000: 53 53 44 54 41 0E 00 00 02 BE 4C 45 4E 4F 56 4F  // SSDTA.....LENOVO
    0010: 43 42 2D 30 31 20 20 20 01 00 00 00 41 43 50 49  // CB-01   ....ACPI
    0020: 00 00 04 00 A0 48 07 00 15 5C 2E 5F 50 52 5F 44  // .....H...\._PR_D
    0030: 54 53 31 00 00 15 5C 2E 5F 50 52 5F 44 54 53 32  // TS1...\._PR_DTS2
    0040: 00 00 15 5C 2E 5F 50 52 5F 44 54 53 33 00 00 15  // ...\._PR_DTS3...
    0050: 5C 2E 5F 50 52 5F 44 54 53 34 00 00 15 5C 2E 5F  // \._PR_DTS4...\._
    0060: 50 52 5F 50 44 54 53 00 00 15 5C 2F 03 5F 54 5A  // PR_PDTS...\/._TZ
    0070: 5F 54 5A 30 30 5F 54 4D 50 00 00 15 5C 2F 03 5F  // _TZ00_TMP...\/._
    0080: 54 5A 5F 54 5A 30 31 5F 54 4D 50 00 00 15 5C 50  // TZ_TZ01_TMP...\P
    0090: 41 4D 54 00 00 15 5C 54 53 44 42 00 00 10 43 DA  // AMT...\TSDB...C.
    00A0: 5C 5F 53 42 5F 5B 82 4A D9 50 54 49 44 08 5F 48  // \_SB_[.J.PTID._H
    00B0: 49 44 0C 25 D4 34 0E 08 5F 43 49 44 0C 41 D0 0C  // ID.%.4.._CID.A..
    00C0: 02 08 49 56 45 52 0C 00 00 03 00 08 5F 53 54 41  // ..IVER......_STA
    00D0: 0A 0F 14 18 54 53 44 4C 00 A0 0C 93 54 53 44 42  // ....TSDL....TSDB
    00E0: 01 A4 54 53 44 32 A4 54 53 44 31 08 54 53 44 31  // ..TSD2.TSD1.TSD1
    00F0: 12 45 1A 28 00 0D 43 50 55 20 43 6F 72 65 20 30  // .E.(..CPU Core 0
    0100: 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65 20  //  DTS...CPU Core 
    0110: 31 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65  // 1 DTS...CPU Core
    0120: 20 32 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72  //  2 DTS...CPU Cor
    0130: 65 20 33 20 44 54 53 00 00 0D 43 50 55 20 43 6F  // e 3 DTS...CPU Co
    0140: 72 65 20 50 61 63 6B 61 67 65 20 44 54 53 00 0A  // re Package DTS..
    0150: 03 0D 44 49 4D 4D 30 5F 68 6F 74 73 70 6F 74 5F  // ..DIMM0_hotspot_
    0160: 55 34 43 31 00 0A 03 0D 44 49 4D 4D 31 5F 68 6F  // U4C1....DIMM1_ho
    0170: 74 73 70 6F 74 5F 51 34 44 31 00 0A 03 0D 49 4D  // tspot_Q4D1....IM
    0180: 56 50 5F 63 6F 6E 6E 5F 51 37 43 31 00 0A 03 0D  // VP_conn_Q7C1....
    0190: 62 6F 61 72 64 5F 68 6F 74 73 70 6F 74 31 5F 55  // board_hotspot1_U
    01A0: 33 47 33 00 0A 03 0D 62 6F 61 72 64 5F 68 6F 74  // 3G3....board_hot
    01B0: 73 70 6F 74 32 5F 51 33 47 31 00 00 0D 43 50 55  // spot2_Q3G1...CPU
    01C0: 20 50 61 63 6B 61 67 65 20 54 65 6D 70 65 72 61  //  Package Tempera
    01D0: 74 75 72 65 00 0A 05 0D 50 43 48 20 44 54 53 20  // ture....PCH DTS 
    01E0: 54 65 6D 70 65 72 61 74 75 72 65 20 66 72 6F 6D  // Temperature from
    01F0: 20 50 43 48 00 00 0D 43 50 55 20 50 45 43 49 20  //  PCH...CPU PECI 
    0200: 72 65 61 64 69 6E 67 00 0A 05 0D 53 41 20 44 54  // reading....SA DT
    0210: 53 20 54 65 6D 70 65 72 61 74 75 72 65 20 66 72  // S Temperature fr
    0220: 6F 6D 20 50 43 48 00 0A 02 0D 54 5A 30 30 20 5F  // om PCH....TZ00 _
    0230: 54 4D 50 00 0A 02 0D 54 5A 30 31 20 5F 54 4D 50  // TMP....TZ01 _TMP
    0240: 00 0A 03 0D 53 44 52 41 4D 5F 68 6F 74 73 70 6F  // ....SDRAM_hotspo
    0250: 74 5F 52 54 35 42 31 00 0A 03 0D 4E 47 46 46 5F  // t_RT5B1....NGFF_
    0260: 73 6C 6F 74 5F 52 54 36 47 31 00 0A 03 0D 49 4D  // slot_RT6G1....IM
    0270: 56 50 5F 63 6F 6E 6E 5F 52 54 37 44 31 00 0A 03  // VP_conn_RT7D1...
    0280: 0D 62 6F 61 72 64 5F 68 6F 74 73 70 6F 74 33 5F  // .board_hotspot3_
    0290: 52 54 38 46 31 00 08 54 53 44 32 12 47 1C 26 00  // RT8F1..TSD2.G.&.
    02A0: 0D 43 50 55 20 43 6F 72 65 20 30 20 44 54 53 00  // .CPU Core 0 DTS.
    02B0: 00 0D 43 50 55 20 43 6F 72 65 20 31 20 44 54 53  // ..CPU Core 1 DTS
    02C0: 00 00 0D 43 50 55 20 43 6F 72 65 20 32 20 44 54  // ...CPU Core 2 DT
    02D0: 53 00 00 0D 43 50 55 20 43 6F 72 65 20 33 20 44  // S...CPU Core 3 D
    02E0: 54 53 00 00 0D 43 50 55 20 43 6F 72 65 20 50 61  // TS...CPU Core Pa
    02F0: 63 6B 61 67 65 20 44 54 53 00 0A 03 0D 41 2D 53  // ckage DTS....A-S
    0300: 6B 69 6E 20 48 6F 74 73 70 6F 74 20 55 32 31 00  // kin Hotspot U21.
    0310: 0A 03 0D 41 2D 53 6B 69 6E 20 48 6F 74 73 70 6F  // ...A-Skin Hotspo
    0320: 74 20 55 32 31 20 49 52 00 0A 03 0D 42 2D 53 6B  // t U21 IR....B-Sk
    0330: 69 6E 20 48 6F 74 73 70 6F 74 20 55 31 00 0A 03  // in Hotspot U1...
    0340: 0D 42 2D 53 6B 69 6E 20 48 6F 74 73 70 6F 74 20  // .B-Skin Hotspot 
    0350: 55 31 20 49 52 00 00 0D 43 50 55 20 50 61 63 6B  // U1 IR...CPU Pack
    0360: 61 67 65 20 54 65 6D 70 65 72 61 74 75 72 65 00  // age Temperature.
    0370: 0A 05 0D 50 43 48 20 44 54 53 20 54 65 6D 70 65  // ...PCH DTS Tempe
    0380: 72 61 74 75 72 65 20 66 72 6F 6D 20 50 43 48 00  // rature from PCH.
    0390: 00 0D 43 50 55 20 50 45 43 49 20 72 65 61 64 69  // ..CPU PECI readi
    03A0: 6E 67 00 0A 05 0D 53 41 20 44 54 53 20 54 65 6D  // ng....SA DTS Tem
    03B0: 70 65 72 61 74 75 72 65 20 66 72 6F 6D 20 50 43  // perature from PC
    03C0: 48 00 0A 02 0D 54 5A 30 30 20 5F 54 4D 50 00 0A  // H....TZ00 _TMP..
    03D0: 03 0D 53 6F 43 20 56 52 20 54 68 65 72 6D 73 69  // ..SoC VR Thermsi
    03E0: 74 6F 72 20 52 54 31 31 00 0A 03 0D 4D 65 6D 6F  // tor RT11....Memo
    03F0: 72 79 20 54 68 65 72 6D 69 73 74 6F 72 20 52 54  // ry Thermistor RT
    0400: 39 00 0A 03 0D 47 4E 53 53 20 42 6F 61 72 64 20  // 9....GNSS Board 
    0410: 41 6D 62 69 65 6E 74 20 54 68 65 72 6D 69 73 74  // Ambient Thermist
    0420: 6F 72 20 52 34 00 0A 03 0D 53 79 73 74 65 6D 20  // or R4....System 
    0430: 56 52 20 54 68 65 72 6D 69 73 74 6F 72 20 52 54  // VR Thermistor RT
    0440: 31 30 00 0A 03 0D 41 2D 53 6B 69 6E 20 53 6B 79  // 10....A-Skin Sky
    0450: 63 61 6D 20 54 68 65 72 6D 69 73 74 6F 72 20 52  // cam Thermistor R
    0460: 54 38 00 08 50 53 44 4C 12 4C 28 22 0A 0B 0D 43  // T8..PSDL.L("...C
    0470: 70 75 20 50 6F 77 65 72 20 28 6D 57 29 00 0A 0B  // pu Power (mW)...
    0480: 0D 50 6C 61 74 66 6F 72 6D 20 50 6F 77 65 72 20  // .Platform Power 
    0490: 28 6D 57 29 00 0A 0B 0D 43 70 75 20 41 76 65 72  // (mW)....Cpu Aver
    04A0: 61 67 65 20 50 6F 77 65 72 20 28 6D 57 29 00 0A  // age Power (mW)..
    04B0: 0B 0D 50 6C 61 74 66 6F 72 6D 20 41 76 65 72 61  // ..Platform Avera
    04C0: 67 65 20 50 6F 77 65 72 20 28 6D 57 29 00 0A 0C  // ge Power (mW)...
    04D0: 0D 42 61 74 74 65 72 79 20 31 20 44 65 73 69 67  // .Battery 1 Desig
    04E0: 6E 20 43 61 70 61 63 69 74 79 20 28 6D 57 68 29  // n Capacity (mWh)
    04F0: 00 0A 0C 0D 42 61 74 74 65 72 79 20 31 20 52 65  // ....Battery 1 Re
    0500: 6D 61 69 6E 69 6E 67 20 43 61 70 61 63 69 74 79  // maining Capacity
    0510: 20 28 6D 57 68 29 00 0A 0C 0D 42 61 74 74 65 72  //  (mWh)....Batter
    0520: 79 20 31 20 46 75 6C 6C 20 43 68 61 72 67 65 20  // y 1 Full Charge 
    0530: 43 61 70 61 63 69 74 79 20 28 6D 57 68 29 00 0A  // Capacity (mWh)..
    0540: 0C 0D 42 61 74 74 65 72 79 20 31 20 46 75 6C 6C  // ..Battery 1 Full
    0550: 20 52 65 73 6F 6C 75 74 69 6F 6E 20 56 6F 6C 74  //  Resolution Volt
    0560: 61 67 65 20 28 6D 56 29 00 0A 0C 0D 42 61 74 74  // age (mV)....Batt
    0570: 65 72 79 20 31 20 46 75 6C 6C 20 52 65 73 6F 6C  // ery 1 Full Resol
    0580: 75 74 69 6F 6E 20 44 69 73 63 68 61 72 67 65 20  // ution Discharge 
    0590: 43 75 72 72 65 6E 74 20 28 6D 41 29 00 0A 0C 0D  // Current (mA)....
    05A0: 42 61 74 74 65 72 79 20 31 20 46 75 6C 6C 20 52  // Battery 1 Full R
    05B0: 65 73 6F 6C 75 74 69 6F 6E 20 43 68 61 72 67 65  // esolution Charge
    05C0: 20 43 75 72 72 65 6E 74 20 28 6D 41 29 00 0A 0C  //  Current (mA)...
    05D0: 0D 42 61 74 74 65 72 79 20 32 20 52 65 6D 61 69  // .Battery 2 Remai
    05E0: 6E 69 6E 67 20 43 61 70 61 63 69 74 79 20 28 6D  // ning Capacity (m
    05F0: 57 68 29 00 0A 0C 0D 42 61 74 74 65 72 79 20 32  // Wh)....Battery 2
    0600: 20 46 75 6C 6C 20 43 68 61 72 67 65 20 43 61 70  //  Full Charge Cap
    0610: 61 63 69 74 79 20 28 6D 57 68 29 00 0A 0C 0D 42  // acity (mWh)....B
    0620: 61 74 74 65 72 79 20 32 20 46 75 6C 6C 20 52 65  // attery 2 Full Re
    0630: 73 6F 6C 75 74 69 6F 6E 20 56 6F 6C 74 61 67 65  // solution Voltage
    0640: 20 28 6D 56 29 00 0A 0C 0D 42 61 74 74 65 72 79  //  (mV)....Battery
    0650: 20 32 20 46 75 6C 6C 20 52 65 73 6F 6C 75 74 69  //  2 Full Resoluti
    0660: 6F 6E 20 44 69 73 63 68 61 72 67 65 20 43 75 72  // on Discharge Cur
    0670: 72 65 6E 74 20 28 6D 41 29 00 0A 0C 0D 42 61 74  // rent (mA)....Bat
    0680: 74 65 72 79 20 32 20 46 75 6C 6C 20 52 65 73 6F  // tery 2 Full Reso
    0690: 6C 75 74 69 6F 6E 20 43 68 61 72 67 65 20 43 75  // lution Charge Cu
    06A0: 72 72 65 6E 74 20 28 6D 41 29 00 0A 0C 0D 42 61  // rrent (mA)....Ba
    06B0: 74 74 65 72 79 20 50 61 63 6B 20 31 20 6D 61 78  // ttery Pack 1 max
    06C0: 69 6D 75 6D 20 70 6F 77 65 72 20 28 6D 57 29 00  // imum power (mW).
    06D0: 0A 0C 0D 42 61 74 74 65 72 79 20 50 61 63 6B 20  // ...Battery Pack 
    06E0: 32 20 6D 61 78 69 6D 75 6D 20 70 6F 77 65 72 20  // 2 maximum power 
    06F0: 28 6D 57 29 00 14 18 4F 53 44 4C 00 A0 0C 93 54  // (mW)...OSDL....T
    0700: 53 44 42 01 A4 4F 53 44 32 A4 4F 53 44 31 08 4F  // SDB..OSD2.OSD1.O
    0710: 53 44 31 12 43 0A 15 0A 04 0D 43 50 55 20 46 61  // SD1.C.....CPU Fa
    0720: 6E 20 44 75 74 79 20 43 79 63 6C 65 00 0D 52 41  // n Duty Cycle..RA
    0730: 57 00 0A 04 0D 43 50 55 20 46 61 6E 20 23 31 20  // W....CPU Fan #1 
    0740: 53 70 65 65 64 00 0D 52 50 4D 00 0A 03 0D 53 6B  // Speed..RPM....Sk
    0750: 69 6E 20 54 65 6D 70 20 30 00 0D 52 41 57 00 0A  // in Temp 0..RAW..
    0760: 03 0D 54 68 65 72 6D 69 73 74 6F 72 20 31 20 00  // ..Thermistor 1 .
    0770: 0D 52 41 57 00 0A 03 0D 54 68 65 72 6D 69 73 74  // .RAW....Thermist
    0780: 6F 72 20 32 20 00 0D 52 41 57 00 0A 03 0D 54 68  // or 2 ..RAW....Th
    0790: 65 72 6D 69 73 74 6F 72 20 33 20 00 0D 52 41 57  // ermistor 3 ..RAW
    07A0: 00 0A 03 0D 54 68 65 72 6D 69 73 74 6F 72 20 34  // ....Thermistor 4
    07B0: 20 00 0D 52 41 57 00 08 4F 53 44 32 12 49 0B 18  //  ..RAW..OSD2.I..
    07C0: 0A 04 0D 43 50 55 20 46 61 6E 20 44 75 74 79 20  // ...CPU Fan Duty 
    07D0: 43 79 63 6C 65 00 0D 52 41 57 00 0A 04 0D 43 50  // Cycle..RAW....CP
    07E0: 55 20 46 61 6E 20 23 31 20 53 70 65 65 64 00 0D  // U Fan #1 Speed..
    07F0: 52 50 4D 00 0A 03 0D 53 6B 69 6E 20 54 65 6D 70  // RPM....Skin Temp
    0800: 20 30 00 0D 52 41 57 00 0A 03 0D 54 68 65 72 6D  //  0..RAW....Therm
    0810: 69 73 74 6F 72 20 31 20 00 0D 52 41 57 00 0A 03  // istor 1 ..RAW...
    0820: 0D 54 68 65 72 6D 69 73 74 6F 72 20 32 20 00 0D  // .Thermistor 2 ..
    0830: 52 41 57 00 0A 03 0D 54 68 65 72 6D 69 73 74 6F  // RAW....Thermisto
    0840: 72 20 33 20 00 0D 52 41 57 00 0A 03 0D 54 68 65  // r 3 ..RAW....The
    0850: 72 6D 69 73 74 6F 72 20 34 20 00 0D 52 41 57 00  // rmistor 4 ..RAW.
    0860: 0A 03 0D 54 68 65 72 6D 69 73 74 6F 72 20 35 20  // ...Thermistor 5 
    0870: 00 0D 52 41 57 00 14 43 12 58 4C 41 54 09 A0 0B  // ..RAW..C.XLAT...
    0880: 92 95 68 0B AC 03 A4 0B 47 0A A0 0B 92 95 68 0B  // ..h.....G.....h.
    0890: 94 03 A4 0B 79 0A A0 0B 92 95 68 0B 74 03 A4 0B  // ....y.....h.t...
    08A0: AB 0A A0 0B 92 95 68 0B 54 03 A4 0B DD 0A A0 0B  // ......h.T.......
    08B0: 92 95 68 0B 2C 03 A4 0B 0F 0B A0 0B 92 95 68 0B  // ..h.,.........h.
    08C0: 00 03 A4 0B 41 0B A0 0B 92 95 68 0B D0 02 A4 0B  // ....A.....h.....
    08D0: 73 0B A0 0B 92 95 68 0B 9C 02 A4 0B A5 0B A0 0B  // s.....h.........
    08E0: 92 95 68 0B 64 02 A4 0B D7 0B A0 0B 92 95 68 0B  // ..h.d.........h.
    08F0: 30 02 A4 0B 09 0C A0 0B 92 95 68 0B FC 01 A4 0B  // 0.........h.....
    0900: 3B 0C A0 0B 92 95 68 0B C8 01 A4 0B 6D 0C A0 0B  // ;.....h.....m...
    0910: 92 95 68 0B 94 01 A4 0B 9F 0C A0 0B 92 95 68 0B  // ..h...........h.
    0920: 64 01 A4 0B D1 0C A0 0B 92 95 68 0B 38 01 A4 0B  // d.........h.8...
    0930: 03 0D A0 0B 92 95 68 0B 14 01 A4 0B 35 0D A0 0A  // ......h.....5...
    0940: 92 95 68 0A F0 A4 0B 67 0D A0 0A 92 95 68 0A D4  // ..h....g.....h..
    0950: A4 0B 99 0D A0 0A 92 95 68 0A B8 A4 0B CB 0D A0  // ........h.......
    0960: 0A 92 95 68 0A A0 A4 0B FD 0D A0 0A 92 95 68 0A  // ...h..........h.
    0970: 8C A4 0B 2F 0E A0 0A 92 95 68 0A 7C A4 0B 61 0E  // .../.....h.|..a.
    0980: A0 0A 92 95 68 0A 68 A4 0B 93 0E A0 0A 92 95 68  // ....h.h........h
    0990: 0A 58 A4 0B C5 0E A4 0B C5 0E 14 41 12 58 53 44  // .X.........A.XSD
    09A0: 53 09 A0 0B 92 95 68 0B F0 02 A4 0B 47 0A A0 0B  // S.....h.....G...
    09B0: 92 95 68 0B DC 02 A4 0B 79 0A A0 0B 92 95 68 0B  // ..h.....y.....h.
    09C0: C4 02 A4 0B AB 0A A0 0B 92 95 68 0B A8 02 A4 0B  // ..........h.....
    09D0: DD 0A A0 0B 92 95 68 0B 88 02 A4 0B 0F 0B A0 0B  // ......h.........
    09E0: 92 95 68 0B 64 02 A4 0B 41 0B A0 0B 92 95 68 0B  // ..h.d...A.....h.
    09F0: 40 02 A4 0B 73 0B A0 0B 92 95 68 0B 14 02 A4 0B  // @...s.....h.....
    0A00: A5 0B A0 0B 92 95 68 0B EC 01 A4 0B D7 0B A0 0B  // ......h.........
    0A10: 92 95 68 0B C0 01 A4 0B 09 0C A0 0B 92 95 68 0B  // ..h...........h.
    0A20: 94 01 A4 0B 3B 0C A0 0B 92 95 68 0B 6C 01 A4 0B  // ....;.....h.l...
    0A30: 6D 0C A0 0B 92 95 68 0B 44 01 A4 0B 9F 0C A0 0B  // m.....h.D.......
    0A40: 92 95 68 0B 1C 01 A4 0B D1 0C A0 0A 92 95 68 0A  // ..h...........h.
    0A50: FC A4 0B 03 0D A0 0A 92 95 68 0A DC A4 0B 35 0D  // .........h....5.
    0A60: A0 0A 92 95 68 0A C0 A4 0B 67 0D A0 0A 92 95 68  // ....h....g.....h
    0A70: 0A A8 A4 0B 99 0D A0 0A 92 95 68 0A 94 A4 0B CB  // ..........h.....
    0A80: 0D A0 0A 92 95 68 0A 80 A4 0B FD 0D A0 0A 92 95  // .....h..........
    0A90: 68 0A 70 A4 0B 2F 0E A0 0A 92 95 68 0A 60 A4 0B  // h.p../.....h.`..
    0AA0: 61 0E A0 0A 92 95 68 0A 54 A4 0B 93 0E A0 0A 92  // a.....h.T.......
    0AB0: 95 68 0A 48 A4 0B C5 0E A4 0B C5 0E 14 4B 24 54  // .h.H.........K$T
    0AC0: 53 44 44 08 A0 47 11 93 54 53 44 42 01 08 54 4D  // SDD..G..TSDB..TM
    0AD0: 50 58 12 42 06 13 0C 00 00 00 80 0C 00 00 00 80  // PX.B............
    0AE0: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    0AF0: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00  // ................
    0B00: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    0B10: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    0B20: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    0B30: 0C 00 00 00 80 70 72 77 5C 2E 5F 50 52 5F 44 54  // .....prw\._PR_DT
    0B40: 53 31 0A 0A 00 0B AC 0A 00 88 54 4D 50 58 00 00  // S1........TMPX..
    0B50: 70 72 77 5C 2E 5F 50 52 5F 44 54 53 32 0A 0A 00  // prw\._PR_DTS2...
    0B60: 0B AC 0A 00 88 54 4D 50 58 01 00 70 72 77 5C 2E  // .....TMPX..prw\.
    0B70: 5F 50 52 5F 44 54 53 33 0A 0A 00 0B AC 0A 00 88  // _PR_DTS3........
    0B80: 54 4D 50 58 0A 02 00 70 72 77 5C 2E 5F 50 52 5F  // TMPX...prw\._PR_
    0B90: 44 54 53 34 0A 0A 00 0B AC 0A 00 88 54 4D 50 58  // DTS4........TMPX
    0BA0: 0A 03 00 70 72 77 5C 2E 5F 50 52 5F 50 44 54 53  // ...prw\._PR_PDTS
    0BB0: 0A 0A 00 0B AC 0A 00 88 54 4D 50 58 0A 04 00 70  // ........TMPX...p
    0BC0: 5C 2F 03 5F 54 5A 5F 54 5A 30 30 5F 54 4D 50 88  // \/._TZ_TZ00_TMP.
    0BD0: 54 4D 50 58 0A 0D 00 A4 54 4D 50 58 08 54 4D 50  // TMPX....TMPX.TMP
    0BE0: 56 12 47 06 14 0C 00 00 00 80 0C 00 00 00 80 0C  // V.G.............
    0BF0: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00  // ................
    0C00: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    0C10: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    0C20: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    0C30: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    0C40: 00 00 00 80 0C 00 00 00 80 70 72 77 5C 2E 5F 50  // .........prw\._P
    0C50: 52 5F 44 54 53 31 0A 0A 00 0B AC 0A 00 88 54 4D  // R_DTS1........TM
    0C60: 50 56 00 00 70 72 77 5C 2E 5F 50 52 5F 44 54 53  // PV..prw\._PR_DTS
    0C70: 32 0A 0A 00 0B AC 0A 00 88 54 4D 50 56 01 00 70  // 2........TMPV..p
    0C80: 72 77 5C 2E 5F 50 52 5F 44 54 53 33 0A 0A 00 0B  // rw\._PR_DTS3....
    0C90: AC 0A 00 88 54 4D 50 56 0A 02 00 70 72 77 5C 2E  // ....TMPV...prw\.
    0CA0: 5F 50 52 5F 44 54 53 34 0A 0A 00 0B AC 0A 00 88  // _PR_DTS4........
    0CB0: 54 4D 50 56 0A 03 00 70 72 77 5C 2E 5F 50 52 5F  // TMPV...prw\._PR_
    0CC0: 50 44 54 53 0A 0A 00 0B AC 0A 00 88 54 4D 50 56  // PDTS........TMPV
    0CD0: 0A 04 00 70 5C 2F 03 5F 54 5A 5F 54 5A 30 30 5F  // ...p\/._TZ_TZ00_
    0CE0: 54 4D 50 88 54 4D 50 56 0A 0E 00 70 5C 2F 03 5F  // TMP.TMPV...p\/._
    0CF0: 54 5A 5F 54 5A 30 31 5F 54 4D 50 88 54 4D 50 56  // TZ_TZ01_TMP.TMPV
    0D00: 0A 0F 00 A4 54 4D 50 56 14 4A 06 50 53 44 44 08  // ....TMPV.J.PSDD.
    0D10: 08 50 57 52 56 12 48 05 11 0C 00 00 00 80 0C 00  // .PWRV.H.........
    0D20: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    0D30: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    0D40: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    0D50: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    0D60: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 A4 50  // ...............P
    0D70: 57 52 56 14 0A 4F 53 44 44 08 A4 12 02 00 14 09  // WRV..OSDD.......
    0D80: 53 44 53 50 00 A4 0A 0A 08 50 41 44 41 12 2D 0A  // SDSP.....PADA.-.
    0D90: 01 0C FF FF FF FF 0C FF FF FF FF 0A 1A 0C FF FF  // ................
    0DA0: FF FF 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF  // ................
    0DB0: FF 0C FF FF FF FF 0C FF FF FF FF 08 50 41 44 44  // ............PADD
    0DC0: 12 18 0A 0A 02 0B A4 06 0B A0 06 0A 1A 0A 62 0A  // ..............b.
    0DD0: 63 0A 60 0A 61 0A 65 0A 64 14 16 50 41 44 54 00  // c.`.a.e.d..PADT.
    0DE0: A0 0A 50 41 4D 54 A4 50 41 44 41 A4 50 41 44 44  // ..PAMT.PADA.PADD
    0DF0: 14 14 52 50 4D 44 08 08 4D 54 4D 50 11 03 0A 1A  // ..RPMD..MTMP....
    0E00: A4 4D 54 4D 50 14 16 57 50 4D 44 01 A0 0D 92 93  // .MTMP..WPMD.....
    0E10: 87 68 0A 1A A4 0C FF FF FF FF A4 00 14 08 49 53  // .h............IS
    0E20: 50 43 00 A4 00 14 08 45 4E 50 43 00 A4 00 14 06  // PC.....ENPC.....
    0E30: 52 50 43 53 00 14 0B 52 50 45 43 00 70 00 60 A4  // RPCS...RPEC.p.`.
    0E40: 60                                               // `
 */
