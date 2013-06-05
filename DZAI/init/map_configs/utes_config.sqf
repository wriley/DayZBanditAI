/*
	Utes map configuration 
	
	Last updated: 8:11 PM 6/3/2013
	
*/

//Begin dynamic trigger settings for Utes
if (DZAI_dynTriggersMax == "auto") then {DZAI_dynTriggersMax = 10;};
if (DZAI_dynSpawnDelay == "auto") then {DZAI_dynSpawnDelay = 60;};
if (DZAI_dynEquipType == "auto") then {DZAI_dynEquipType = 3;};
if (DZAI_dynAIMin == "auto") then {DZAI_dynAIMin = 2;};
if (DZAI_dynAIAdd == "auto") then {DZAI_dynAIAdd = 2;};
if (DZAI_dynSpawnDist == "auto") then {DZAI_dynSpawnDist = 4000;};

//begin triggers
_this = createTrigger ["EmptyDetector", [3376.7136, 4402.3555, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,125,thisTrigger,[],0] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [3561.8384, 3708.8481]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,0,125,thisTrigger,[],3] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_2 = _this;

_this = createTrigger ["EmptyDetector", [3855.0464, 3373.2051]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,0,125,thisTrigger,[],3] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_4 = _this;

_this = createTrigger ["EmptyDetector", [4355.46, 3207.3979, 0.34515762]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,125,thisTrigger,[],0] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_6 = _this;

//end of triggers

//Custom waypoint file
#include "custom_configs\utes_custom_config.sqf"	//Custom patrol definitions file

//Add your custom markers here


//End of custom markers

//Add your custom triggers here


//End of custom triggers

diag_log "Utes map configuration loaded.";
