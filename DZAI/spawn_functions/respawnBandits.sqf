/*
	respawnBandits version 0.9.0
	
	Usage: [_unitGroup,_respawnLoc,_patrolDist,_trigger] call respawnBandits;
	Description: Called internally by fn_banditAIRespawn.sqf. Calls fn_createAI to respawn a unit near a randomly selected building from a stored reference location.
	
*/

private ["_unitGroup","_trigger","_grpArray","_triggerPos","_patrolDist","_gradeChances","_spawnPositions","_p","_unit","_pos","_respawnType"];
if (!isServer) exitWith {};
	
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
	
_p = _spawnPositions call BIS_fnc_selectRandom;
_pos = null;
if (_respawnType == 2) then {
	_pos = [_p, 2, 100, 5, 0, 2000, 0] call BIS_fnc_findSafePos;
	if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Respawning AI from building positions (respawnBandits).";};
} else {
	_pos = _p;
	if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Respawning AI from marker positions (respawnBandits).";};
};

_unit = [_unitGroup,_pos,_trigger,_respawnType,_gradeChances] call fnc_createAI;
_unitGroup selectLeader _unit;
if ((count (waypoints _unitGroup)) < 2) then {
	if ((typeName _patroldist) == "SCALAR") then {
		0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
	} else {
		0 = [_unitGroup,_patrolDist,DZAI_debugMarkers] spawn fnc_DZAI_customPatrol;
	};
};
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: 1 AI unit respawned (respawnBandits)."];};

true
