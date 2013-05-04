/*
	Usage: [_unit] call fnc_setBehaviour;
*/
	// private[""];
	_unit = _this select 0;
	
	_unit enableAI "TARGET";
	_unit enableAI "AUTOTARGET";
	_unit enableAI "MOVE";
	_unit enableAI "ANIM";
	_unit enableAI "FSM";
	_unit allowDammage true;
	_unit allowFleeing (DZAI_minFleeChance + random DZAI_addFleeChance);
	