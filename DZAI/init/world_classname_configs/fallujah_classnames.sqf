/*
	Fallujah Loot Configuration
	
	Last updated:
	
*/

private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

diag_log "Fallujah loot tables loaded.";
for "_i" from 0 to ((count DZAI_Pistols0) - 1) do {DZAI_Rifles0 set [(count DZAI_Rifles0),(DZAI_Pistols0 select _i)];};
