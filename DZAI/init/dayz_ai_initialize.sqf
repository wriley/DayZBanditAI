//dayz_ai_initialize 0.07

createcenter east;											//Create centers for all sides
createcenter west;
createcenter resistance;

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
	
initialized = true;
_nul = [DZAI_spawnRandom,'center',300,4500,DZAI_randEquipType] spawn fnc_spawnTriggers_random;
if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] DZAI Loading Complete."];};
