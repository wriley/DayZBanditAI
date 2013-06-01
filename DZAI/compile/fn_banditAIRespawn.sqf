/*
	fn_banditAIRespawn version 0.08

	Usage: _victim call fnc_banditAIRespawn;
	Description: Called internally by an AI's Killed eventhandler. Retrieves a dead AI unit's respawn type, reference location for spawning, their previous group, and uses this information to respawn the unit after a delay. After the delay, the AI unit corpse is deleted.
*/

private ["_victim","_sleepTime","_respawnType","_unitGroup","_trigger","_dummy","_unitsAlive","_dummyExists"];
_victim = _this select 0;

_respawnType = _victim getVariable "respawnType";
_unitGroup = _victim getVariable "unitGroup";
_trigger = _victim getVariable "trigger";

_dummyExists = 0;
_unitsAlive = {alive _x} count (units _unitGroup);
//diag_log format ["%1 units alive in group.",_unitsAlive];

if (_unitsAlive == 0) then {
	DZAI_numAIUnits = (DZAI_numAIUnits + 1);
	_dummy = _unitGroup createUnit ["Survivor2_DZ",[0,0,0],[],0,"FORM"];
	[_dummy] joinSilent _unitGroup;
	_dummy setVehicleInit "this hideObject true;this allowDamage false;"; processInitCommands;
	_dummy disableAI "FSM";
	_dummy disableAI "ANIM";
	_dummy disableAI "MOVE";
	_dummy disableAI "TARGET";
	_dummy disableAI "AUTOTARGET";
	_unitGroup setVariable ["dummyExists",1,false];
	_unitGroup setVariable ["dummyUnit",_dummy,false];
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned 1 dummy AI unit for group %1.",_unitGroup];};
};

_sleepTime = (DZAI_respawnTime1 + random(DZAI_respawnTime2));
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI killed, respawning in %1 seconds. Respawn Type %2 (fn_banditAIRespawn).",_sleepTime,_respawnType];};
sleep _sleepTime;

0 = [_unitGroup,_trigger,_respawnType] call fnc_respawnBandits;

_dummyExists = _unitGroup getVariable ["dummyExists",0];
if (_dummyExists == 1) then {
	_dummy = _unitGroup getVariable ["dummyUnit",objNull];
	[_dummy] joinSilent grpNull;
	deleteVehicle _dummy;
	DZAI_numAIUnits = (DZAI_numAIUnits - 1);
	_unitGroup setVariable ["dummyExists",0,false];
	_unitGroup setVariable ["dummyUnit",nil,false];
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Deleted 1 dummy AI unit for group %1.",_unitGroup];};
};
sleep 10;
deleteVehicle _victim;
