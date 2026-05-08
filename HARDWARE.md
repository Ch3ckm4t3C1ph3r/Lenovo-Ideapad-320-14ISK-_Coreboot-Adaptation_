# Hardware Mapping & Pinouts
Here is a section where I give you the information of the hardware of this board that 
I discover by using the schematic, boardview , the physical motherboard and the datashets of the components.

**[Still in changing; No complete information]**

## JTAG Ports
> [!NOTE]
> This ports helps you to control the procesor!

This section provides the specification of the JTAG ports 
and the location to prepare the debug port to connect it to FT2232HL debug probe.

|     JTAG Port     |           Function           | Voltage Specification |
|:-----------------:|:-----------------------------|:---------------------:|
|       JTAGX       |                              |                       |
|    PCH_JTAG_TCK   |  Current Clock Signal        |                       |
|    PCH_JTAG_TDI   |  Command Input               |                       |
|    PCH_JTAG_TDO   |  Command Output (Status)     |                       |
|    PCH_JTAG_TMS   |                              |                       |
|   PCH_JTAG_TRST#  |  Processor reset step-0      |                       |

### XDBG (eXtended DeBuG) Ports
Also, you can find the XDBG ports in the boardview of thi board's family.

This ports, in summary, give you special debug functions that old motherboards doesn't have.

## UART Ports
> [!TIP]
> You can use this ports to debug software that run directly to the hardware.
> <br>So you can use it to debug Coreboot errors, or, also, kernels errors of some OS.

This section provides the informations of the UART ports. 
<br>This ports gives you the actual events that ocurrs in your system hardware, so if ocurrs an error you noticed about it and know what error ocurr.

|    UART Port    |         Function          | Voltage Specification |
|:---------------:|:--------------------------|:---------------------:|
|  UART_TX_DEBUG  | Output of serial console  |         +3VS          |
|  UART_RX_DEBUG  | Input of serial console   |         +3VS          |

## LPC Ports
> [!CAUTION]
> This ports give you the capability of do lower-level tasks that are esential to manage your computer.
> <br> Then not attempt to change the values that the EC chips expects to recieve to make this tasks.
> <br> Otherwise your computer no longer works or not work properly.

This section provides the information of the LPC ports.

| LPC Port | Function | Voltage Specification |
|:---------:|:--------:|:--------------------:|
|  LPC_CLK  |          |                      |

[Back to main documentation](README.md)
