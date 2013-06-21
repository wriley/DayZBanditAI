/*
	Oring Classname Configuration
	
	Last updated:
	
*/

private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

DZAI_BanditTypes = DZAI_BanditTypes + ["BW1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","SurvivorW2_DZ","Survivor2_DZ","Sniper1_DZ","Soldier1_DZ","Camo1_DZ","BanditW1_DZ","Bandit1_DZ","SurvivorW2_DZ"];
DZAI_SkinLoot = DZAI_SkinLoot + ["Skin_police1_DZ","Skin_police2_DZ","Skin_civilian2_DZ","Skin_civilian3_DZ","Skin_civilian4_DZ","Skin_civilian5_DZ"];

diag_log "Oring classnames loaded.";
