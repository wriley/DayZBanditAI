/*
	Fallujah static trigger configuration 
	
	Last updated: 11:08 PM 7/5/2013
	
*/

#include "spawn_markers\markers_fallujah.sqf"	//Load manual spawn point definitions file.

if (DZAI_verifyTables) then {
	waitUntil {sleep 0.1; !isNil "DZAI_classnamesVerified"};	//Wait for DZAI to finish verifying classname arrays.
} else {
	waitUntil {sleep 0.1; !isNil "DZAI_weaponsInitialized"};	//Wait for DZAI to finish building weapon classname arrays.
};

_this = createTrigger ["EmptyDetector", [7892.4951, 1765.697]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_3 = _this;

_this = createTrigger ["EmptyDetector", [8093.9385, 2338.5906]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_5 = _this;

_this = createTrigger ["EmptyDetector", [5567.2109, 2912.2856]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_7 = _this;

_this = createTrigger ["EmptyDetector", [4556.7563, 2902.7585]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_10 = _this;

_this = createTrigger ["EmptyDetector", [4231.8408, 3775.5828]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_12 = _this;

_this = createTrigger ["EmptyDetector", [5946.9043, 4515.5977]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_14 = _this;

_this = createTrigger ["EmptyDetector", [4908.3682, 4481.9414]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_16 = _this;

_this = createTrigger ["EmptyDetector", [3698.6453, 4500.7515]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_18 = _this;

_this = createTrigger ["EmptyDetector", [6137.3052, 5418.8232]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_20 = _this;

_this = createTrigger ["EmptyDetector", [6982.3262, 5841.541, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_22 = _this;

_this = createTrigger ["EmptyDetector", [6214.667, 6329.751]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_24 = _this;

_this = createTrigger ["EmptyDetector", [5275.6221, 6394.0518, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_26 = _this;

_this = createTrigger ["EmptyDetector", [5099.4775, 5486.6943, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_28 = _this;

_this = createTrigger ["EmptyDetector", [4100.9243, 5311.6533, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_30 = _this;

_this = createTrigger ["EmptyDetector", [4258.0264, 6241.6333, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_32 = _this;

_this = createTrigger ["EmptyDetector", [3144.0283, 6145.1812]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_34 = _this;

_this = createTrigger ["EmptyDetector", [3135.6968, 5255.6885, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_36 = _this;

_this = createTrigger ["EmptyDetector", [667.26318, 8396.7559, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_38 = _this;

_this = createTrigger ["EmptyDetector", [1752.8987, 7335.0488]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [10, 15, 20, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_41 = _this;

//end triggers

//Custom waypoint file
#include "custom_configs\fallujah_custom_config.sqf"	//Custom patrol definitions file

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

diag_log "Fallujah static trigger configuration loaded.";
