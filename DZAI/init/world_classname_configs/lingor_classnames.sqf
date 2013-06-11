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
		DZAI_Pistols3 set [count DZAI_Pistols3,_newItems];
		_newItems = ["RPK_74"];
		DZAI_Rifles1 set [count DZAI_Rifles1,_newItems];
		_newItems = ["MG36"];
		DZAI_Rifles2 set [count DZAI_Rifles2,_newItems];
		_newItems = ["BAF_L85A2_UGL_Holo"];
		DZAI_Rifles3 set [count DZAI_Rifles3,_newItems];
		diag_log "DayZ Lingor (Skaronator) loot tables loaded.";
	};
	case "epoch":
	{
		#include "mod_configs\epoch_classnames.sqf"
	};
	case default
	{
		diag_log "DayZ Lingor config selected.";
	};
};

for "_i" from 0 to ((count DZAI_Pistols0) - 1) do {DZAI_Rifles0 set [(count DZAI_Rifles0),(DZAI_Pistols0 select _i)];};
