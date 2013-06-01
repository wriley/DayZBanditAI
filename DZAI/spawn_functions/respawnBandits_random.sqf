/*
	respawnBandits_random version 0.06
	
	Usage: [_unitGroup,_respawnLoc,_patrolDist,_spawnRadius] spawn respawnBandits_random;
	Description: Called internally by fn_banditAIRespawn.sqf. Calls fn_createAI to respawn a unit at a random distance from a stored reference location.
*/
private ["_unitGroup","_respawnLoc","_trigger","_grpArray","_triggerPos","_patrolDist","_gradeChances","_spawnRadius","_unit","_pos"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};

_unitGroup = _this select 0;
//_respawnLoc = _this select 1;							//Position to spawn AI unit. Also used as the respawn position.
_trigger = _this select 2;							

_grpArray = _trigger getVariable ["GroupArray",[]];
if !(_unitGroup in _grpArray) exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Group not found in trigger's group array. Cancelling respawn script. (respawnBandits_random)";};};
_triggerPos = getpos _trigger;
_patrolDist = _trigger getVariable ["patrolDist",125];
_gradeChances = _trigger getVariable ["gradeChances",DZAI_gradeChances1];

_spawnRadius = 50 + random(350);
_pos = [_triggerPos,0,_spawnRadius,5,0,2000,0] call BIS_fnc_findSafePos;

_unit = [_unitGroup,_pos,_trigger,1,_gradeChances] call fnc_createAI;		
_unitGroup selectLeader _unit;
if ((count (waypoints _unitGroup)) < 2) then {0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;};
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: 1 AI unit respawned at %3(respawnBandits_random).",_pos];};
