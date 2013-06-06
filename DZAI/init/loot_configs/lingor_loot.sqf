/*
	Lingor Loot Configuration
	
	Last updated:
	
*/

private ["_modname","_newItems"];
_modname = toLower format ["%1",DZAI_modName];

switch (DZAI_modName) do {
	case "skarolingor":
	{
		_newItems = ["MakarovSD"];
		DZAI_PistolsDefault3 set [count DZAI_PistolsDefault3,_newItems];
		_newItems = ["RPK_74"];
		DZAI_RiflesDefault1 set [count DZAI_RiflesDefault1,_newItems];
		_newItems = ["MG36"];
		DZAI_RiflesDefault2 set [count DZAI_RiflesDefault2,_newItems];
		_newItems = ["BAF_L85A2_UGL_Holo"];
		DZAI_RiflesDefault3 set [count DZAI_RiflesDefault3,_newItems];
		diag_log "DayZ Lingor (Skaronator) loot tables loaded.";
	};
	case "epoch":
	{
		#include "mod_configs\epoch_config.sqf"
	};
	case default
	{
		diag_log "DayZ Lingor config selected.";
	};
};

for "_i" from 0 to ((count DZAI_PistolsDefault0) - 1) do {DZAI_RiflesDefault0 set [(count DZAI_RiflesDefault0),(DZAI_PistolsDefault0 select _i)];};
