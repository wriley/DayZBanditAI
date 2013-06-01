/*
	spawnBandits_random_NR version 0.08 (No Respawn version)

	Usage: [_totalAI,_spawnMarker,_patrolDist,_spawnRadius] spawn spawnBandits_random_NR;
	Description: Called through (mapname)_config.sqf. Spawns a group of AI units some distance from a provided reference location.
*/
private ["_minAI","_addAI","_patrolDist","_trigger","_equipType","_grpArray","_triggerPos","_gradeChances","_totalAI","_spawnRadius","_unitGroup","_pos","_nearbyPlayers"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};

_minAI = _this select 0;									//Mandatory minimum number of AI units to spawn
_addAI = _this select 1;									//Maximum number of additional AI units to spawn
_patrolDist = _this select 2;
_trigger = _this select 3;
_equipType = if ((count _this) > 4) then {_this select 4} else {1};

_grpArray = _trigger getVariable ["GroupArray",[]];			
if (count _grpArray > 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Active groups found. Exiting spawn script (spawnBandits_random_NR)";};};						

_totalAI = (_minAI + round(random _addAI));					
if (_totalAI == 0) exitWith {};								

_triggerPos = getPos _trigger;	
_gradeChances = [_equipType] call fnc_getGradeChances;

_spawnRadius = random(300);
_pos = [_triggerPos,0,_spawnRadius,5,0,2000,0] call BIS_fnc_findSafePos;

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: %1 AI spawns triggered (spawnBandits_random_NR).",_totalAI];};

_unitGroup = createGroup resistance;						//Randomly-spawned AI units are of EAST side.
for "_i" from 1 to _totalAI do {
	private ["_unit"];
	_unit = [_unitGroup,_pos,_gradeChances] call fnc_createAI_NR;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI %1 of %2 spawned (spawnBandits_random_NR).",_i,_totalAI];};
};
_unitGroup selectLeader ((units _unitGroup) select 0);
0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
_nearbyPlayers = _triggerPos nearEntities [["AllVehicles","CAManBase"],300];
{
	if (isPlayer _x)	then {_unitGroup reveal [x,4];};		//Reveal all players in a 300m radius.
} forEach _nearbyPlayers;
_grpArray = _grpArray + [_unitGroup];							//Add the new group to the trigger's group array.
0 = [_trigger,_grpArray,_totalAI] spawn fnc_initTrigger;

true
