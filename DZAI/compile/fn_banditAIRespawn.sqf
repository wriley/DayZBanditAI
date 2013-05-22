/*
	fn_banditAIRespawn version 0.06

	Usage: _victim call fnc_banditAIRespawn;
	Description: Called internally by an AI's Killed eventhandler. Retrieves a dead AI unit's respawn type, reference location for spawning, their previous group, and uses this information to respawn the unit after a delay. After the delay, the AI unit corpse is deleted.
*/

private ["_victim","_sleepTime","_respawnType","_respawnLoc","_unitGroup","_trigger","_dummy","_unitsAlive","_dummyExists"];
_victim = _this select 0;

_respawnType = _victim getVariable "respawnType";
_respawnLoc = _victim getVariable "respawnLoc";
_unitGroup = _victim getVariable "unitGroup";
_trigger = _victim getVariable "trigger";

_dummyExists = 0;
_unitsAlive = {alive _x} count (units _unitGroup);
//diag_log format ["%1 units alive in group.",_unitsAlive];

if (_unitsAlive < 1) then {
	0 = [_unitGroup] call fnc_spawnDummy;
	/*_dummy = _unitGroup createUnit ["Survivor2_DZ",[0,0,0],[],0,"FORM"];
	[_dummy] joinSilent _unitGroup;
	_dummy setVehicleInit "this hideObject true;this allowDamage false;"; processInitCommands;
	_dummy disableAI "FSM";
    _dummy disableAI "ANIM";
	_dummy disableAI "MOVE";
    _dummy disableAI "TARGET";
    _dummy disableAI "AUTOTARGET";
	//_dummyExists = 1;
	_trigger setVariable ["dummyExists",1,false];
	_trigger setVariable ["dummyUnit",_dummy,false];
	//diag_log "DEBUG: Dummy unit created!";
	*/
};

_sleepTime = (DZAI_respawnTime1 + random(DZAI_respawnTime2));
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI killed, respawning in %1 seconds. Respawn Type %2 (fn_banditAIRespawn).",_sleepTime,_respawnType];};
sleep _sleepTime;

switch (_respawnType) do {
	case 1: {
		0 = [_unitGroup,_respawnLoc,_trigger] call fnc_respawnBandits_random;	//Respawn AI at 'center' marker
	};
	case 2: {
		0 = [_unitGroup,_respawnLoc,_trigger] call fnc_respawnBandits_bldgs;		//Respawn AI at specified distance of a trigger
	};
	case 3: {
		0 = [_unitGroup,_respawnLoc,_trigger] call fnc_respawnBandits_markers;	//Respawn AI at a specified distance of one of a set of markers
	};
};

_dummyExists = _trigger getVariable ["dummyExists",0];
if (_dummyExists == 1) then {
	_dummy = _trigger getVariable ["dummyUnit",objNull];
	[_dummy] joinSilent grpNull;
	deleteVehicle _dummy;
	_trigger setVariable ["dummyExists",0,false];
	_trigger setVariable ["dummyUnit",nil,false];
	diag_log "DEBUG: Dummy Deleted!";
};
sleep 10;
deleteVehicle _victim;
