/*
	respawnBandits_random version 0.05
	
	Usage: [_unitGroup,_respawnLoc,_patrolDist,_spawnRadius] spawn respawnBandits_random;
	Description: Called internally by fn_banditAIRespawn.sqf. Calls fn_createAI to respawn a unit at a random distance from a stored reference location.
*/
private ["_patrolDist","_respawnLoc","_spawnRadius","_pos","_unitGroup","_unit"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};

_unitGroup = _this select 0;
_respawnLoc = _this select 1;							//Position to spawn AI unit. Also used as the respawn position.
_patrolDist = _this select 2;
_spawnRadius = _this select 3;							//Maximum distance from reference marker to generate random spawn positions.

DZAI_numAIUnits = (DZAI_numAIUnits + 1);

_pos = [_respawnLoc,0,_spawnRadius,5,0,2000,0] call BIS_fnc_findSafePos;
_unit = [_unitGroup,_pos,_patrolDist,0,_respawnLoc,1] call fnc_createAI;
if ((leader _unitGroup) == _unit) then {_nul = [_unitGroup,_pos,_patrolDist,DZAI_debugMarkers] execVM "DZAI\BIN_taskPatrol.sqf";};
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: 1 AI unit respawned (respawnBandits_random)."];};

true
