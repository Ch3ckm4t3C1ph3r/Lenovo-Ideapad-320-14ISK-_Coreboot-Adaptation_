## SPDX-License-Identifier: GPL-2.0-only

bootblock-y += bootblock.c

romstage-y += memory_init_params.c

ramstage-y += gpio.c
ramstage-y += ramstage.c
ramstage-$(CONFIG_MAINBOARD_USE_LIBGFXINIT) += gma-mainboard.ads
