//Takistan Loot Configuration 0.08
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

DZAI_RiflesDefault0 = DZAI_RiflesDefault0 + DZAI_PistolsDefault0;
