/*
	Oring Loot Configuration
	
	Last updated:
	
*/

private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

//To do: Ensure pistols and rifles are assigned to correct loot table

DZAI_BanditTypes = DZAI_BanditTypes + ["BW1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","SurvivorW2_DZ","Survivor2_DZ","Sniper1_DZ","Soldier1_DZ","Camo1_DZ","BanditW1_DZ","Bandit1_DZ","SurvivorW2_DZ"];
DZAI_Pistols1 = DZAI_Pistols1 + ["KPFS_P226","KPFS_PM63","KPFS_P88"];
//DZAI_Rifles0 = DZAI_Rifles0 + [];
//DZAI_Rifles1 = DZAI_Rifles1 + [];
DZAI_Rifles2 = DZAI_Rifles2 - ["M107_DZ"];
DZAI_Rifles3 = DZAI_Rifles3 - ["M107_DZ"] + ["KPFS_KarS","KPFS_MG1","KPFS_MP5A3SD"];
DZAI_SkinLoot = DZAI_SkinLoot + ["Skin_police1_DZ","Skin_police2_DZ","Skin_civilian2_DZ","Skin_civilian3_DZ","Skin_civilian4_DZ","Skin_civilian5_DZ"];

diag_log "Oring loot tables loaded.";

for "_i" from 0 to ((count DZAI_Pistols0) - 1) do {DZAI_Rifles0 set [(count DZAI_Rifles0),(DZAI_Pistols0 select _i)];};
