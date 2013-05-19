/*
	spawnTriggers_random version 0.06

	Usage: 
	Description: 
*/
private ["_numTriggers","_refMarker","_maxDist","_markerPos", "_trigOnAct","_equipType"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};

_numTriggers = _this select 0;							//Number of triggers to create
_refMarker = _this select 1;							//Reference marker ("center")
_patrolDist = _this select 2;
_maxDist = _this select 3;								//Maximum distance from reference marker to generate triggers
_equipType = if ((count _this) > 4) then {_this select 4} else {1};

if (_numTriggers == 0) exitWith {};						// Exit script if there is nothing to spawn

_markerPos = getMarkerPos _refMarker;					//Get position of reference marker
_trigOnAct = format["[%1,%2,%3,thisTrigger,%4] call fnc_spawnBandits_random_NR",DZAI_randMinAI,DZAI_randAddAI,_patroldist,_equipType];

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: %1 Trigger spawns triggered (spawnTriggers_random).",_numTriggers];};

for "_i" from 1 to _numTriggers do {
	private ["_trigger","_trigPos"];
	sleep DZAI_spawnRandomDelay;
	//_trigPos = [_markerPos,0,_maxDist,5,0,2000,0] call BIS_fnc_findSafePos;
	_trigPos = [_markerPos,random(_maxDist),random(360),false,[1,500]] call SHK_pos;
	if (DZAI_debugMarkers > 0) then {													//Adjust to debugLevel > 1
		private ["_markername","_marker"];
		_markername = format["marker_%1",floor(random 200)];
		_marker = createMarker[_markername,_trigPos];
		_marker setMarkerShape "ICON";
		_marker setMarkerType "WAYPOINT";
		_marker setMarkerBrush "SOLID";
		_marker setMarkerColor "ColorYellow";
	};
	_trigger = createTrigger ["EmptyDetector",_trigPos];
	_trigger setTriggerArea [500, 500, 0, false];
	_trigger setTriggerActivation ["ANY", "PRESENT", true];
	_trigger setTriggerTimeout [10, 15, 20, true];
	_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;",_trigOnAct, "[thisTrigger] spawn fnc_despawnBandits_NR;"];
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Trigger %1 of %2 spawned at %3 (spawnTriggers_random).",_i,_numTriggers,_trigPos];};
};
