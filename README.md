# Lenovo-Ideapad-320-14ISK-_Coreboot-Adaptation_
This repository holds the information that we find from the reverese enginering process for the notebook in the repository title and the code you can compile to test it or modify it.  Even so you will find pre-compiled files that you can use to now flash to the chip.

Also you find a file called board_info.txt that saves the general information of the board for reference.
You can find more information, about the datasheets, schematic, boardview (i recommend to use FlexBV5 to open the TVW file) and hardware info files, in the open-source provider cloud file repository in this link: ... 

# Target Chip
The chip that this specific board of the adaptation has are the W25Q64JVSIQ. You can find this information and more in the board_info.txt file.

# OS Used
Linux based systems (everyone).

# Flash Program
<code>flashrom</code> (linux command).

# Flash Tool
CH341A Pro

I recommend you to use UEFI Tool to view the contents of the chip BIN files. The structure of regions.
