/*
	spawnBandits_bldgs version 0.06
	
	Usage: [_minAI, _addAI, _patrolDist, _trigger, _numGroups (optional)] call spawnBandits_bldgs;
	Description: Called through (mapname)_config.sqf. Spawns a specified number groups of AI units some distance from a trigger used as a reference location.
	
*/
private ["_totalAI","_minAI","_addAI","_patrolDist","_buildingPositions","_nearbldgs","_trigger","_triggerPos","_numGroups","_posVariance","_grpArray","_unit","_equipType","_gradeChances"];
if (!isServer) exitWith {};
	
//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};
	
//Editables and default values
_posVariance = 100;											//Maximum variance in generated position.

_minAI = _this select 0;									//Mandatory minimum number of AI units to spawn
_addAI = _this select 1;									//Maximum number of additional AI units to spawn
_patrolDist = _this select 2;
_trigger = _this select 3;									//The trigger calling this script.
_equipType = if ((count _this) > 4) then {_this select 4} else {1};		//(Optional) Select the item probability table to use (0: Newbie, 1: Average, 2: High-end)
_numGroups = if ((count _this) > 5) then {_this select 5} else {1};		//(Optional) Number of groups of x number of units each to spawn

//Get/Set trigger variables
_grpArray = _trigger getVariable ["GroupArray",[]];			//Retrieve groups created by the trigger, or create an empty group array if none found.
if (count _grpArray > 0) exitWith {diag_log "DZAI Debug: Active groups found. Exiting spawn script (spawnBandits_bldgs)";};						//Exit script if active groups still exist.
_triggerPos = getpos _trigger;									//Position to spawn AI unit. Also used as the respawn position.
switch (_equipType) do {
	case 0: {_gradeChances = DZAI_gradeChances0;};
	case 1: {_gradeChances = DZAI_gradeChances1;};
	case 2: {_gradeChances = DZAI_gradeChances2;};
};
_trigger setVariable ["patrolDist",_patrolDist,false];
_trigger setVariable ["gradeChances",_gradeChances,false];

if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];}; //Check if there are too many AI units in the game.

_totalAI = (DZAI_spawnExtra + _minAI + round(random _addAI));	//Calculate total number of units to spawn per group.
if (_totalAI == 0) exitWith {};									//Exit script if there are no units to spawn

DZAI_numAIUnits = _numGroups*(DZAI_numAIUnits + _totalAI);		//Update the number of currently live AI units.

_nearbldgs = nearestObjects [_triggerPos, ["Building"], 300];	//Find all buildings within a specified radius of the trigger.
_buildingPositions = [_nearbldgs] call fnc_getBuildingPositions;//Find all usable building positions of the found buildings.

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawning %1 new AI groups of %2 units each (spawnBandits_bldgs).",_numGroups,_totalAI];};
for "_j" from 1 to _numGroups do {
	private ["_unitGroup","_p","_pos"];
	_unitGroup = createGroup resistance;						//All units spawned from the same trigger will be part of the same group.
	_p = _buildingPositions call BIS_fnc_selectRandom;		//Each unit will be spawned at/near a random building position.
	_pos = [_p,2,_posVariance,5,0,2000,0] call BIS_fnc_findSafePos;
	for "_i" from 1 to _totalAI do {
		_unit = [_unitGroup,_pos,_trigger,2,_gradeChances] call fnc_createAI;	//Create and equip the unit
		if ((leader _unitGroup) == _unit) then {_nul = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] execVM "DZAI\scripts\BIN_taskPatrol.sqf";	/*Start patrolling after each group is fully spawned.*/};
	};

	_grpArray = _grpArray + [_unitGroup];							//Add the new group to the trigger's group array.
};
_trigger setVariable["GroupArray",_grpArray,false];
