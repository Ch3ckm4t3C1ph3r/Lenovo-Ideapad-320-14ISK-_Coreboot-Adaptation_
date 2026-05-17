# Coreboot Adaptation (Lenovo Ideapad 320-14ISK NM-B241 -> Board) :rabbit2:
[![License: GPL v2](https://img.shields.io/badge/License-GPLv2-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) 
![GitHub branch status](https://img.shields.io/github/checks-status/Ch3ckm4t3C1ph3r/Lenovo-Ideapad-320-14ISK-_Coreboot-Adaptation_/main)
![Build Status](https://img.shields.io/badge/build-in_progress-yellow)
<br>
This repository holds the information that we find from the reverese enginering process for the notebook in the repository title and the code you can compile to test it or modify it.  Even so you will find pre-compiled files that you can use to now flash to the chip.

> [!NOTE]
> This adaptation is based on the Thinkpad Skylake t470s computer.

Also you find a file called board_info.txt that saves the general information of the board for reference.
You can find more information, about the datasheets, schematic, boardview (i recommend to use FlexBV5 to open the TVW file) and hardware info files, in the open-source provider cloud file repository in this link: [Cloud File Space](https://eli.it.tabdigital.cloud/s/ci6C8onocRfkkLb) 

> You cand find the lastest updated in the publications of my mastodon social site.

## Specifications
### Target Chip
The chip that this specific board of the adaptation has are the W25Q64JVSIQ (you should select W25Q64JV-.Q if you want to use ```flashrom``` command). You can find this information and more in the board_info.txt file.
This chip support the <code>PREW</code> permissions and the SPI protocol.

### Board Processor
Core (Inside) i5-6200U Skylake Arch

### OS Used
Linux Mint.
<br>However, you can use any Linux-based operating system (every distro). :penguin:

### Flash Program
```bash
flashrom
```
> [!WARNING]
> You need to verify that the firm of the contents of your chip is the same as one of the BIN files I give you. By, first, making copies of the contents of your BIOS-UEFI chip with <code>flashrom -p ch341a_spi -c W25Q64JV-.Q -r</code>

### Flash Tool
CH341A Pro Kit

### Special Ports
You can find more information of UART, JTAG and LPC ports in [this document](HARDWARE.md).

## BIOS-UEFI BIN Files
You find a directory that save the flat binary files that are in the BIOS-UEFI (has the both boot modes; can emulate the real-mode legacy boot by enabled the proper option in UI menu) chip.

The HAP enabled bit BIN files has the most of the content of the Intel ME removed and the HAP bit set by me_cleaner.py script.


> I recommend you to use UEFI Tool to view the contents of the BIN files chip. To see the structure of regions.

## Reverse Engineering :symbols: :microscope: :shipit:
We reverse engineering the EC (Embeded Controller) chip by getting the expected commands in the comunications between the EC chip and the processor (host) chip through LPC protocol.

> The tool we used are the logical analyzer Lakeview Research Saleae Logic of 8 channels.

**[Still in Process]**

<!-- TO DO: Give all detailed information in the directory when the Reversing are completed. -->

## Compilation :hammer_and_wrench:

> [!CAUTION]
> Please don't try this compilation instructions because this adaptation is still in process.
> If you try it probably Coreboot doesn't work because the propetary, publicly missing information, of the board
> change the hex command values that board expects to, for example, communicate correctly to the EC chip and CORRECTLY POWER UP your computer! 

If you want to modify the code to configure the boot process as you want. Then this section provide the steps to correctly compile the C code for you to flash in the chip.

**1.** Clone the Coreboot repository[^2]
```bash
git clone https://review.coreboot.org/coreboot.git
```

**2.** Change the current directory to <code>coreboot/src/mainboard/lenovo</code>
```bash
cd coreboot/src/mainboard/lenovo
```

**3.** Make the proper directory
```bash
mkdir skl_ideapad320-14isk
```

**4.** Change to the created directory
```
cd skl_ideapad320-14isk
```

**5.** Clone this repository
```bash
git clone https://github.com/Ch3ckm4t3C1ph3r/Lenovo-Ideapad-320-14ISK-_Coreboot-Adaptation_.git
```

**6.** Change to the Coreboot root directory[^1]
```bash
cd ../../../../
```

**7.** Compile the menu configuration with <code>make</code> to configure the envorinment to compile the firmware (selecting the general base code of coreboot with specific source code for manage the board; select the code behind <code>src/soc/intel/skylake</code> and <code>behid src/mainboard/lenovo/skl_ideapad320-14isk</code>).

> [!NOTE]
> If you want to disable the TPM initialization and override the generation of TPM2 ACPI table you need to deselect the TPM Option. As appears in the following image.

**[Image of the deselected TPM compilation option in menuconfig of coreboot]**

```bash
make menuconfig
```

**8.** Compile the firmware (the CBFS; with blobs included) with <code>make</code>
```bash
make
```

<!-- TO DO: Give a step-by-step process of compilation of Coreboot targeting the apropiate file for the board in title. -->
## Boot Process Architrecture
Here is a diagram of the boot process using the GRUB as the primary payload an then, either seabios or tianocore, for ilustration of the default CBFS maked to boot steps. In this manner you can select boot in legacy mode or the native mode (UEFI). Saving the capability of select the boot mode of the original propietary BIOS firmware. 

> [!NOTE]
> Unfortunately, the CBFS needs not only have the Coreboot code because the Intel ME blob is necessary to turn on the RAM memory, not public data available to doing this, to use it in RAM stage.



```mermaid
---
config:
  theme: 'base'
  themeVariables:
    edgeLabelBackground: '#B3ADAD'
---
flowchart LR;
    %% Definition of style (and class of style) of each element by id (or by class name)
    style cbfs fill:#f7f7f7,stroke:#000000,stroke-width:1px;
    classDef sbgStyle fill:#F7BB99,stroke:#8F6C59,stroke-width:1px
    classDef nodeStyle fill:#FF5D3B,stroke:#FF3008,stroke-width:1px
    classDef edgeStyle fill:#000000,stroke:#000000,stroke-width:1px
    
    subgraph cbfs[CBFS]
        direction LR

        %% Not publicly documented boot process
        subgraph sbg1[First Initialization Process]
          n1[Blobs]
        end

        n1[Blobs] e1@--> n2[Coreboot]

        subgraph sbg2[Coreboot Process]
          n2[Coreboot]
        end
    
        n2[Coreboot] e2@--> p1{GRUB}
    
        subgraph sbg3[First Payload]
          p1{GRUB}
        end
        
        p1{GRUB} e3@---->|The user selects the second payload from the menu|UNION((*)) e4@--> p2_1[SeaBIOS] & p2_2[TianoCore]
    
        subgraph sbg4[Second Payload]
          p2_1[SeaBIOS] & p2_2[TianoCore]
        end
    end

    %% Defining the members of each class
    class sbg1,sbg2,sbg3,sbg4 sbgStyle
    class n1,n2,p1,p2_1,p2_2,UNION nodeStyle
    class e1,e2,e3 edgeStyle
```

## Configure the boot process to enable the UART messages :toolbox:
If you want to configure Coreboot to enable the UART protocol to see real-time events of the board these are the requirements and steps of doing so.
<br><br>Requirements:
* Magnetic wires of 0.1mm.
* Welder of intechangable tips (preferable) with a fine tip (needed).
* Debugger probe based on FT2232H chips (FT2232HL).
> [!NOTE]
> You can find the config and the C files for use with OpenOCD, also.

**[Here you will find the instructions to enable the UART protocol]**

<!-- TO DO: Give a step-by-step instructions to configure the coreboot program to enable UART protocol. -->

<!-- TO DO: Give problems finded when test the program. -->

## References
[^1]: [Coreboot Documentation](https://doc.coreboot.org/index.html).
[^2]: [Coreboot for Developers](https://www.coreboot.org/developers.html).
