//DayZ AI Bandit Module Version 0.05
/*
	if ((Player getVariable "SpareTime") > 0) then {...
	Usage: call compile preprocessFileLineNumbers "dayz_ai_functions.sqf";
*/

	waituntil {!isnil "bis_fnc_init"};
	// [] call BIS_fnc_help;
	fnc_setBehaviour = compile preprocessFileLineNumbers "DZAI\compile\fn_setBehaviour.sqf";
	fnc_setSkills = compile preprocessFileLineNumbers "DZAI\compile\fn_setSkills.sqf";
	fnc_spawn_deathFlies = compile preprocessFileLineNumbers "DZAI\compile\fn_spawn_deathFlies.sqf";
	fnc_unitConsumables = compile preprocessFileLineNumbers "DZAI\compile\fn_unitConsumables.sqf";
	fnc_unitBackpack = compile preprocessFileLineNumbers "DZAI\compile\fn_unitBackpack.sqf";
	fnc_unitTools = compile preprocessFileLineNumbers "DZAI\compile\fn_unitTools.sqf";
	fnc_unitSelectRifle = compile preprocessFileLineNumbers "DZAI\compile\fn_unitSelectRifle.sqf";
	fnc_unitSelectPistol = compile preprocessFileLineNumbers "DZAI\compile\fn_unitSelectPistol.sqf";
	if (DZAI_zombieEnemy && DZAI_zombiesEnabled && (DZAI_weaponNoise!=0)) then { // Optional AI-to-Z hostility
		ai_fired = compile preprocessFileLineNumbers "DZAI\compile\ai_fired.sqf";	//Calculates weapon noise of AI unit
		ai_alertzombies = compile preprocessFileLineNumbers "DZAI\compile\ai_alertzombies.sqf"; //AI weapon noise attracts zombie attention
	};
	fnc_getBuildingPositions = compile preprocessFileLineNumbers "DZAI\compile\fn_getBuildingPositions.sqf";
	fnc_banditAIKilled = compile preprocessFileLineNumbers "DZAI\compile\fn_banditAIKilled.sqf";
	fnc_banditAIRespawn = compile preprocessFileLineNumbers "DZAI\compile\fn_banditAIRespawn.sqf";
	fnc_selectRandomWeighted = compile preprocessFileLineNumbers "DZAI\compile\fn_selectRandomWeighted.sqf";
	fnc_createAI = compile preprocessFileLineNumbers "DZAI\compile\fn_createAI.sqf";
	fnc_createAI_NR = compile preprocessFileLineNumbers "DZAI\compile\fn_createAI_NR.sqf";
	fnc_damageAI = compile preprocessFileLineNumbers "DZAI\compile\fn_damageHandlerAI.sqf";
	
initialized = true;
DZAI_initialized = true;
if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] DZAI Functions loaded."];};