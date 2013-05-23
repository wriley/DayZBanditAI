/*
	spawnBandits_random version 0.07

	Usage: [_totalAI,_spawnMarker,_patrolDist,_spawnRadius] spawn spawnBandits_random;
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
_equipType = if ((count _this) > 4) then {_this select 4} else {1};	//(Optional) Select the item probability table to use (0: Newbie, 1: Average, 2: High-end)

//Get/set trigger variables
_grpArray = _trigger getVariable ["GroupArray",[]];			//Retrieve groups created by the trigger, or create an empty group array if none found.
if (count _grpArray > 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Active groups found. Exiting spawn script (spawnBandits_random)";};};						//Exit script if active groups still exist.
_triggerPos = getPos _trigger;
_gradeChances = [_equipType] call fnc_getGradeChances;
[_trigger,_patrolDist,_gradeChances] call fnc_initTrigger;
//_trigger setVariable ["patrolDist",_patrolDist,false];
//_trigger setVariable ["gradeChances",_gradeChances,false];

_totalAI = (_minAI + round(random _addAI));					//Calculate total number of units to spawn
if (_totalAI == 0) exitWith {};								//Exit script if there are no units to spawn	

//DZAI_numAIUnits = (DZAI_numAIUnits + _totalAI);
_spawnRadius = 50 + random(450);
_pos = [_triggerPos,0,_spawnRadius,5,0,2000,0] call BIS_fnc_findSafePos;

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: %1 AI spawns triggered (spawnBandits_random).",_totalAI];};

_unitGroup = createGroup east;						//Randomly-spawned AI units are of EAST side.
for "_i" from 1 to _totalAI do {
	private ["_unit"];
	_unit = [_unitGroup,_pos,_trigger,1,_gradeChances] call fnc_createAI;
	//if ((leader _unitGroup) == _unit) then {_nul = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] execVM "DZAI\scripts\BIN_taskPatrol.sqf";};
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI %1 of %2 spawned (spawnBandits_random).",_i,_totalAI];};
};
_unitGroup selectLeader ((units _unitGroup) select 0);
_nul = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
_grpArray = _grpArray + [_unitGroup];							//Add the new group to the trigger's group array.
_trigger setVariable["GroupArray",_grpArray,false];
_trigger setVariable["isCleaning",false,false];
