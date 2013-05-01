/*
	aiBrain script adapted from SARGE AI
	Handles AI ammo reload and zombie hostility. Called by fn_createAI.sqf upon AI unit creation.
*/
private["_unit","_currentWeapon","_weaponMagazine","_needsReload","_nearbyZeds","_marker","_markername"];
if (!isServer) exitWith {};
sleep 0.5;
if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI brain active.";};

_unit = _this select 0;								//Unit to monitor/reload ammo
_currentWeapon = currentWeapon _unit;				//Retrieve unit's current weapon
sleep 0.002;										//Short sleep necessary for script to retrieve current weapon
_weaponMagazine = getArray (configFile >> "CfgWeapons" >> _currentWeapon >> "magazines") select 0;	//Retrieve ammo used by unit's current weapon

while {alive _unit} do {							//Run script for as long as unit is alive
	if (DZAI_zombieEnemy && DZAI_zombiesEnabled) then {	//Run only if both zombie hostility and zombie spawns are enabled.
		_nearbyZeds = (position _unit) nearEntities ["zZombie_Base",DZAI_zDetectRange];
		{
			if(rating _x > -10000) then {
                _x addrating -10000;
                if(DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI brain recognizes an nearby zombie as enemy.";};
            };
		} forEach _nearbyZeds;
	};

	_needsReload = true;
	if (_weaponMagazine in magazines _unit) then {	//If unit already has at least one magazine, assume reload is not needed
		_needsReload = false;
	}; 
	if ((_unit ammo _currentWeapon == 0) || (_needsReload))  then {		//If active weapon has no ammunition, or AI has no magazines, remove empty magazines and add a new magazine.
		_unit removeMagazines _weaponMagazine;
		_unit addMagazine _weaponMagazine;
		if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI ammo depleted, added one magazine to AI unit.";};
	};
	sleep DZAI_refreshRate;										//Check again in x seconds.
};

if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI killed, AI brain deactivated.";};
