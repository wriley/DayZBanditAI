/*
	fnc_updateDead
	
	Description:
	
	Usage:
	
	Last Updated: 3:05 PM 6/24/2013
*/

private ["_victim","_unitsAlive","_trigger","_grpCount","_grpArray","_unitGroup","_dummy"];

_victim = _this select 0;
_trigger = _victim getVariable "trigger";
_unitGroup = (group _victim);

_deadUnits = _unitGroup getVariable ["deadUnits",[]];
_deadUnits set [(count _deadUnits),_victim];
_unitGroup setVariable ["deadUnits",_deadUnits];

_unitsAlive = {alive _x} count (units _unitGroup);

//diag_log format ["Units alive in group %1: %2.",_unitGroup,_unitsAlive];
if (_unitsAlive == 0) then {	//Continue only when all units of the group have died.
	private["_groupSize"];
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: All units in group %1 are dead. Spawning temporary dummy unit for group. (fn_updateDead).",_unitGroup];};

	//Create temporary dummy unit, will be deleted during despawn process.
	_dummy = _unitGroup createUnit ["Survivor2_DZ",[0,0,0],[],0,"FORM"];
	[_dummy] joinSilent _unitGroup;
	_dummy setVehicleInit "this hideObject true;this allowDamage false;"; processInitCommands;
	_dummy disableAI "FSM";
	_dummy disableAI "ANIM";
	_dummy disableAI "MOVE";
	_dummy disableAI "TARGET";
	_dummy disableAI "AUTOTARGET";
	
	_unitGroup setVariable ["groupKIA",true];

	//Update AI count
	_groupSize = _unitGroup getVariable "groupSize";
	DZAI_numAIUnits = DZAI_numAIUnits - _groupSize;
	_unitGroup setVariable ["groupSize",0];
	
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: All groups spawned by trigger %1 are dead. Starting force respawn. (fn_updateDead).",_trigger];};
	_trigger setVariable ["forceDespawn",true];
	[_trigger] spawn fnc_despawnBandits_dynamic;	//force despawning even if players are present in trigger area.
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI killed, deleting body in %1 seconds. (fn_updateDead).",DZAI_dynRemoveDeadWait];};
