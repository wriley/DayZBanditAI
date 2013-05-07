//unitBackpack Version 0.05
/*
        Usage: [_unit,_weapongrade] call fnc_unitBackpack;
		Adds a random backpack to AI, and a chance to add binoculars/NVGoggles.
*/
    private ["_unit","_bag","_gadgetselect","_weapongrade","_bags","_rnd"];
    _unit = _this select 0;
	_weapongrade = _this select 1;
	
	//Generate random backpack based on weapongrade
	switch (_weapongrade) do {
	  case 0: {		//Beginner backpacks
		_bags = DZAI_Backpacks0;
	  };
	  case 1: {		//Residential/Supermarket/Military-grade backpacks
		_bags = DZAI_Backpacks1;
	  };
	  case 2: {		//Military-Grade Backpacks
		_bags = DZAI_Backpacks2;
	};
	  case 3: {		//Coyote Backpack
		_bags = DZAI_Backpacks3;
	 };
	  default {		//Default
	    _bags = ["DZ_Patrol_Pack_EP1"];
	  };
	};
	
	_rnd = floor random (count _bags);
	_bag = _bags select _rnd;
	_unit addBackpack _bag;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Backpack: %1 for AI.",_bag];};

	//Chance to add binoculars or NV Goggles. Binoculars and NVGs are added in this script and not unitTools because the default AI sometimes uses binoculars to view surroundings, and AI uses NVGoggles in darkness.
	_gadgetselect = ((count DZAI_gadgetChances) - 1);
	for "_i" from 0 to _gadgetselect do {
		if ((random 1) < (DZAI_gadgetChances select _i)) then {_unit addWeapon (DZAI_DefaultGadgets select _i);};
	};
