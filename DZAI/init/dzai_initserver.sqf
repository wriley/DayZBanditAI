/*
	DZAI Server Initialization File
	
	Description: Handles startup process for DZAI. Does not contain any values intended for modification.
	
	Last updated: 7:46 PM 6/10/2013
*/

diag_log "[DZAI] Initializing DZAI addon. Reading dzai_variables.sqf.";

//Load DZAI variables
call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_variables.sqf";
call compile preprocessFile "\z\addons\dayz_server\DZAI\SHK_pos\shk_pos_init.sqf";

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
	diag_log "[DZAI] Compiling DZAI functions.";
	// [] call BIS_fnc_help;
	//Compile general functions.
	BIS_fnc_selectRandom = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_selectRandom.sqf";	//Altered version
	fnc_setSkills = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_setSkills.sqf";
	fnc_spawn_deathFlies = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_spawn_deathFlies.sqf";
	fnc_unitConsumables = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitConsumables.sqf";
	fnc_unitInventory = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitInventory.sqf";
	fnc_unitTools = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitTools.sqf";
	fnc_unitSelectWeapon = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitSelectWeapon.sqf";
	fnc_unitSelectPistol = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitSelectPistol.sqf";
	if (DZAI_zombieEnemy && (DZAI_weaponNoise > 0)) then { // Optional AI-to-Z hostility
		ai_fired = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\ai_fired.sqf";	//Calculates weapon noise of AI unit
		ai_alertzombies = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\ai_alertzombies.sqf"; //AI weapon noise attracts zombie attention
	};
	fnc_getBuildingPositions = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_getBuildingPositions.sqf";
	fnc_banditAIKilled = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_banditAIKilled.sqf";
	fnc_banditAIRespawn = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_banditAIRespawn.sqf";
	fnc_selectRandomWeighted = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_selectRandomWeighted.sqf";
	fnc_createAI = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_createAI.sqf";
	fnc_createAI_NR = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_createAI_NR.sqf";
	fnc_damageAI = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_damageHandlerAI.sqf";
	fnc_getGradeChances =			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_getGradeChances.sqf";
	fnc_initTrigger = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_initTrigger.sqf";
	fnc_BIN_taskPatrol = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\BIN_taskPatrol.sqf";
	if (DZAI_debugMarkers < 1) then {
		fnc_aiBrain = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\aiBrain.sqf";
	} else {
		fnc_aiBrain = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\aiBrain_debug.sqf";
	};
	fnc_DZAI_customPatrol = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\DZAI_customPatrol.sqf";
	fnc_updateDead = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_updateDead.sqf";
	//Compile spawn scripts
	fnc_spawnBandits = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits.sqf";
	fnc_respawnBandits = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\respawnBandits.sqf";
	fnc_spawnBandits_bldgs = 		fnc_spawnBandits;
	fnc_spawnBandits_markers = 		fnc_spawnBandits;
	fnc_despawnBandits = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits.sqf";
	fnc_spawnBandits_random_NR = 	compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits_random_NR.sqf";
	fnc_despawnBandits_NR = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits_NR.sqf";
	
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

if (((_worldname == "tavi")||(worldname == "lingor"))&&(DZAI_modName == "default")&&(!DZAI_verifyTables)) then {DZAI_verifyTables = true;};	//Force Safe Mode if using non-Skaronator Lingor or Taviana map.
if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] Server is running map %1. Loading static trigger and classname configs.",_worldname];};

//Load default DZAI loot tables. These tables include weapons and other items that can be added to an AI unit's inventory.
//Do not delete this file, as it is required for DZAI to work.
#include "base_classname_configs\base_classnames.sqf"

//Create reference marker for dynamic triggers and set default values. These values are modified by world_(map_name).sqf
_this = createMarker ["DZAI_centerMarker", (getMarkerPos 'center')];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
DZAI_centerMarker = _this;
DZAI_centerSize = 4500;
DZAI_dynTriggersMax = 20;

/*
Load mod-specific configuration file. Config files contain trigger/marker information, addition and removal of items/skins, and/or other variable customizations.
*/

switch (_worldname) do {
	case "chernarus":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\chernarus_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_chernarus.sqf";
	};
	case "utes":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\utes_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_utes.sqf";
	};
	case "zargabad":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\zargabad_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_zargabad.sqf";
	};
	case "fallujah":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\fallujah_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_fallujah.sqf";
	};
	case "takistan":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\takistan_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_takistan.sqf";
	};
    case "tavi":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\tavi_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_tavi.sqf";
    };
	 case "lingor":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\lingor_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_lingor.sqf";
    };
    case "namalsk":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\namalsk_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_namalsk.sqf";
    };
    case "mbg_celle2":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\mbg_celle2_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_mbg_celle2.sqf";
    };
	case "oring":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\oring_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_oring.sqf";
    };
	case "panthera2":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\panthera2_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_panthera2.sqf";
    };
	case "isladuala":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\isladuala_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_isladuala.sqf";
    };
	case "sara":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\sara_classnames.sqf";
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_map_configs\world_sara.sqf";
    };
	case default {
		diag_log "Unrecognized worldname found. Verifying table compatibility.";
		if (!DZAI_verifyTables) then {DZAI_verifyTables = true;};	//Force table verification for unrecognized maps to help creating new loot config files.
	};
};

if (DZAI_verifyTables) then {["DZAI_Rifles0","DZAI_Rifles1","DZAI_Rifles2","DZAI_Rifles3","DZAI_Pistols0","DZAI_Pistols1","DZAI_Pistols2","DZAI_Pistols3","DZAI_Backpacks0","DZAI_Backpacks1","DZAI_Backpacks2","DZAI_Backpacks3","DZAI_Edibles","DZAI_Medicals1","DZAI_Medicals2","DZAI_MiscItemS","DZAI_MiscItemL","DZAI_SkinLoot","DZAI_BanditTypes"] execVM "\z\addons\dayz_server\DZAI\scripts\verifyTables.sqf";};
if (DZAI_dynTriggersMax > 0) then {[DZAI_dynTriggersMax] execVM '\z\addons\dayz_server\DZAI\scripts\spawnTriggers_random.sqf';};
if (DZAI_monitor) then {[] execVM '\z\addons\dayz_server\DZAI\scripts\dzai_monitor.sqf';};
if (DZAI_debugLevel > 0) then {diag_log "[DZAI] DZAI loading complete.";};
