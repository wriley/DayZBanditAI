//unitBackpack Version 0.05
/*
        Usage: [_unit] call fnc_unitBackpack;
		Adds a random backpack to AI, and a chance to add binoculars/NVGoggles.
*/
    private ["_unit","_bag","_gadgetselect"];
    _unit = _this select 0;
	_bag = DZAI_DefaultStartPack;
	
	//Generate random backpack
	if ((random 1) < DZAI_betterBackPack) then {		//Decide whether to select a non-default backpack.
		_bag = DZAI_DefaultBackpacks call BIS_fnc_selectRandom;
	};
	_unit addBackpack _bag;							// Add backpack
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Backpack: %1 for AI.",_bag];};

	//Chance to add binoculars or NV Goggles. Binoculars and NVGs are added in this script and not unitTools because the default AI sometimes uses binoculars to view surroundings, and AI uses NVGoggles in darkness.
	_gadgetselect = ((count DZAI_gadgetChances) - 1);
	for "_i" from 0 to _gadgetselect do {
		if ((random 1) < (DZAI_gadgetChances select _i)) then {_unit addWeapon (DZAI_DefaultGadgets select _i);};
	};
