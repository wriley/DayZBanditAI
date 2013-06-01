/*
	spawnBandits version 0.08
	
	Usage: [_minAI, _addAI, _patrolDist, _trigger, _numGroups (optional)] call spawnBandits;
	Description: Called through (mapname)_config.sqf. Spawns a specified number groups of AI units some distance from a trigger used as a reference location.
	
*/

private ["_minAI","_addAI","_patrolDist","_trigger","_equipType","_numGroups","_grpArray","_triggerPos","_gradeChances","_totalAI","_spawnPositions","_spawnCount","_markerArray","_spawnType"];
if (!isServer) exitWith {};
	
//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};
	
_spawnType = 2;
_minAI = _this select 0;									//Mandatory minimum number of AI units to spawn
_addAI = _this select 1;									//Maximum number of additional AI units to spawn
_patrolDist = _this select 2;
_trigger = _this select 3;									//The trigger calling this script.
_markerArray = _this select 4;
_equipType = if ((count _this) > 5) then {_this select 5} else {1};		//(Optional) Select the item probability table to use (0: Newbie, 1: Average, 2: High-end)
_numGroups = if ((count _this) > 6) then {_this select 6} else {1};		//(Optional) Number of groups of x number of units each to spawn

_grpArray = _trigger getVariable ["GroupArray",[]];			
if (count _grpArray > 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Active groups found. Exiting spawn script (spawnBandits)";};};						

_totalAI = (DZAI_spawnExtra + _minAI + round(random _addAI));	//Calculate total number of units to spawn per group.
if (_totalAI == 0) exitWith {};									//Exit script if there are no units to spawn

_triggerPos = getPosATL _trigger;									//Position to spawn AI unit. Also used as the respawn position.
_gradeChances = [_equipType] call fnc_getGradeChances;
_spawnCount = (_totalAI * _numGroups);
_spawnPositions = [];
if ((count _markerArray) == 0) then {
	_spawnPositions = [_triggerPos,300] call fnc_getBuildingPositions;
	diag_log "DEBUG :: Spawning AI from building positions.";
} else {
	{
		_spawnPositions set [(count _spawnPositions),(getMarkerPos _x)];
	} forEach _markerArray;
	diag_log "DEBUG :: Spawning AI from marker positions.";
	_spawnType = 3;
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawning %1 new AI groups of %2 units each (spawnBandits).",_numGroups,_totalAI];};
for "_j" from 1 to _numGroups do {
	private ["_unitGroup","_p","_pos"];
	_unitGroup = createGroup east;						//All units spawned from the same trigger will be part of the same group.
	_p = _spawnPositions call BIS_fnc_selectRandom;			//Each unit will be spawned at/near a random building position.
	_pos = null;
	if (_spawnType == 2) then {	
		_pos = [_p,2,100,5,0,2000,0] call BIS_fnc_findSafePos;
	} else {
		_pos = _p;
	};
	for "_i" from 1 to _totalAI do {
		private["_unit"];
		_unit = [_unitGroup,_pos,_trigger,_spawnType,_gradeChances] call fnc_createAI;	//Create and equip the unit
		if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI %1 of %2 spawned (spawnBandits).",_i,_totalAI];};
	};
	_unitGroup selectLeader ((units _unitGroup) select 0);
	0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
	_grpArray = _grpArray + [_unitGroup];							//Add the new group to the trigger's group array.
};
0 = [_trigger,_grpArray,_spawnCount,_patrolDist,_gradeChances,_spawnPositions] spawn fnc_initTrigger;

true
