/*
	respawnBandits_markers version 0.06
	
	Usage: [_unitGroup,_markerArray,_patrolDist,_trigger] call fn_respawnBandits_markers;
	Description: Called internally by fn_banditAIRespawn.sqf. Calls fn_createAI to respawn a unit at a randomly selected marker.
*/
private ["_markerArray","_marker","_patrolDist","_unitGroup","_unit","_trigger","_grpArray","_respawnLoc","_triggerPos","_gradeChances"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};

_unitGroup = _this select 0;
_markerArray = _this select 1;
_trigger = _this select 2;							//Trigger that spawned the AI unit.

_grpArray = _trigger getVariable "GroupArray";
if !(_unitGroup in _grpArray) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Extended Debug: No players present in trigger area. Cancelling respawn script. (respawnBandits_markers)";};};
_patrolDist = _trigger getVariable ["patrolDist",125];
_gradeChances = _trigger getVariable ["gradeChances",DZAI_gradeChances1];
DZAI_numAIUnits = (DZAI_numAIUnits + 1);

_marker = _markerArray call BIS_fnc_selectRandom;
_respawnLoc = getMarkerPos _marker;
_triggerPos = getpos _trigger;

_unit = [_unitGroup,_respawnLoc,_trigger,_markerArray,3,_gradeChances] call fnc_createAI;		//Spawn unit at exact marker position (Marker must be placed in a clear area that can hold at least 5 units)
_unitGroup selectLeader _unit;
if ((count (waypoints _unitGroup)) < 2) then {_nul = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] execVM "DZAI\BIN_taskPatrol.sqf";	/*Start patrolling after each group is fully spawned.*/};
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: 1 AI unit respawned (respawnBandits_markers)."];};

true
