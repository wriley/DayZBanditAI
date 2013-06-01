//dayz_ai_initialize 0.08 (Server)


//Load DZAI variables
call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_variables.sqf";
call compile preprocessFile "DZAI\SHK_pos\shk_pos_init.sqf";

createcenter east;											//Create centers for all sides
createcenter west;
createcenter resistance;
resistance setFriend [east, 1];								//Resistance (AI) is hostile to West (Player), but friendly to East (AI).
resistance setFriend [west, 0];	
EAST setFriend [WEST, 0];									//East (AI) is hostile to West (Player), but friendly to Resistance (AI).
EAST setFriend [resistance, 1];	
WEST setFriend [EAST, 0];									//West (Player side) is hostile to all.
WEST setFriend [resistance, 0];

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
	fnc_aiBrain = 					compile preprocessFileLineNumbers "DZAI\compile\aiBrain.sqf";
	fnc_aiBrain_debug = 			compile preprocessFileLineNumbers "DZAI\compile\aiBrain_debug.sqf";

	//Compile spawn scripts
	fnc_spawnBandits = 				compile preprocessFileLineNumbers "DZAI\spawn_functions\spawnBandits.sqf";
	fnc_respawnBandits = 			compile preprocessFileLineNumbers "DZAI\spawn_functions\respawnBandits.sqf";
	fnc_spawnBandits_bldgs = 		fnc_spawnBandits;
	fnc_spawnBandits_markers = 		fnc_spawnBandits;
	fnc_spawnTriggers_random = 		compile preprocessFileLineNumbers "DZAI\spawn_functions\spawnTriggers_random.sqf";
	fnc_despawnBandits = 			compile preprocessFileLineNumbers "DZAI\spawn_functions\despawnBandits.sqf";
	fnc_spawnBandits_random_NR = 	compile preprocessFileLineNumbers "DZAI\spawn_functions\spawnBandits_random_NR.sqf";
	fnc_despawnBandits_NR = 		compile preprocessFileLineNumbers "DZAI\spawn_functions\despawnBandits_NR.sqf";
	
	//Wrapper function for compatibility with old spawnBandits format.
	fnc_spawnBandits_bldgs = 	{
		private ["_equipType","_numGroups"];
		_equipType = if ((count _this) > 4) then {_this select 4} else {1};
		_numGroups = if ((count _this) > 5) then {_this select 5} else {1};
		0 = [_this select 0,_this select 1,_this select 2,_this select 3,[],_equipType,_numGroups] call fnc_spawnBandits;
		true
	};
	
	//Wrapper function for compatibility with old spawnBandits format.
	fnc_spawnBandits_markers  = 	{
		private ["_equipType","_numGroups"];
		_equipType = if ((count _this) > 5) then {_this select 5} else {1};
		_numGroups = if ((count _this) > 6) then {_this select 6} else {1};
		0 = [_this select 0,_this select 1,_this select 2,_this select 3,_this select 4,_equipType,_numGroups] call fnc_spawnBandits;
		true
	};

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
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\chernarus_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\chernarus_loot.sqf";
	};
	case "utes":
	{
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\utes_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\utes_loot.sqf";
	};
	case "zargabad":
	{
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\zargabad_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\zargabad_loot.sqf";
	};
	case "fallujah":
	{
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\fallujah_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\fallujah_loot.sqf";
	};
	case "takistan":
	{
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\takistan_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\takistan_loot.sqf";
	};
    case "tavi":
    {
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\tavi_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\tavi_loot.sqf";
    };
	 case "lingor":
    {
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\lingor_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\lingor_loot.sqf";
    };
    case "namalsk":
    {
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\namalsk_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\namalsk_loot.sqf";
    };
    case "mbg_celle2":
    {
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\mbg_celle2_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\mbg_celle2_loot.sqf";
    };
	case "oring":
    {
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\oring_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\oring_loot.sqf";
    };
	case "panthera2":
    {
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\panthera2_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\panthera2_loot.sqf";
    };
	case "isladuala":
    {
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\isladuala_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\isladuala_loot.sqf";
    };
	case "sara":
	{
		call compile preprocessFileLineNumbers "DZAI\init\map_configs\sara_config.sqf";
		call compile preprocessFileLineNumbers "DZAI\init\loot_configs\sara_loot.sqf";
    };
	case default {
		diag_log "Unrecognized worldname found. Verifying table compatibility.";
		DZAI_dynTriggersMax = 20;
		DZAI_dynSpawnDelay = 30;
		DZAI_dynEquipType = 1;
		DZAI_dynAIMin = 2;
		DZAI_dynAIAdd = 3;
		if (!DZAI_verifyTables) then {DZAI_verifyTables = true;};	//Force table verification for unrecognized maps to help creating new loot config files.
	};
};
initialized = true;

if (DZAI_verifyTables) then {call compile preprocessFileLineNumbers "DZAI\scripts\verifyTables.sqf";};
if (DZAI_dynTriggersMax > 0) then {_nul = [DZAI_dynTriggersMax,'center',300,4500,DZAI_dynEquipType] spawn fnc_spawnTriggers_random;};
if (DZAI_monitor) then {[] execVM 'DZAI\scripts\dzai_monitor.sqf';};
if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] DZAI loading complete."];};
