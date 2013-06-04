/*
	Takistan Loot Configuration
	
	Last updated:
	
*/

private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

switch (DZAI_modName) do {
	case "epoch":
	{
		#include "mod_configs\epoch_config.sqf"
	};
	case default {
		diag_log "Takistan loot tables loaded.";
	};
};

for "_i" from 0 to ((count DZAI_PistolsDefault0) - 1) do {DZAI_RiflesDefault0 set [(count DZAI_RiflesDefault0),(DZAI_PistolsDefault0 select _i)];};
