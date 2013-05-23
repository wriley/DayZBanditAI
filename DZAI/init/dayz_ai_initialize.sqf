//dayz_ai_initialize 0.07

//Load DZAI variables
call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_variables.sqf";

//Optionally replace DayZ's zombie spawning scripts with dummy scripts if zombies are disabled in dayz_ai_variables.
if (!isDedicated && !DZAI_zombiesEnabled) then {
	zombie_generate = compile preprocessFile "DZAI\compile\zombie_generate.sqf";
	wild_spawnZombies = compile preprocessFile "DZAI\compile\wild_spawnZombies.sqf";
};
if (!isServer) exitWith {}; //End of client-sided work

call compile preprocessFile "DZAI\SHK_pos\shk_pos_init.sqf";

	waituntil {!isnil "bis_fnc_init"};
	// [] call BIS_fnc_help;
	//Compile general functions.
	BIS_fnc_selectRandom = 			compile preprocessFileLineNumbers "DZAI\compile\fn_selectRandom.sqf";	//Altered version
	fnc_setSkills = 				compile preprocessFileLineNumbers "DZAI\compile\fn_setSkills.sqf";
	fnc_spawn_deathFlies = 			compile preprocessFileLineNumbers "DZAI\compile\fn_spawn_deathFlies.sqf";
	fnc_unitConsumables = 			compile preprocessFileLineNumbers "DZAI\compile\fn_unitConsumables.sqf";
	fnc_unitInventory = 			compile preprocessFileLineNumbers "DZAI\compile\fn_unitInventory.sqf";
	fnc_unitTools = 				compile preprocessFileLineNumbers "DZAI\compile\fn_unitTools.sqf";
	fnc_unitSelectWeapon = 			compile preprocessFileLineNumbers "DZAI\compile\fn_unitSelectWeapon.sqf";
	fnc_unitSelectPistol = 			compile preprocessFileLineNumbers "DZAI\compile\fn_unitSelectPistol.sqf";
	if (DZAI_zombieEnemy && DZAI_zombiesEnabled && (DZAI_weaponNoise!=0)) then { // Optional AI-to-Z hostility
		ai_fired = 					compile preprocessFileLineNumbers "DZAI\compile\ai_fired.sqf";	//Calculates weapon noise of AI unit
		ai_alertzombies = 			compile preprocessFileLineNumbers "DZAI\compile\ai_alertzombies.sqf"; //AI weapon noise attracts zombie attention
	};
	fnc_getBuildingPositions = 		compile preprocessFileLineNumbers "DZAI\compile\fn_getBuildingPositions.sqf";
	fnc_banditAIKilled = 			compile preprocessFileLineNumbers "DZAI\compile\fn_banditAIKilled.sqf";
	fnc_banditAIRespawn = 			compile preprocessFileLineNumbers "DZAI\compile\fn_banditAIRespawn.sqf";
	fnc_selectRandomWeighted = 		compile preprocessFileLineNumbers "DZAI\compile\fn_selectRandomWeighted.sqf";
	fnc_createAI = 					compile preprocessFileLineNumbers "DZAI\compile\fn_createAI.sqf";
	fnc_createAI_NR = 				compile preprocessFileLineNumbers "DZAI\compile\fn_createAI_NR.sqf";
	fnc_damageAI = 					compile preprocessFileLineNumbers "DZAI\compile\fn_damageHandlerAI.sqf";
	fnc_getGradeChances =			compile preprocessFileLineNumbers "DZAI\compile\fn_getGradeChances.sqf";
	fnc_initTrigger = 				compile preprocessFileLineNumbers "DZAI\compile\fn_initTrigger.sqf";
	fnc_BIN_taskPatrol = 			compile preprocessFileLineNumbers "DZAI\compile\BIN_taskPatrol.sqf";

	//Compile spawn scripts
	fnc_spawnBandits_random = 		compile preprocessFileLineNumbers "DZAI\spawn_functions\spawnBandits_random.sqf";
	fnc_respawnBandits_random = 	compile preprocessFileLineNumbers "DZAI\spawn_functions\respawnBandits_random.sqf";
	fnc_spawnBandits_bldgs = 		compile preprocessFileLineNumbers "DZAI\spawn_functions\spawnBandits_bldgs.sqf";
	fnc_respawnBandits_bldgs = 		compile preprocessFileLineNumbers "DZAI\spawn_functions\respawnBandits_bldgs.sqf";
	fnc_spawnBandits_markers = 		compile preprocessFileLineNumbers "DZAI\spawn_functions\spawnBandits_markers.sqf";
	fnc_respawnBandits_markers = 	compile preprocessFileLineNumbers "DZAI\spawn_functions\respawnBandits_markers.sqf";
	fnc_spawnTriggers_random = 		compile preprocessFileLineNumbers "DZAI\spawn_functions\spawnTriggers_random.sqf";
	fnc_despawnBandits = 			compile preprocessFileLineNumbers "DZAI\spawn_functions\despawnBandits.sqf";
	fnc_spawnBandits_random_NR = 	compile preprocessFileLineNumbers "DZAI\spawn_functions\spawnBandits_random_NR.sqf";
	fnc_despawnBandits_NR = 		compile preprocessFileLineNumbers "DZAI\spawn_functions\despawnBandits_NR.sqf";

private["_worldname"];
_worldname=toLower format ["%1",worldName];

if (((_worldname == "tavi")||(worldname == "lingor"))&&(DZAI_modName == "default")&&(!DZAI_safeMode)) then {DZAI_safeMode = true;};	//Force Safe Mode if using non-Skaronator Lingor or Taviana map.
if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] Server is running map %1. Loading map and loot configs.",_worldname];};

//Load default DZAI loot tables. These tables include weapons and other items that can be added to an AI unit's inventory.
//Do not delete this file, as it is required for DZAI to work.
#include "dzai_configs\default_config.sqf"

/*
Load mod-specific configuration file. Config files contain trigger/marker information, addition and removal of items/skins, and/or other variable customizations.
To reduce the size of your mission file, you may clear the contents of unused config files to reduce the size of your mission file by at least 230KB.
*/

switch (_worldname) do {
	case "chernarus":
	{
		#include "map_configs\chernarus_config.sqf"
		#include "loot_configs\chernarus_loot.sqf"
	};
	case "utes":
	{
		#include "map_configs\utes_config.sqf"
		#include "loot_configs\utes_loot.sqf"
	};
	case "zargabad":
	{
		#include "map_configs\zargabad_config.sqf"
		#include "loot_configs\zargabad_loot.sqf"
	};
	case "fallujah":
	{
		#include "map_configs\fallujah_config.sqf"
		#include "loot_configs\fallujah_loot.sqf"
	};
	case "takistan":
	{
		#include "map_configs\takistan_config.sqf"
		#include "loot_configs\takistan_loot.sqf"
	};
    case "tavi":
    {
		#include "map_configs\tavi_config.sqf"
		#include "loot_configs\tavi_loot.sqf"
    };
	 case "lingor":
    {
		#include "map_configs\lingor_config.sqf"
		#include "loot_configs\lingor_loot.sqf"
    };
    case "namalsk":
    {
		#include "map_configs\namalsk_config.sqf"
		#include "loot_configs\namalsk_loot.sqf"
    };
    case "mbg_celle2":
    {
		#include "map_configs\mbg_celle2_config.sqf"
		#include "loot_configs\mbg_celle2_loot.sqf"
    };
	case "oring":
    {
		#include "map_configs\oring_config.sqf"
		#include "loot_configs\oring_loot.sqf"
    };
	case "panthera2":
    {
		#include "map_configs\panthera2_config.sqf"
		#include "loot_configs\panthera2_loot.sqf"
    };
	case "isladuala":
    {
		#include "map_configs\isladuala_config.sqf"
		#include "loot_configs\isladuala_loot.sqf"
    };
};
initialized = true;
if (DZAI_spawnRandom > 0) then {_nul = [DZAI_spawnRandom,'center',300,4500,DZAI_randEquipType] spawn fnc_spawnTriggers_random;};
if (DZAI_monitor) then {[] execVM 'DZAI\scripts\dzai_monitor.sqf';};
if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] DZAI loading complete."];};
