/*
	fn_findKiller
	
	Description: If an AI unit is killed, surviving members of their group will aggressively pursue the killer for a set amount of time. After this amount of time has passed, the group will return to their patrol state.
	
	Last updated: 1:15 AM 6/23/2013
*/
private ["_killerPos","_unitGroup","_victim","_killer","_inPursuit","_groupKIA","_trigger","_detectRange","_chaseDist"];

sleep 3;

_victim = _this select 0;
_killer = vehicle (_this select 1);
_unitGroup = _this select 2;

_groupKIA = _unitGroup getVariable ["groupKIA",false];
if (_groupKIA) exitWith {diag_log "DEBUG :: All units in group are dead.";};

_inPursuit = _unitGroup getVariable ["inPursuit",false];
if (_inPursuit) exitWith {diag_log "DEBUG :: Group is already in pursuit of a target.";};

//End of exitWith statements. Mark group as in pursuit state.
_unitGroup setVariable ["inPursuit",true];

//Calculate detection range.
_detectRange = (350 + (random 100) - (random 100));

if ((_victim distance _killer) < _detectRange) then {
	diag_log format ["Group %1 has entered pursuit state. Target: %2.",_unitGroup,_killer];
	_unitGroup reveal [_killer,4];
	
	//Calculate maximum pursuit range, using victim's location as origin.
	_chaseDist = (600 + (random 100) - (random 100));
	
	//Temporarily cancel patrol state.
	_unitGroup lockWP true;
	
	_endTime = (time + 120);
	//Begin pursuit state.
	while {(time < _endTime) && (alive _killer) && (!_groupKIA) && !(isNull _killer) && !(isNull _unitGroup) && ((_victim distance _killer) < _chaseDist)} do {
		_killerPos = getPos _killer;
		(units _unitGroup) glanceAt (vehicle _targetPlayer);
		{if (alive _x) then {_x moveTo _killerPos; _x doMove _killerPos; diag_log "AI unit in pursuit.";};} forEach (units _unitGroup);
		diag_log format ["DEBUG :: AI group %3 in pursuit state. Time: %1/%2.",time,_endTime,_unitGroup];
		if (_killer hasWeapon "ItemRadio") then {
			[nil,_killer,"loc",rTITLETEXT,"[RADIO] You are being pursued by a group of bandits.","PLAIN DOWN",0] call RE;
		};
		sleep 19.5;
		_groupKIA = _unitGroup getVariable ["groupKIA",false];
		sleep 0.5;
	};
};
//Exit if group was forced to despawn because player left the trigger area.
if (isNull _unitGroup) exitWith {};

//End of pursuit state. Re-enable patrol state.
_unitGroup setVariable ["inPursuit",false];
diag_log format ["DEBUG :: Pursuit state ended for group %1.",_unitGroup];
_unitGroup lockWP false;

//Exit script if pursuit was stopped due to no live units.
_groupKIA = _unitGroup getVariable ["groupKIA",false];
if (_groupKIA) exitWith {diag_log "DEBUG :: All units in group have been killed.";};

//Return to patrol state
_unitGroup setCurrentWaypoint ((waypoints _unitGroup) call BIS_fnc_selectRandom);
diag_log format ["DEBUG :: Patrol state restored for group %1.",_unitGroup];
