/*
	respawnBandits_bldgs version 0.06
	
	Usage: [_unitGroup,_respawnLoc,_patrolDist,_trigger] call respawnBandits_bldgs;
	Description: Called internally by fn_banditAIRespawn.sqf. Calls fn_createAI to respawn a unit near a randomly selected building from a stored reference location.
	
*/
private ["_patrolDist","_respawnLoc","_p","_pos","_buildingPositions","_unitGroup","_posVariance","_unit","_trigger","_grpArray","_gradeChances","_triggerPos"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};	
	
//Editables and default values
_posVariance = 100;						//Maximum variance in generated position.

_unitGroup = _this select 0;
//_respawnLoc = _this select 1;			//Position to spawn AI unit. Also used as the respawn position.
_trigger = _this select 2;				//Trigger that spawned the AI unit.

_grpArray = _trigger getVariable "GroupArray";
if !(_unitGroup in _grpArray) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Extended Debug: No players present in trigger area. Cancelling respawn script. (respawnBandits_bldgs)";};};
_triggerPos = getpos _trigger;
_patrolDist = _trigger getVariable ["patrolDist",125];
_gradeChances = _trigger getVariable ["gradeChances",DZAI_gradeChances1];
DZAI_numAIUnits = (DZAI_numAIUnits + 1);

_nearbldgs = nearestObjects [_triggerPos, ["Building"], 300];
_buildingPositions = [_nearbldgs] call fnc_getBuildingPositions;
	
_p = _buildingPositions call BIS_fnc_selectRandom;
_pos = [_p, 2, _posVariance, 5, 0, 2000, 0] call BIS_fnc_findSafePos;

_unit = [_unitGroup,_pos,_trigger,2,_gradeChances] call fnc_createAI;
_unitGroup selectLeader _unit;
if ((count (waypoints _unitGroup)) < 2) then {_nul = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] execVM "DZAI\scripts\BIN_taskPatrol.sqf";	/*Start patrolling after each group is fully spawned.*/};
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: 1 AI unit respawned (respawnBandits_bldgs)."];};

true
