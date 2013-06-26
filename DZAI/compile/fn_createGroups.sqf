/*
	fn_createGroups
	
	Description: Creates a specified number of respawning AI groups of specified size. Used for spawning AI from static triggers.
	
	Last updated: 12:12 PM 6/26/2013
*/
private ["_unitGroup","_grpArray","_numGroups","_spawnPositions","_spawnType","_totalAI","_patrolDist","_triggerPos","_trigger","_gradeChances","_startTime"];

_numGroups = _this select 0;
_spawnPositions = _this select 1;
_spawnType = _this select 2;
_trigger = _this select 3;
_gradeChances = _this select 4;
_totalAI = _this select 5;
_patrolDist = _this select 6;
_triggerPos = _this select 7;

_startTime = diag_tickTime;

_grpArray = [];

//Spawn units
for "_j" from 1 to _numGroups do {
	private ["_unitGroup","_p","_pos"];
	_unitGroup = grpNull;
	if ((random 1) < 0.5) then {				//50% chance to choose East or Resistance as AI side to avoid reaching 140 group/side limit.
		_unitGroup = createGroup east;
	} else {
		_unitGroup = createGroup resistance;
	};
	_p = _spawnPositions call BIS_fnc_selectRandom;
	_pos = [0,0,0];
	if (_spawnType == 2) then {	
		_pos = [_p,1,100,2,0,2000,0] call BIS_fnc_findSafePos;
	} else {
		_pos = _p;
	};
	for "_i" from 1 to _totalAI do {
		[_unitGroup,_pos,_trigger,_gradeChances] call fnc_createUnit;
		//if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI %1 of %2 spawned (spawnBandits).",_i,_totalAI];};
	};
	
	_unitGroup selectLeader ((units _unitGroup) select 0);
	_unitGroup allowFleeing 0;
	
	//Update AI count
	_unitGroup setVariable ["groupSize",_totalAI];
	DZAI_numAIUnits = DZAI_numAIUnits + _totalAI;
	
	if ((typeName _patroldist) == "SCALAR") then {
		0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
	} else {
		0 = [_unitGroup,_patrolDist,DZAI_debugMarkers] spawn fnc_DZAI_customPatrol;
	};
	_grpArray set [count _grpArray,_unitGroup];
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned %1 new AI groups of %2 units each in %3 seconds (fn_createGroups).",_numGroups,_totalAI,(diag_tickTime - _startTime)];};

_grpArray
