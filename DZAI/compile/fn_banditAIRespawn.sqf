/*
	fn_banditAIRespawn version 0.05

	Usage: _victim call fnc_banditAIRespawn;
	Description: Called internally by an AI's Killed eventhandler. Retrieves a dead AI unit's respawn type, reference location for spawning, their previous group, and uses this information to respawn the unit after a delay. After the delay, the AI unit corpse is deleted.
*/

private ["_victim","_sleepTime","_respawnType","_respawnLoc","_unitGroup","_patrolDist"];
_victim = _this select 0;

_respawnType = _victim getVariable ["respawnType",0];
if (_respawnType == 0) then {diag_log "Respawn type not found";};

_respawnLoc = _victim getVariable ["respawnLoc",0];
if (_respawnType == 0) then {diag_log "Respawn location not found";};

_unitGroup = _victim getVariable ["unitGroup",0];
if (_respawnType == 0) then {diag_log "Unit's group not found";};

_trigger = _victim getVariable ["trigger",0];
if (_respawnType == 0) then {diag_log "Spawn trigger not found";};

_patrolDist = _victim getVariable ["patrolDist",0];
if (_patrolDist == 0) then {diag_log "Patrol distance not found";};

_sleepTime = (DZAI_respawnTime1 + random(DZAI_respawnTime2));
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI killed, respawning in %1 seconds. Respawn Type %2 (fn_banditAIRespawn).",_sleepTime,_respawnType];};
sleep _sleepTime;

switch (_respawnType) do {
	case 1: {
		_nul = [_unitGroup,_respawnLoc,_patrolDist,4000] spawn fnc_respawnBandits_random;	//Respawn AI at 'center' marker
	};
	case 2: {
		_nul = [_unitGroup,_respawnLoc,_patrolDist,_trigger] call fnc_respawnBandits_bldgs;		//Respawn AI at specified distance of a trigger
	};
	case 3: {
		_nul = [_unitGroup,_respawnLoc,_patrolDist,_trigger] call fnc_respawnBandits_markers;		//Respawn AI at a specified distance of one of a set of markers
	};
};

sleep 10;
deleteVehicle _victim;

