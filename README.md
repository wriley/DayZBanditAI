DZAI - DayZ AI Addon (Current version: 0.06 Patch 4)
============


This new package is MP-compatible and works out of the box with any supported DayZ mission file. 

Currently supported and tested DayZ missions:
- Chernarus
- Celle
- Namalsk

Currently supported (but untested) DayZ missions:
- DayZ Epoch (Chernarus)
- Fallujah
- Isla Duala
- Lingor
- Oring
- Panthera
- Takistan
- Taviana 2.0 	(Note: DZAI will no longer be updated for Taviana 2.0 after DayZ 1.7.7 is released)
- Utes
- Zargabad
- <b>Note</b>: DZAI version 0.03+ should work with any DayZ mission file. However for DayZ mods not listed above, no AI units will spawn from buildings and default DayZ loot tables will be used to generate AI loadouts. You will have to create and add your own configuration file to create new spawn points. AI may also be randomly spawned by modifying the DZAI_spawnRandom variable. 


Date ?? - Version 0.06 Patch 1, Patch 2:
- [NEW] Experimental support for DayZ Epoch-exclusive features (Chernarus). Set DZAI_modName to "epoch" to enable Epoch skin loot, AI skins, and metal bar loot. Item probabilities still require tweaking.
- [MODIFIED] Weapon grade probabilities can now be defined on a per-location basis (new parameter: "equipment type"). AI in "newbie" areas tend to have lower end weaponry and skills while those in high-value areas tend to have high-end weaponry and higher skills.
- [MODIFIED] AI skill parameters are also determined by the unit's "weapon grade". AI that carry high-end weaponry tend to have higher skill parameters, and vice versa.
- [MODIFIED] Rebalanced AI skill parameters. General increases in AI aiming speed and spotting time, general decreases in aiming shake and spotting distance.
- [MODIFIED] Namalsk: Added marker-defined AI spawn points to Lubjansk military base instead of using building locations as spawn points. Should prevent AI from being spawned in water.
- [MODIFIED] Several variables offloaded from invdividual AI units to the trigger object they were spawned from.
- [MODIFIED] Cleaned up initialization script for easier reading.
- [MODIFIED] Renamed several directories for better clarity.
- [REMOVED] Removed Coyote backpack from second tier backpack table.

May 12, 2013 - Version 0.06 Patch 3:
- [FIXED] Fixed a bug where having debugLevel set to 0 disabled the check for active AI units in a trigger area, causing more AI units to be spawned than intended.
- [FIXED] Added checks to mark a trigger as waiting to be cleaned up by the AI despawn script to prevent an excessive instances of the despawn script from being run.
- [UPCOMING] Added a chance for an AI group to immediately identify a group member's killer to simulate a coordinated group of players. This code is currently commented.
- [MODIFIED] Removed fnc_setBehavior script, merged contents with fn_createAI and fn_createAI_NR.
- [MODIFIED] Replaced BIS_fnc_selectRandom with an altered version that should correctly calculate random values. (This may affect any DayZ scripts that use this function).
- [MODIFIED] debugLevel 2 no longer causes aiBrain to report each zombie that has been identified as hostile (reserved for debugLevel 3+, tentatively called "Super Debug")
- [MODIFIED] Despawn script now also cleans up variables that have been assigned to the trigger object.

May 14, 2013 - Version 0.06 Patch 4
- [FIXED] DZAI_allowFleeing variable was not used to enable/disable fleeing.
- [FIXED] Applied fixes to despawn script for non-respawning AI that were applied to the respawning-AI despawn script in Patch 3.
- [MODIFIED] Added chance to reveal player responsible for killing an AI unit to its group (Default: 50% chance of reveal)
- [MODIFIED] Increased Stary Sobor military tent AI patrol distance from 125m/waypoint to 200m/waypoint to allow easier access to NPC vendor in Chernarus Epoch.
- [MODIFIED] Triggers' GroupArray variable is now always reset to an empty array if one cannot be found.

Installation Instructions:
- Extract your mission .pbo file. (I recommend cpbo, which can be downloaded as part of the Arma Tools package: http://www.armaholic.com/page.php?id=411)
- Copy the entire DZAI folder into the extracted mission folder.
- Edit your init.sqf with a text editor.
- Add the line to your init.sqf file after DayZ's compiled functions: 

<code>call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_initialize.sqf";				//Load DayZ AI Bandit Module</code>

Example edit (Note: this block of code is easier to read in a text editor such as Notepad++):

<code>//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
progressLoadingScreen 0.6;
call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_initialize.sqf";				//Load DayZ AI Bandit Module
progressLoadingScreen 1.0;</code>

- Optional: Edit dayz_ai_variables.sqf in "DZAI\init" to customize the addon settings (ie: Enable/Disable zombies, AI loadouts, AI spawns, etc.)
- Repack your mission.pbo file.
- You are now ready to start your server.


Detailed documentation for the DZAI package is coming. Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ and I will help if I am able.