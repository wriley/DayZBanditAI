/*
	fnc_createGroup
	
	Description: Spawns an independent AI unit. Called internally by spawnBandits_random, respawnBandits_random, spawnBandits_bldgs, respawnBandits_bldgs, spawnBandits_markers, respawnBandits_markers.
	
	Usage: [_unitGroup,_spawnPos,_patrolDist,_trigger,_respawnLoc,_respawnType] call fnc_createGroup;
	
	_unitGroup: Group to spawn AI unit. (Building-spawned AI: side 'resistance', Random/Marker-spawned AI: side 'east')
	_spawnPos: Position to create AI unit.
	_trigger: The trigger object responsible for spawning the AI unit.
	_respawnType: 2 (Respawn at a building near the trigger), 3 (Respawn randomly at a randomly selected marker)
	_gradeChances: weapongrade probabilities to be used for generating equipment
	
	Last updated: 8:24 PM 7/10/2013
	
*/
private ["_totalAI","_spawnPos","_unitGroup","_trigger","_gradeChances","_unitType"];
if (!isServer) exitWith {};

_totalAI = _this select 0;
_unitGroup = if (isNull (_this select 1)) then {createGroup (call DZAI_getFreeSide)} else {_this select 1};
_spawnPos = _this select 2;
_trigger = _this select 3;
_gradeChances = if ((count _this) > 4) then {_unitType = 0; _this select 4} else {_unitType = 1; DZAI_gradeChancesDyn};

for "_i" from 1 to _totalAI do {
	private ["_type","_unit","_weapongrade"];
	_type = DZAI_BanditTypes call BIS_fnc_selectRandom;									// Select skin of AI unit
	_unit = _unitGroup createUnit [_type, _spawnPos, [], 0, "FORM"];					// Spawn the AI unit
	[_unit] joinSilent _unitGroup;														// Add AI unit to group

	_unit setVariable ["trigger",_trigger];												// Record the trigger from which the AI unit was spawned
	_unit setVariable ["gethit",[0,0,0,0]];												// Set unit health
	_unit setVariable ["unconscious",false];											// Set unit consciousness
	_unit setVariable ["unitType",_unitType];											// Set unit type (0: static, 1: dynamic)

	if (DZAI_zAggro) then {
		_unit addEventHandler ["Fired", {_this spawn ai_fired;}];};						// Unit firing causes zombie aggro in the area, like player.
	if (DZAI_taserAI) then {
		_unit addEventHandler ["HandleDamage",{_this call DDOPP_taser_handleHit;_this call fnc_damageAI;}];
	} else {
		_unit addEventHandler ["HandleDamage",{_this call fnc_damageAI;}];};
	_unit addEventHandler ["Killed",{_this call DZAI_unitDeath;[_this,"banditKills"] call local_eventKill;(_this select 0) setDamage 1;}];
		
	_unit setVehicleInit "if (isServer) then {[this] spawn fnc_unit_resupply;};";		// Background-running script that automatically reloads ammo when depleted, and sets hostility to nearby zombies
	_weapongrade = [DZAI_weaponGrades,_gradeChances] call fnc_selectRandomWeighted;
	[_unit, _weapongrade] call fnc_unitLoadout;											// Assign unit loadout
	0 = [_unit, _weapongrade] spawn DZAI_setSkills;										// Set AI skill

	_unit enableAI "TARGET";
	_unit enableAI "AUTOTARGET";
	_unit enableAI "MOVE";
	_unit enableAI "ANIM";
	_unit enableAI "FSM";
	_unit allowDammage true;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Spawned AI Type %1 with weapongrade %2 (fnc_createGroup).",_type,_weapongrade];};
};

_unitGroup selectLeader ((units _unitGroup) select 0);
_unitGroup allowFleeing 0;
_unitGroup setVariable ["groupSize",_totalAI];
processInitCommands;

_unitGroup
