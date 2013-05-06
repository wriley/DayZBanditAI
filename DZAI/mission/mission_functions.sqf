//Mission Functions Version 0.05
/*
	if ((Player getVariable "SpareTime") > 0) then {...
	Usage: call compile preprocessFileLineNumbers "DZAI\mission\mission_functions.sqf";
	
	Description: Contains functions for use in AI spawn triggers.
*/

	waituntil {!isnil "bis_fnc_init"};
	fnc_spawnBandits_random = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnBandits_random.sqf";
	fnc_respawnBandits_random = compile preprocessFileLineNumbers "DZAI\mission\fnc\respawnBandits_random.sqf";
	fnc_spawnBandits_bldgs = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnBandits_bldgs.sqf";
	fnc_respawnBandits_bldgs = compile preprocessFileLineNumbers "DZAI\mission\fnc\respawnBandits_bldgs.sqf";
	fnc_spawnBandits_markers = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnBandits_markers.sqf";
	fnc_respawnBandits_markers = compile preprocessFileLineNumbers "DZAI\mission\fnc\respawnBandits_markers.sqf";
	fnc_spawnTriggers_random = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnTriggers_random.sqf";
	fnc_despawnBandits = compile preprocessFileLineNumbers "DZAI\mission\fnc\despawnBandits.sqf";
	
	//Non-respawn spawn scripts
	fnc_spawnTriggers_random_NR = compile preprocessFileLineNumbers "DZAI\mission\fnc\spawnTriggers_random_NR.sqf";
	fnc_despawnBandits_NR = compile preprocessFileLineNumbers "DZAI\mission\fnc\despawnBandits_NR.sqf";
	
	initialized = true;

	if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] DZAI Spawn Functions loaded."];};