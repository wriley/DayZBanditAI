/*
	DZAI_seekPlayer
	
	Description: Used for dynamically spawned AI. Creates a MOVE waypoint directing AI to a random player's position, then uses BIN_taskPatrol to create a circular patrol path around player's position.
	
	Last updated: 12:45 AM 6/25/2013
*/

private ["_unitGroup","_playerPos","_waypoint","_patrolDist","_statement","_targetPlayer"];

_unitGroup = _this select 0;
_playerPos = _this select 1;
_patrolDist = _this select 2;
_targetPlayer = _this select 3;

_unitGroup setBehaviour "COMBAT";//"CARELESS"
_unitGroup setSpeedMode "FULL";
_unitGroup setCombatMode "RED";//"BLUE"

_statement = format ["deleteWaypoint[(group this),0]; 0 = [(group this),%1,%2,%3] spawn fnc_BIN_taskPatrol;",_playerPos,_patrolDist,DZAI_debugMarkers];
_waypoint = _unitGroup addWaypoint [_playerPos,0];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointCompletionRadius 40;
_waypoint setWaypointTimeout [0,5,10];
_waypoint setWaypointStatements ["true",_statement];

(units _unitGroup) glanceAt (vehicle _targetPlayer);

//Warn player of AI bandit presence if they have a radio.
if (_targetPlayer hasWeapon "ItemRadio") then {
	[nil,_targetPlayer,"loc",rTITLETEXT,"[RADIO] You are being pursued by a group of bandits.","PLAIN DOWN",0] call RE;
};

true
