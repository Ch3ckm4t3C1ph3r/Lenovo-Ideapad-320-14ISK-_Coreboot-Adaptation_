# Hardware Mapping & Pinouts
Here is a section where I give you the information of the hardware of this board that 
I discover by using the schematic, boardview , the physical motherboard and the datashets of the components.

**[Still in changing; No complete information]**

## JTAG Ports
> [!NOTE]
> This ports helps you to control the procesor!

This section provides the specification of the JTAG ports 
and the location to prepare the debug port to connect it to FT2232HL debug probe.

| JTAG Port | Function | Voltage Specification |
|:---------:|:--------:|:---------------------:|
|   JTAGX   |          |                       |

### XDBG Ports
Also, you can find the XDBG ports in the boardview of thi board's family.

This ports, in summary, give you special debug functions that old motherboards doesn't have.

## UART Ports
> [!TIP]
> You can use this ports to debug software that run directly to the hardware.
> So you can use it to debug Coreboot errors, or, also, kernels errors of some OS.

This section provides the informations of the UART ports. This ports gives you the actual events that ocurrs in your system hardware, so if ocurrs an error you noticed about it and know what error ocurr.

| UART Port |         Function          | Voltage Specification |
|:---------:|:-------------------------:|:---------------------:|
|  UART_TX  | Output of serial console  |                       |

## LPC Ports
> [!IMPORTANT]
> This ports give you the capability of do lower-level tasks that are esential to manage your computer.

This section provides the information of the LPC ports.

| LPC Port | Function | Voltage Specification |
|:---------:|:--------:|:--------------------:|
|  LPC_CLK  |          |                      |
