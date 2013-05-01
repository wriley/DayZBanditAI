/*
	respawnBandits_markers version 0.05
	
	Usage: [_unitGroup,_markerArray,_patrolDist,_trigger] call fn_respawnBandits_markers;
	Description: Called internally by fn_banditAIRespawn.sqf. Calls fn_createAI to respawn a unit near a randomly selected marker from a stored array of reference markers.
*/
private ["_markerArray","_marker","_pos","_patrolDist","_unitGroup","_unit","_trigger","_grpArray","_respawnLoc","_markerPos","_triggerPos"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};

_unitGroup = _this select 0;
_markerArray = _this select 1;
_patrolDist = _this select 2;
_trigger = _this select 3;							//Trigger that spawned the AI unit.

if (!triggerActivated _trigger) exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: No players present in trigger area. Cancelling respawn script. (respawnBandits_markers)";};};			//Exit script if trigger has been reactivated since _waitTime seconds has passed.
DZAI_numAIUnits = (DZAI_numAIUnits + 1);

_marker = _markerArray call BIS_fnc_selectRandom;
_respawnLoc = getMarkerPos _marker;
_triggerPos = getpos _trigger;

_unit = [_unitGroup,_respawnLoc,_patrolDist,_trigger,_markerArray,3] call fnc_createAI;		//test using exact marker position
if ((leader _unitGroup) == _unit) then {_nul = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] execVM "DZAI\BIN_taskPatrol.sqf";	/*Start patrolling after each group is fully spawned.*/};
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: 1 AI unit respawned (respawnBandits_markers)."];};

true
