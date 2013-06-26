/*
	spawnBandits_dynamic

	Usage: Called by an activated dynamic trigger when a player unit enters the trigger area.
	
	Description: Spawns a group of AI units some distance from a dynamically-spawned trigger. These units do not respawn after death.
	
	Last updated: 12:23 AM 6/25/2013
*/
private ["_patrolDist","_trigger","_unitGroupArray","_totalAI","_maxDist","_unitGroup","_pos","_targetPlayer","_unitArray","_playerArray","_playerPos","_minDist","_playerCount","_spawnPos","_nearbyTriggers","_findPlayer","_startTime"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};

_patrolDist = _this select 0;
_trigger = _this select 1;
_unitArray = _this select 2;

_startTime = diag_tickTime;

_unitGroupArray = _trigger getVariable ["GroupArray",[]];			
if (count _unitGroupArray > 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Active groups found. Exiting spawn script (spawnBandits_dynamic)";};};						

//Build list of player units within trigger area. A player is randomly chosen from the array. If the player is not over water, then the trigger is moved to surround them and their position is used as a reference point for spawning AI.
_playerArray = [];
{
	if (isPlayer _x) then {
		_playerArray set [(count _playerArray),_x];	
	};
} forEach _unitArray;
_playerCount = (count _playerArray);
if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: %1 units within trigger area. %2 are players. (spawnBandits_dynamic)",(count _unitArray),_playerCount];};

_targetPlayer = _playerArray call BIS_fnc_selectRandom;
_playerPos = getPosATL _targetPlayer;
_spawnPos = [0,0,0];
_findPlayer = true;
if !(surfaceIsWater [_playerPos select 0,_playerPos select 1]) then {
	_trigger setPosATL _playerPos;									
	_spawnPos = _playerPos;
} else {
	_spawnPos = getPosATL _trigger;
	_findPlayer = false;
};
_minDist = 125;
_maxDist = (_minDist + random(175));
_pos = [_spawnPos,_minDist,_maxDist,5,0,2000,0] call BIS_fnc_findSafePos;
//If BIS_fnc_findSafePos fails to find a safe location, then force respawn instead.
if ((_pos distance _spawnPos) > 500) exitWith {
	private["_newPos"];
	_newPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
	_attempts = 0;
	while {(({([_newPos select 0,_newPos select 1] distance _x) < (2*DZAI_dynTriggerRadius - 2*DZAI_dynTriggerRadius*DZAI_dynOverlap)} count DZAI_dynTriggerArray) > 0)&&(_attempts < 3)} do {
		sleep 0.5;
		_attempts = _attempts +1;
		_newPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
		if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Calculated trigger position intersects with at least 1 other trigger (attempt %1/3).",_attempts];};
	};
	_trigger setPos [_newPos select 0,_newPos select 1];
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Could not find suitable location to spawn AI units, relocating trigger to position %1. (spawnBandits_dynamic)",_newPos];};
	if (DZAI_debugMarkers > 0) then {
		private["_marker"];
		_marker = format["trigger_%1",_trigger];
		_marker setMarkerPos _newPos;
	};
};

//Calculate number of AI to spawn. Equation: round(2.6 ln (#players) + 2) +/- 1
_totalAI = -1;
if (_playerCount < 7) then {
	_totalAI = (round(2.6*(ln _playerCount) + 2)) + round(random 1) - round(random 1);				//Calculate number of AI to spawn based on number of players nearby.
} else {
	_totalAI = (6 + round(random 1) - round(random 1));												//Set AI upper limit.
};
//Reduce number of AI spawned if trigger area intersects another activated trigger to avoid overwhelming AI spawns.
_nearbyTriggers = ({((_trigger distance _x) < ((triggerArea _trigger) select 0))&&(triggerActivated _x)} count DZAI_dynTriggerArray) - 1;
if (_nearbyTriggers > 0) then {
	_totalAI = round(_totalAI/(_nearbyTriggers + 1));
	if (DZAI_debugLevel > 0) then {diag_log format ["DEBUG :: Counted %1 other triggers within %2 meters. Number of AI to spawn reduced to %3.",_nearbyTriggers,((triggerArea _trigger) select 0),_totalAI];};
};

//No more exitWith statements, so trigger is committed to spawning at this point.
if (DZAI_debugMarkers > 0) then {
	private["_marker"];
	_marker = format["trigger_%1",_trigger];
	_marker setMarkerPos _spawnPos;
	_marker setMarkerColor "ColorOrange";
	_marker setMarkerAlpha 0.9;				//Dark orange: Activated trigger
};

_unitGroup = grpNull;
if ((random 1) < 0.5) then {				//50% chance to choose East or Resistance as AI side to avoid reaching 140 group/side limit.
	_unitGroup = createGroup east;
} else {
	_unitGroup = createGroup resistance;
};
for "_i" from 1 to _totalAI do {
	private ["_unit"];
	_unit = [_unitGroup,_pos,_trigger] call fnc_createAI_dynamic;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI %1 of %2 spawned (spawnBandits_dynamic).",_i,_totalAI];};
};
_unitGroup selectLeader ((units _unitGroup) select 0);
_unitGroup allowFleeing 0;

//Update AI count
_unitGroup setVariable ["groupSize",_totalAI];
DZAI_numAIUnits = DZAI_numAIUnits + _totalAI;

if (_findPlayer) then {
	//Travel to player's position, then begin patrol.
	0 = [_unitGroup,_spawnPos,_patrolDist,_targetPlayer] spawn DZAI_seekPlayer;
} else {
	//Begin patrol immediately.
	0 = [_unitGroup,_spawnPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
};
{
	_unitGroup reveal [_x,4];
} forEach _playerArray;

_unitGroupArray set [count _unitGroupArray,_unitGroup];
//diag_log format ["DEBUG :: _trigger %1, groupArray %2, _total AI %3.",_trigger,_unitGroupArray,_totalAI];
0 = [_trigger,_unitGroupArray] spawn fnc_initTrigger;

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned an AI groups of %1 units each in %2 seconds (spawnBandits_dynamic).",_totalAI,(diag_tickTime - _startTime)];};
true
