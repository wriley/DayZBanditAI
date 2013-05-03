/*
	fn_createAI version 0.05
	
	Spawns an independent AI unit. Called internally by spawnBandits_random, respawnBandits_random, spawnBandits_bldgs, respawnBandits_bldgs, spawnBandits_markers, respawnBandits_markers.
	Usage: [_unitGroup,_spawnPos,_patrolDist,_trigger,_respawnLoc,_respawnType] call fn_createAI;
	
	_unitGroup: Group to spawn AI unit. (Building-spawned AI: side 'resistance', Random/Marker-spawned AI: side 'east')
	_spawnPos: Position to create AI unit.
	_patrolDist: Maximum distance between patrol waypoints.
	_trigger: The trigger object responsible for spawning the AI unit.
	_respawnLoc: Position to respawn AI unit on death.
	_respawnType: 1 (Respawn at random location some distance away from a marker), 2 (Respawn at a building near the trigger), 3 (Respawn randomly at a randomly selected marker)
	
*/
private ["_spawnPos","_type","_unit","_respawnType","_respawnLoc","_weapongrade","_unitGroup","_trigger","_patrolDist"];
if (!isServer) exitWith {};

_unitGroup = _this select 0;
_spawnPos = _this select 1;
_patrolDist = _this select 2;
_trigger = _this select 3;		//Always 0 (zero) for randomly-spawned AI, as they are not spawned by triggers.
_respawnLoc = _this select 4;
_respawnType = _this select 5;

_type = DZAI_BanditTypesDefault call BIS_fnc_selectRandom;							// Select skin of AI unit
_unit = _unitGroup createUnit [_type, _spawnPos, [], 0, "FORM"];					// Spawn the AI unit
[_unit] joinSilent _unitGroup;														// Add AI unit to group
//diag_log format ["DEBUG: Group is %1 (fn_createAI)",_unitGroup];

_unit setVariable["unitGroup",_unitGroup,false];									// Set the unit's group. The unit will respawn into the same group.
_unit setVariable["respawnLoc",_respawnLoc,false];									// Set position of the trigger/marker the AI was spawned from
_unit setVariable["trigger",_trigger,false];										// Record the trigger from which the AI unit was spawned
_unit setVariable["respawnType",_respawnType,false];								// Set the method used to spawn the AI (ie: 1: from 'center' marker, 2: from a trigger, 3: from a set of markers
_unit setVariable["patrolDist",_patrolDist,false];									// Record the unit's patrol behavior (distance between waypoints)
_unit setVariable["gethit",[0,0,0,0]];												// Set unit's initial health statistics. (Structural, Body, Hands, Legs)

if (DZAI_debugMarkers < 1) then {
	_unit setVehicleInit "[this] execVM 'DZAI\scripts\aiBrain.sqf';";			// Background-running script that automatically reloads ammo when depleted, and sets hostility to nearby zombies.
	} else {
	_unit setVehicleInit "[this] execVM 'DZAI\scripts\aiBrain_debug.sqf';";		// Same script as aiBrain, but displays AI unit's current position. (delay = DZAI_refreshRate)
};
processInitCommands;
if (DZAI_zombieEnemy && DZAI_zombiesEnabled && (DZAI_weaponNoise!=0)) then {
	_unit addEventHandler ["Fired", {_this call ai_fired;}];};						// Unit firing causes zombie aggro in the area, like player. Called only if zombies are enabled, and zombie hostility is enabled.
//_unit addEventHandler ["Fired", {(_this select 0) setvehicleammo 1}];				// AI bandit has unlimited ammunition (old method). Note: AI does not need to reload using this method.
//_unit addEventHandler ["HandleDamage",{_this call local_zombieDamage;}];			// Handle incoming damage (old method). Note: Depends on DayZ's own damage eventhandler for zombies.
_unit addEventHandler ["HandleDamage",{_this call fnc_damageAI;}];					// Handle incoming damage. Note: AI durability can be modified in dayz_ai_variables.sqf
_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; 	// Killing this unit will increment player's bandit kill count.
_unit addEventHandler ["Killed",{_this call fnc_spawn_deathFlies;}];				// Spawn flies around AI bandit corpse.
_unit addEventHandler ["Killed",{_this call fnc_banditAIKilled;}];					// Update current AI count and generate additional loot on death.
_unit addEventHandler ["Killed",{_this spawn fnc_banditAIRespawn;}];				// Respawns AI using the same parameters they were spawned with.
_unit addEventHandler ["Killed",{(_this select 0) setDamage 1;}];					// "People die if they are killed" - Shirou Emiya

_weapongrade = [DZAI_weaponGrades,DZAI_gradeChances] call fnc_selectRandomWeighted;	// Select quality of weapon to add to AI.
[_unit, _weapongrade] call fnc_unitSelectRifle;										// Add rifle
[_unit, _weapongrade] call fnc_unitBackpack;														// Add backpack and chance of binoculars
[_unit] call fnc_setBehaviour;														// Set AI behavior
[_unit] call fnc_setSkills;															// Set AI skill

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned AI Type %1 with weapongrade %2 (fn_createAI).",_type,_weapongrade];};

_unit
