/*
	fnc_unitLoadout
	
	Description: Generates a random rifle weapon given a provided weapongrade value. If weapongrade is 0, a pistol may be generated instead.
	
	Usage: [_unit, _weapongrade] call fnc_unitLoadout;
	
	Last updated: 11:24 AM 7/23/2013
*/
	private ["_unit","_weapongrade","_rifles","_rifle","_magazine","_bags","_gadgetsArray","_bag","_gadget"];
	_unit = _this select 0;
	_weapongrade = _this select 1;

	if (_weapongrade in DZAI_weaponGrades) then {
		switch (_weapongrade) do {
			case 0: {		//Farm / Residential / Supermarket
				if ((random 1) < 0.5) then {
					_rifles = DZAI_Rifles0;
				} else {
					_rifles = DZAI_Pistols0;
				};
			};
			case 1: {		//Military
				_rifles = DZAI_Rifles1;
			};
			case 2: {		//Military Special
				_rifles = DZAI_Rifles2;
			};
			case 3: {		//HeliCrash
				_rifles = DZAI_Rifles3;
			};
		};

		_rifle = _rifles call BIS_fnc_selectRandom;
		_magazine = getArray (configFile >> "CfgWeapons" >> _rifle >> "magazines") select 0;
		_unit addMagazine _magazine;
		_unit addWeapon _rifle;
		_unit selectweapon _rifle;
		if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Created weapon %1 for AI with weapongrade %2. (fn_unitSelectWeapon)",_rifle,_weapongrade];};
		
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
		};

		_bag = _bags call BIS_fnc_selectRandom;
		_unit addBackpack _bag;
		if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Backpack: %1 for AI.",_bag];};
	
	
		if (_weapongrade < 2) then {
			_gadgetsArray = DZAI_gadgets0;
		} else {
			_gadgetsArray = DZAI_gadgets1;
		};
		
		//diag_log format ["DEBUG :: Counted %1 tools in _gadgetsArray.",(count _gadgetsArray)];
		for "_i" from 0 to ((count _gadgetsArray) - 1) do {
			private["_chance"];
			_chance = ((_gadgetsArray select _i) select 1);
			//diag_log format ["DEBUG :: %1 chance to add gadget.",_chance];
			if ((random 1) < _chance) then {
				_gadget = ((_gadgetsArray select _i) select 0);
				_unit addWeapon _gadget;
				//diag_log format ["DEBUG :: Added gadget %1 as loot to AI inventory.",_gadget];
			};
		};
		
		//If unit has weapongrade 2 or 3 and was not given NVGs, give the unit temporary NVGs which will be removed at death. Set DZAI_tempNVGs to true in variables config to enable temporary NVGs.
		if (DZAI_tempNVGs && (daytime < 6 || daytime > 20))  then {
			if (!(_unit hasWeapon "NVGoggles") && (_weapongrade > 1)) then {
				_unit addWeapon "NVGoggles";
				_unit setVariable["removeNVG",1,false];
				if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Generated temporary NVGs for AI.";};
			};
		};
	} else {
		diag_log format ["DZAI Error :: Invalid weapongrade value provided: %1",_weapongrade];
	};
	