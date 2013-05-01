/*
	spawnBandits_random version 0.05

	Usage: [_spawnNumAI,_spawnMarker,_patrolDist,_spawnRadius] spawn spawnBandits_random;
	Description: Called through (mapname)_config.sqf. Spawns a specified number groups of AI units some distance from a provided reference location.
*/
private ["_patrolDist","_spawnMarker","_spawnRadius","_spawnNumAI","_markerPos"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};

_spawnNumAI = _this select 0;							//Number of AI units to spawn
_spawnMarker = _this select 1;							//Reference marker ("center")
_patrolDist = _this select 2;
_spawnRadius = _this select 3;							//Maximum distance from reference marker to generate random spawn positions.

_markerPos = getMarkerPos _spawnMarker;					//Position to spawn AI unit. Also used as the respawn position.
	
if (_spawnNumAI == 0) exitWith {};						// Only run script if there is at least one bandit to spawn
DZAI_numAIUnits = (DZAI_numAIUnits + _spawnNumAI);
	
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: %1 AI spawns triggered (spawnBandits_random).",_spawnNumAI];};

for "_i" from 1 to _spawnNumAI do {
	private ["_pos","_unitGroup","_unit"];
	sleep DZAI_spawnRandomDelay;
	_unitGroup = createGroup east;						//Randomly-spawned AI units are independent units of EAST side. (one group per unit)
	_pos = [_markerPos,0,_spawnRadius,5,0,2000,0] call BIS_fnc_findSafePos;
	_unit = [_unitGroup,_pos,_patrolDist,0,_markerPos,1] call fnc_createAI;
	if ((leader _unitGroup) == _unit) then {_nul = [_unitGroup,_pos,_patrolDist,DZAI_debugMarkers] execVM "DZAI\BIN_taskPatrol.sqf";};
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI %1 of %2 spawned (spawnBandits_random).",_i,_spawnNumAI];};
};
