//DZAI Initialize Version 0.05

createcenter east;											//Create centers for all sides
createcenter west;
createcenter resistance;

call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_variables.sqf";
if (!isDedicated && !DZAI_zombiesEnabled) then { //If client and zombies are disabled, replace zombie spawn scripts with dummy scripts.
	zombie_generate = compile preprocessFile "DZAI\compile\zombie_generate.sqf";
	wild_spawnZombies = compile preprocessFile "DZAI\compile\wild_spawnZombies.sqf";
};
if (!isServer) exitWith {}; //End of client-sided work
call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_functions.sqf";
call compile preprocessFileLineNumbers "DZAI\mission\mission_functions.sqf";
waituntil {!isnil "DZAI_initialized"};
0 = [DZAI_spawnRandom,'center',350,4000,2] spawn fnc_spawnTriggers_random_NR;
if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] DZAI Loading Complete."];};
