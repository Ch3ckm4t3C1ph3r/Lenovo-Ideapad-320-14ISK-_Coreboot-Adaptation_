# Lenovo-Ideapad-320-14ISK-_Coreboot-Adaptation_
This repository holds the information that we find from the reverese enginering process for the notebook in the repository title and the code you can compile to test it or modify it.  Even so you will find pre-compiled files that you can use to now flash to the chip.

Also you find a file called board_info.txt that saves the general information of the board for reference.
You can find more information, about the datasheets, schematic, boardview (i recommend to use FlexBV5 to open the TVW file) and hardware info files, in the open-source provider cloud file repository in this link: ... 

You cand find the lastest updated in the publications of my mastodon social site.

# Target Chip
The chip that this specific board of the adaptation has are the W25Q64JVSIQ. You can find this information and more in the board_info.txt file.

# OS Used
Linux based systems (everyone).

# Flash Program
<code>flashrom</code> (linux command).

# Flash Tool
CH341A Pro Kit

# BIOS-UEFI BIN Files
You find a directory that save the flat binary files that are in the BIOS-UEFI (has the both boot modes; can emulate the realmode legacy boot by enabled the proper option in UI menu) chip.

The HAP enabled bit BIN files has the great content of the Intel ME removed and the HAP bit set by me_cleaner.py script.

I recommend you to use UEFI Tool to view the contents of the chip BIN files. The structure of regions.

# Reverse Engineering
We reverse engineering the EC (Embeded Controller) chip by getting the expected commands in the comunications between the EC chip and the processor (host) chip.

The tool we used are the logical analyzer of 8 channels.
