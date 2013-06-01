//Taviana Loot Configuration 0.08
private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

switch (DZAI_modName) do {
	case "epoch":
	{
		#include "mod_configs\epoch_config.sqf"
	};
	default {
		diag_log "DayZ Taviana (safe mode) config selected.";
		if (!DZAI_safeMode) then {DZAI_safeMode = true;};	//Always load Taviana in "safe mode". Temporary fix for crashing issues.
	};
};

DZAI_RiflesDefault0 = DZAI_RiflesDefault0 + DZAI_PistolsDefault0;
