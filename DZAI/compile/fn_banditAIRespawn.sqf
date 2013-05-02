/*
	fn_banditAIRespawn version 0.05

	Usage: _victim call fnc_banditAIRespawn;
	Description: Called internally by an AI's Killed eventhandler. Retrieves a dead AI unit's respawn type, reference location for spawning, their previous group, and uses this information to respawn the unit after a delay. After the delay, the AI unit corpse is deleted.
*/

private ["_victim","_sleepTime","_respawnType","_respawnLoc","_unitGroup","_patrolDist","_trigger","_dummy"];
_victim = _this select 0;

_respawnType = _victim getVariable "respawnType";
_respawnLoc = _victim getVariable "respawnLoc";
_unitGroup = _victim getVariable "unitGroup";
_trigger = _victim getVariable "trigger";
_patrolDist = _victim getVariable "patrolDist";

if (count (units _unitGroup) < 2) then {
	_dummy = _unitGroup createUnit ["Survivor2_DZ",[0,0,0],[],0,"FORM"];
	[_dummy] joinSilent _unitGroup;
	_dummy setVehicleInit "this hideObject true;this allowDamage false;"; processInitCommands;
	_dummy disableAI "FSM";
    _dummy disableAI "ANIM";
	_dummy disableAI "MOVE";
    _dummy disableAI "TARGET";
    _dummy disableAI "AUTOTARGET";
	//diag_log "DEBUG: Dummy unit created!";
};

_sleepTime = (DZAI_respawnTime1 + random(DZAI_respawnTime2));
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI killed, respawning in %1 seconds. Respawn Type %2 (fn_banditAIRespawn).",_sleepTime,_respawnType];};
sleep _sleepTime;

switch (_respawnType) do {
	case 1: {
		0 = [_unitGroup,_respawnLoc,_patrolDist,_trigger] call fnc_respawnBandits_random;	//Respawn AI at 'center' marker
	};
	case 2: {
		0 = [_unitGroup,_respawnLoc,_patrolDist,_trigger] call fnc_respawnBandits_bldgs;		//Respawn AI at specified distance of a trigger
	};
	case 3: {
		0 = [_unitGroup,_respawnLoc,_patrolDist,_trigger] call fnc_respawnBandits_markers;	//Respawn AI at a specified distance of one of a set of markers
	};
};

sleep 10;
deleteVehicle _victim;
deleteVehicle _dummy;
