/*
	Taviana Loot Configuration
	
	Last updated:
	
*/

private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

switch (DZAI_modName) do {
	case "epoch":
	{
		#include "mod_configs\epoch_classnames.sqf"
	};
	default {
		diag_log "DayZ Taviana config selected.";
	};
};

for "_i" from 0 to ((count DZAI_Pistols0) - 1) do {DZAI_Rifles0 set [(count DZAI_Rifles0),(DZAI_Pistols0 select _i)];};
