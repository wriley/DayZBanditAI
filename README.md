DZAI - DayZ AI Addon (Current version: 0.07 Patch 6)
============

DZAI is designed to be a simple, configurable, easy-to-install AI package that requires a simple one-line edit to your init.sqf file. This AI package is MP-compatible and works out of the box with any supported DayZ mission file. Installation instructions are provided below.

Currently supported and tested DayZ missions:
- Chernarus
- DayZ Epoch* (Chernarus)

Currently supported (but untested) DayZ missions:
- Celle			(Pending testing)
- Namalsk		(Pending testing)
- Fallujah
- Isla Duala
- Lingor		(In "Safe Mode" only)
- Lingor* (Skaronator)
- Oring
- Panthera
- Takistan
- Taviana 2.0 	(In "Safe Mode" only)
- Epoch Taviana 1.0*
- Utes
- Zargabad
- <b>Note</b>: DZAI version 0.03+ should work with any DayZ mission file. However for DayZ mods not listed above, no AI units will spawn from buildings and default DayZ loot tables will be used to generate AI loadouts. You will have to create and add your own configuration file to create new spawn points. AI may also be randomly spawned by modifying the DZAI_spawnRandom variable. 
*: Requires manual activation by editing "DZAI_modName" in DZAI\init\dayz_ai_variables.sqf

Version 0.07 Patch 1&2 Update:
Note: Due to the number of changes added shortly after 0.06 was planned for release, 0.06 and 0.07 will be fully released together. Changes made in 0.06 and earlier are archived in changelog.txt

- [NEW] Dynamically-spawned triggers are now spawned using road positions using SHK_pos. Spawn range extended from 4000m to 4500m. Patrol distance decreased from 350m to 300m/waypoint (Author's note: Watch out for road ambushes!)
- [NEW] If an AI unit is killed, there can be a chance for the group leader to investigate the killer's last known position. (Note: Experimental feature, chance must be set manually in dayz_ai_variables)
- [NEW] Added loot tables for DayZ Epoch metal bar currency. Loot table structure is identical to new structure used for tool items. If "Epoch" mode is enabled, AI units will have a chance to carry metal bar currency.
- [NEW] Added "minimal configuration" setting. Overrides default config info with heavily stripped-down loot tables. If you are experiencing troubles with unsupported DayZ mods, try setting "DZAI_modName = "minimal" in dayz_ai_variables.
- [NEW] AI units spawned with weapongrade of 2 or higher can now be configured to always spawn with temporary NVGs if the normal probability check to spawn NVGs fails. This feature is disabled for DayZ 2017 and DayZ Namalsk (Note: Experimental feature, must be enabled manually in dayz_ai_variables)
- [NEW] AI units spawned with weapongrade of 0 may now spawn with a pistol instead of a rifle. 
- [NEW] On AI unit death, loot generation script will not generate an additional pistol if unit is already carrying one.
- [FIXED] Equipment Type of AI created from dynamically-spawned triggers was unintentionally hardcoded to 1.
- [MODIFIED] AI loot table for tool items restructured. New format: [["ItemName1",Chance1],["ItemName2",Chance2],["ItemName3",Chance3]...etc]
- [MODIFIED] Chernarus: Changes to Stary Sobor military tents - Increased maximum number of additional AI units spawned from 2 to 3. Extended patrol distance from 125 to 225m/waypoint. Disabled AI spawn centered around Stary Sobor military tents. 
- [MODIFIED] Chernarus: Decreased minimum number of AI units spawned on Skalisty Island from 2 to 0. Increased maximum additional number of AI units spawned from 0 to 1. (0 minimum, 1 maximum). 
- [MODIFIED] Increased maximum additional AI respawn delay from 120 to 180 seconds (Maximum delay changed from 420 seconds to 480 seconds).
- [MODIFIED] Changed spawn distance for AI created from dynamically-spawned triggers from 50m + a maximum of 450m to a maximum of 300 (no minimum).
- [MODIFIED] Modified activation delay time for dynamically-spawned triggers from 10/17/24 seconds to 10/15/20 seconds.
- [MODIFIED] Renamed fnc_unitBackpack to fnc_unitInventory, and fnc_unitSelectRifle to fnc_unitSelectWeapon.

Version 0.07 Patch 3 Update:

- [MODIFIED] AI groups will only detect killer position within 300 meters (reduced from 500m).
- [MODIFIED] AI Killed eventhandler changed from call to spawn.
- [MODIFIED] Changed AI killer detection from a % chance to a true/false toggle (default setting is false).

Version 0.07 Patch 4 Update

- [UNRESOLVED] Current live AI count is buggy and unreliable. Therefore, do not modify DZAI_maxAIUnits from its default value until it is fixed. Setting this number too low may cause AI to stop spawning altogether.
- [NEW] Study body now can be used on AI. Currently all AI units spawned by DZAI will have the name "DZAI Unit" and their reported cause of death is "bleeding".
- [NEW] Separate script for spawning invisible/invincible dummy AI group placeholder unit.
- [NEW] Separate script for determing appropriate set of weapongrade probabilities to use
- [NEW] Server monitor script to periodically report current/maximum number of active AI units and dynamically-spawned triggers. Default interval is every 3 minutes. (Monitor is on by default)
- [FIXED] Pistol was sometimes added to AI corpse even if AI was already carrying one.
- [MODIFIED] Dummy AI unit should now be deleted as soon as the first dead AI unit in the group respawns. Note: Debug logging is temporarily kept on for dummy creation/deletion, will be removed at full release.
- [MODIFIED] Live AI counter is now incremented by fnc_createAI and fnc_createAI_NR upon creation of each individual AI unit.
- [MODIFIED] Increased Commanding AI skill parameter
- [MODIFIED] Seperated config files into map_configs (for map-specific settings) and dzai_configs (for DZAI-specific settings). 
- [MODIFIED] equipType 2 is now used for areas where military-grade weapons is expected of players (ie: Stary Sobor). equipType 3 is now used for areas with endgame loot (ie: NWAF for Chernarus).
- [MODIFIED] Considerable decrease in probability of generating military-grade weapons for equipType 1 areas (ie: Cherno, Elektro for Chernarus) and increase in generating civilian-grade weapons.
- [MODIFIED] Default debug level is now 0 (no debug logging).

Version 0.07 Patch 5 Update

- [UNRESOLVED] In some situations, the despawn script fails to despawn AI units properly. However, reactivating then deactivating the trigger should allow the trigger to properly reset. Will investigate further.
- [FIXED] Several modifications to the way DZAI keeps track of active AI units. Dummy AI group placeholder unit is now also counted as an active unit. Dead units waiting to respawn also count as "active". AI only be considered "inactive" after they have been despawned.
- [NEW] fnc_initTrigger function to initialize trigger variables. Shared between all spawnBandits scripts except spawnBandits_random_NR.
- [MODIFIED] BIN_taskPatrol is now spawned instead of execVM'ed to eliminate repetitive compiling of the script. DZAI may take slightly longer to compile scripts, but no difference was observed while running DZAI on a low-end laptop.
- [MODIFIED] debugLevel 2 now also reports the classname of the weapon generated for each AI unit.
- [MODIFIED] General decreases in trigger activation delay, more for NWAF in Chernarus.
- [MODIFIED] DZAI Server Monitor now reports: current/maximum number of active AI units, currently active static triggers, current/total number of dynamic triggers. Monitor now starts after a 60 second delay instead of 120 seconds.
- [MODIFIED] First AI unit in a group is now set as group leader.
- [REMOVED] Removed several options to specify the number of a specific consumable item to add to AI loot (for simplification purposes). You may still increase consumable item loot by increasing the number of item selections.
- [REMOVED] Removed fn_spawnDummy script, re-integrated it into fn_banditAIRespawn.
- [REMOVED] Removed M1014 shotgun from weapongrade 0 weapon selection.

Version 0.07 Hotfix 1

- [FIXED] Fixed config files for alternate DayZ maps with modified item probabilities.
- [NEW] Added Namalsk 2017 support (UNTESTED)

Version 0.07 Patch 6 Update

- [FIXED] Additional fixes to config files.
- [FIXED] Isla Duala config is now properly loaded if server is running Isla Duala.
- [NEW] Added ItemRadio to AI loot table. If DZAI_findKiller is set "true" and player has a Radio in their inventory, AI will not be able to automatically detect and hunt down the player who killed a member of their group.
- [NEW] If debugLevel is set to 1 or higher, DZAI will report the detected DayZ map into the RPT log.
- [NEW] Minimal Mode replaced by Safe Mode. Enable Safe Mode by modifying DZAI_safeMode to "true". Safe Mode overwrites all DZAI item tables with stripped down versions to ensure compatibility.
- [MODIFIED] Separated config files into map configs (marker and trigger configs) and loot configs.
- [MODIFIED] Taviana and Lingor now always start in "Safe Mode" with minimal loot tables as an attempt to solve crashing issues. Note: Taviana and Lingor support will now continue beyond DZAI version 0.07, but only with Safe Mode settings.
- [MODIFIED] Epoch mode can now only be enabled on DayZ maps with Epoch support (Chernarus, Namalsk, Lingor, Taviana). Note: DZAI does not support Dingor.
- [MODIFIED] Combined config files for default and safe mode.

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