/*
	fnc_unitSelectPistol
	
	Description: Generates a pistol weapon as loot for AI unit given a provided weapongrade value, only if unit does not already have a pistol weapon.
	
	Usage: [_unit, _weapongrade] call fnc_unitSelectPistol;
	
	Last updated: 4:36 PM 6/8/2013
*/
	private ["_unit","_pistol","_pistols","_weapongrade","_magazine","_nmags","_currentWeapon"];
	_unit = _this select 0;
	_weapongrade = _this select 1;
	
	_currentWeapon = currentWeapon _unit;
	waitUntil {sleep 0.01; !isNil "_currentWeapon"};
	if ((getNumber (configFile >> "CfgWeapons" >> _currentWeapon >> "type")) == 2) exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Unit already has a handgun. Exiting selectPistol script."};}; 
	_nmags = floor (random DZAI_maxPistolMags) + 1;						// Number of mags to generate for selected weapon, with a minimum of zero.
	
	switch (_weapongrade) do {
	  case 0: {		//Farm / Residential / Supermarket
		_pistols = DZAI_Pistols0;
	  };
	  case 1: {		//Military + Civilian
		_pistols = DZAI_Pistols1;
	  };
	  case 2: {		//Military Only
		_pistols = DZAI_Pistols2;
	  };
	  case 3: {		//Military Only
		_pistols = DZAI_Pistols3;
	  };
	  default {		//Default - Give a Revolver if weapongrade is not within 0-3 or not declared.
	    _pistols = ["revolver_EP1"];
	  };
	};
	
	_pistol = _pistols call BIS_fnc_selectRandom;
	_magazine = getArray (configFile >> "CfgWeapons" >> _pistol >> "magazines") select 0;
	for "_i" from 1 to _nmags do {
			_unit addMagazine _magazine;
	};
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Pistol: %1 for AI.",_pistol];};
	
	_unit addWeapon _pistol;
	