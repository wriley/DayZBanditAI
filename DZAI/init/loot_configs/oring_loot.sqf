/*
	Oring Loot Configuration
	
	Last updated:
	
*/

private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

//To do: Ensure pistols and rifles are assigned to correct loot table

DZAI_BanditTypesDefault = DZAI_BanditTypesDefault + ["BW1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","SurvivorW2_DZ","Survivor2_DZ","Sniper1_DZ","Soldier1_DZ","Camo1_DZ","BanditW1_DZ","Bandit1_DZ","SurvivorW2_DZ"];
DZAI_PistolsDefault1 = DZAI_PistolsDefault1 + ["KPFS_P226","KPFS_PM63","KPFS_P88"];
//DZAI_RiflesDefault0 = DZAI_RiflesDefault0 + [];
//DZAI_RiflesDefault1 = DZAI_RiflesDefault1 + [];
DZAI_RiflesDefault2 = DZAI_RiflesDefault2 - ["M107_DZ"];
DZAI_RiflesDefault3 = DZAI_RiflesDefault3 - ["M107_DZ"] + ["KPFS_KarS","KPFS_MG1","KPFS_MP5A3SD"];
DZAI_DefaultSkinLoot = DZAI_DefaultSkinLoot + ["Skin_police1_DZ","Skin_police2_DZ","Skin_civilian2_DZ","Skin_civilian3_DZ","Skin_civilian4_DZ","Skin_civilian5_DZ"];

diag_log "Oring loot tables loaded.";

for "_i" from 0 to ((count DZAI_PistolsDefault0) - 1) do {DZAI_RiflesDefault0 set [(count DZAI_RiflesDefault0),(DZAI_PistolsDefault0 select _i)];};
