#include <spd_bin.h>
#include <console/console.h>
#include <soc/romstage.h>

void mainboard_memory_init_params(FSPM_UPD *mupd)
{
	FSP_M_CONFIG *mem_cfg = &mupd->FspmConfig;
	struct spd_block blk = {
		.addr_map = { 0x4e, 0x52 }
	};


	mem_cfg->DqPinsInterleaved = true;
	mem_cfg->CaVrefConfig = 2;
	mem_cfg->MemorySpdDataLen = CONFIG_DIMM_SPD_SIZE;

	/* Scan standard SMBus address to dectect RAM,
	 * 0x50 Channel A Slot 1, soldier
	 * 0x52 Channel B Slot 2, modular
	 */

	get_spd_smbus(&blk);
	dump_spd_info(&blk);

	mem_cfg->MemorySpdPtr00 = (uintptr_t)blk.spd_array[0];
	mem_cfg->MemorySpdPtr10 = (uintptr_t)blk.spd_array[1];
}
