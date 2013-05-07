/*
	spawnBandits_random_NR version 0.06 (No Respawn version)

	Usage: [_totalAI,_spawnMarker,_patrolDist,_spawnRadius] spawn spawnBandits_random_NR;
	Description: Called through (mapname)_config.sqf. Spawns a group of AI units some distance from a provided reference location.
*/
private ["_unitGroup","_patrolDist","_spawnRadius","_totalAI","_triggerPos","_pos","_equipType","_gradeChances"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};

_minAI = _this select 0;									//Mandatory minimum number of AI units to spawn
_addAI = _this select 1;									//Maximum number of additional AI units to spawn
_patrolDist = _this select 2;
_trigger = _this select 3;
_equipType = if ((count _this) > 4) then {_this select 4} else {1};

_grpArray = _trigger getVariable ["GroupArray",[]];			//Retrieve groups created by the trigger, or create an empty group array if none found.
if (count _grpArray > 0) exitWith {diag_log "Active groups found. Exiting spawn script (spawnBandits_random_NR)";};						//Exit script if active groups still exist.
_triggerPos = getPos _trigger;							
switch (_equipType) do {
	case 0: {_gradeChances = DZAI_gradeChances0;};
	case 1: {_gradeChances = DZAI_gradeChances1;};
	case 2: {_gradeChances = DZAI_gradeChances2;};
};

_totalAI = (_minAI + round(random _addAI));					//Calculate total number of units to spawn
if (_totalAI == 0) exitWith {};								//Exit script if there are no units to spawn	

DZAI_numAIUnits = (DZAI_numAIUnits + _totalAI);
_spawnRadius = 50 + random(450);
_pos = [_triggerPos,0,_spawnRadius,5,0,2000,0] call BIS_fnc_findSafePos;
	
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: %1 AI spawns triggered (spawnBandits_random_NR).",_totalAI];};

_unitGroup = createGroup east;						//Randomly-spawned AI units are of EAST side.
for "_i" from 1 to _totalAI do {
	private ["_unit"];
	_unit = [_unitGroup,_pos,_gradeChances] call fnc_createAI_NR;
	if ((leader _unitGroup) == _unit) then {_nul = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] execVM "DZAI\BIN_taskPatrol.sqf";};
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI %1 of %2 spawned (spawnBandits_random_NR).",_i,_totalAI];};
};
_grpArray = _grpArray + [_unitGroup];							//Add the new group to the trigger's group array.
_trigger setVariable["GroupArray",_grpArray,false];
