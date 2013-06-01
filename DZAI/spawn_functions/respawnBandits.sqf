/*
	respawnBandits version 0.08
	
	Usage: [_unitGroup,_respawnLoc,_patrolDist,_trigger] call respawnBandits;
	Description: Called internally by fn_banditAIRespawn.sqf. Calls fn_createAI to respawn a unit near a randomly selected building from a stored reference location.
	
*/

private ["_unitGroup","_trigger","_grpArray","_triggerPos","_patrolDist","_gradeChances","_spawnPositions","_p","_unit","_pos","_respawnType"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};	
	
//Editables and default values
_unitGroup = _this select 0;
_trigger = _this select 1;				//Trigger that spawned the AI unit.
_respawnType = _this select 2;

_grpArray = _trigger getVariable ["GroupArray",[]];
if !(_unitGroup in _grpArray) exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Group not found in trigger's group array. Cancelling respawn script. (respawnBandits)";};};
_triggerPos = getpos _trigger;
_patrolDist = _trigger getVariable ["patrolDist",125];
_gradeChances = _trigger getVariable ["gradeChances",DZAI_gradeChances1];
_spawnPositions = _trigger getVariable "locationArray";

//_spawnPositions = [_triggerPos,300] call fnc_getBuildingPositions;//Find all usable building positions of the found buildings.
	
_p = _spawnPositions call BIS_fnc_selectRandom;
_pos = null;
if (_respawnType == 2) then {
	_pos = [_p, 2, 100, 5, 0, 2000, 0] call BIS_fnc_findSafePos;
	diag_log "DEBUG :: Spawning AI from building positions.";
} else {
	_pos = _p;
	diag_log "DEBUG :: Spawning AI from marker positions.";
};

_unit = [_unitGroup,_pos,_trigger,_respawnType,_gradeChances] call fnc_createAI;
_unitGroup selectLeader _unit;
if ((count (waypoints _unitGroup)) < 2) then {0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;	/*Start patrolling after each group is fully spawned.*/};
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: 1 AI unit respawned (respawnBandits)."];};

true
