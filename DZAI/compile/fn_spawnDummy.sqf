/*
	fnc_spawnDummmy version 0.07
*/

private["_dummy","_unitGroup"];
_unitGroup = _this select 0;

_dummy = _unitGroup createUnit ["Survivor2_DZ",[0,0,0],[],0,"FORM"];
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
diag_log "DEBUG: Dummy unit created!";
