/*
	Zargabad static trigger configuration 
	
	Last updated: 11:44 AM 6/7/2013
	
*/

#include "spawn_markers\markers_zargabad.sqf"	//Load manual spawn point definitions file.

if (DZAI_verifyTables) then {
	waitUntil {sleep 0.1; !isNil "DZAI_classnamesVerified"};	//Wait for DZAI to finish verifying classname arrays.
} else {
	waitUntil {sleep 0.1; !isNil "DZAI_weaponsInitialized"};	//Wait for DZAI to finish building weapon classname arrays.
};

//begin triggers

_this = createTrigger ["EmptyDetector", [2873.4944, 4976.3965]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "Nango";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [3416.9648, 4627.6279]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "Road";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_3 = _this;

_this = createTrigger ["EmptyDetector", [3674.8208, 4226.9893]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "ZargabadW";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_5 = _this;

_this = createTrigger ["EmptyDetector", [4262.1069, 4128.3735]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "ZargabadCenter";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_9 = _this;

_this = createTrigger ["EmptyDetector", [4152.8892, 3578.9033, 2.7623634]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "Yarum";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_11 = _this;

_this = createTrigger ["EmptyDetector", [3937.438, 2765.1133]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "Barracks";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,2,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_13 = _this;

_this = createTrigger ["EmptyDetector", [3512.5876, 1975.5415, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "Shahbaz";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_15 = _this;

_this = createTrigger ["EmptyDetector", [4174.6782, 4694.23]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "ZargabadN";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_17 = _this;

_this = createTrigger ["EmptyDetector", [4880.3423, 4551.333]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "The Villa";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_19 = _this;

_this = createTrigger ["EmptyDetector", [4902.1299, 6153.4834, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "Military Base";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,2,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_21 = _this;

_this = createTrigger ["EmptyDetector", [3968.9099, 6074.7681]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "Hazar Bagh";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_23 = _this;

_this = createTrigger ["EmptyDetector", [1965.295, 4659.1294]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "Azizyt";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_25 = _this;

_this = createTrigger ["EmptyDetector", [4731.5024, 3923.0283]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "ZargabadE";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_27 = _this;

//end triggers

//Custom waypoint file
#include "custom_configs\zargabad_custom_config.sqf"	//Custom patrol definitions file

/*
	Custom Marker Requirements:
	
	1. Marker shape must be Ellipse (Could be rectangular but the function will consider the marker as elliptical regardless)
	2. Marker should have identical x and y dimensions. If they are different, the smaller dimension will be used instead.
		
	The area covered by the marker will be used as the patrol and spawning area.
	
	Example Marker:
	
	_this = createMarker ["dzaicustomspawntest", [6650.9883, 9411.541, -6.1035156e-005]];
	_this setMarkerShape "ELLIPSE";
	_this setMarkerType "Empty";
	_this setMarkerBrush "Solid";
	_this setMarkerSize [200, 200];
	_marker_15 = _this;
	
	Note: This marker will be used in the example further below.
*/

//----------------------------Add your custom markers here----------------------------


//----------------------------End of custom markers----------------------------

/*
	DZAI_spawn format: [marker,number of AI to spawn,equip type (0-3)] call DZAI_spawn;
	
	Example: Using the above example marker to create a custom spawn area, an example would be:
	
	["dzaicustomspawntest",2,1] call DZAI_spawn; (to use default trigger activation timeout of 9/12/15 seconds [minimum, average, maximum])
	
	OR 
	
	["dzaicustomspawntest",2,1,[5,10,15]] call DZAI_spawn; (to use specified trigger activation timeouts. Do not forget the extra square brackets needed!)
	
	Explanation of DZAI_spawn:
	
	[
		"dzaicustomspawntest",	//This is the marker name to be used as the patrol and spawning area.
		2, 						//This trigger will spawn a group of 2 AI units.
		1,						//AI spawned by this trigger will have Equip Type level 1 (see below for explanation of Equip Type)
		[5,10,15]				//(OPTIONAL) - Custom trigger activation timeouts (minimum, average, maximum)
	] call DZAI_spawn;
	
	Equip Type explanation:
	
	0: Approx 40% of maximum AI skill potential - weapon from Farm/Residential loot class.
	1: Approx 55% of maximum AI skill potential - weapon from Farm/Residential/Military loot class.
	2: Approx 70% of maximum AI skill potential - weapon from Farm/Residential/Military/MilitarySpecial/HeliCrash loot class
	3: Approx 80% of maximum AI skill potential - weapon from Military/MilitarySpecial/HeliCrash loot class 
	
	Note: This trigger will create 2 respawning AI units with weapons from DayZ's farm, residential, or military loot table.
	
*/

//----------------------------Add your custom spawn definitions here----------------------------


//----------------------------End of custom spawn definitions----------------------------

//End of custom triggers
diag_log "Zargabad static trigger configuration loaded.";
