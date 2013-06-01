<<<<<<< HEAD
DZAI - DayZ AI Addon (Current version: 0.07 Hotfix 4)
=======
DZAI - DayZ AI Addon (Current version: 0.08 Patch 7)
>>>>>>> origin/0.08-Test-Version
============

<b>IMPORTANT</b>: Version 0.09 (0.9.0) onwards will be moving to the dayz_server.pbo instead of the mission pbo. If your DayZ server hoster does not give you access to your dayz_server.pbo, please notify me on the OpenDayZ forums (contact info below) with the hoster name. Thanks.

DZAI is designed to be a simple, configurable, easy-to-install AI package that requires a simple one-line edit to your init.sqf file to install. This AI package is MP-compatible and works out of the box with any supported DayZ mission file. Installation instructions are provided below.

Detailed documentation for the DZAI package is coming. Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ and I will help if I am able.

Supported and tested maps:
============
- Chernarus
- Chernarus - DayZ Epoch*
- Celle
- Namalsk

Supported (untested) maps:
============
No issues have been reported with the following maps, but have not been tested.
- Chernarus - DayZ 2017*
- Namalsk - DayZ Epoch*
- Namalsk - DayZ 2017*
- Fallujah
- Isla Duala
- Isla Duala - DayZ Epoch*
- Lingor - Skaronator*
- Lingor - DayZ Epoch*
- Oring
- Panthera
- Sahrani
- Takistan
- Taviana - DayZ Epoch*
- Utes
- Zargabad

Non-supported maps
============
The following maps have been known to cause problems in the past, but recent updates may have provided compatibility.
- Taviana 2.0 	(In "Safe Mode" only)
- Lingor 1.3	(In "Safe Mode" only)
 
*: Requires manual activation by editing "DZAI_modName" in DZAI\init\dayz_ai_variables.sqf

<<<<<<< HEAD
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

Version 0.07 Hotfix 2

- [FIXED] Fixed issue with BattlEye Script Restriction #241 error. Will continue investigating for BE-related issues.

Version 0.07 Hotfix 3

- [FIXED] BE Script Restriction #241 should be completely fixed (attempted logging in/out 10+ times without problems). Server and Client now use separate initialization scripts.

<b><u>IMPORTANT!:</b></u> The steps to install DZAI have changed (slightly). In your init.sqf, you must use this line to start DZAI: <code>#include "DZAI\init\dzai_init.sqf";				//Load DayZ AI Bandit Module</code>. Zombie spawns and AI-to-Zed hostility are now configured in dzai_init.sqf instead of dayz_ai_variables.sqf.

Version 0.07 Hotfix 4

- [FIXED] DZAI Server Monitor should now correctly report AI/trigger statistics. Active AI count is only incremented for new AI spawns, but not respawns. Will keep watch on Server Monitor to ensure it reports statistics accurately.

=======
>>>>>>> origin/0.08-Test-Version
Installation Instructions:
============
- Extract your mission .pbo file. (I recommend cpbo, which can be downloaded as part of the Arma Tools package: http://www.armaholic.com/page.php?id=411)
- Copy the entire DZAI folder into the extracted mission folder.
- Edit your init.sqf with a text editor.
- Add the line to your init.sqf file after DayZ's compiled functions (If reading this in a text editor, do not copy the <code> </code> tags!): 

<code>#include "DZAI\init\dzai_init.sqf";				//Load DayZ AI Bandit Module</code>

- Optional: Edit dayz_ai_variables.sqf in "DZAI\init" to customize the addon settings (ie: Enable/Disable zombies, AI loadouts, AI spawns, etc.)
- Repack your mission.pbo file.
- You are now ready to start your server.

Latest Updates:
============

Version 0.08 Update:

- [MODIFIED] DayZ Epoch config has been separated into its own file inside DZAI\init\loot_configs\mod_configs. The mod_configs folder will be used to contain config files for addons for DayZ maps (a "mod for a mod")
- [MODIFIED] Active AI accounting has been moved entirely to the aiBrain.sqf script (a much simpler solution). When an AI unit is created, the active AI count will increase. When the AI unit is killed, the active AI count will decrease.

Version 0.08 Patch 1:

- [NEW] Added script to verify all DZAI weapon/skin/item tables for banned or invalid classnames.  If any invalid entries are found, they are removed and logged to the RPT log. Enable table verification by setting DZAI_verifyTables to "true" in dayz_ai_variables.sqf. Enable this setting if DZAI is causing crashes or other errors.
- [UNRESOLVED] Triggers sometimes fail to deactivate. Added player alive check to trigger activation conditions as a test measure.
- [MODIFIED] Another rework of the AI counter system. Active AI counter is incremented once at trigger activation and values are stored into the trigger object. When the trigger is deactivated, values are retrieved to decrease the active AI counter.
- [MODIFIED] Changed the way map/loot config files are handled on DZAI initialization.
- [MODIFIED] Epoch mode can now by enabled for any DayZ map (note: DayZ Epoch must still be installed and running).

Version 0.08 Patch 2:

- [FIXED] Removed Saiga12K and DZ_Czech_Vest_Puch from Celle loot tables.
- [MODIFIED] Modified spawn trigger locations, area sizes for Chernarus, Celle, Namalsk.

Version 0.08 Patch 3:

- [FIXED] Fixed bug that caused triggers to become permanently activated and unable to despawn AI.
- [FIXED] Fixed spawn radius of AI created from dynamic triggers.
- [MODIFIED] Trigger variables are no longer initialized if there are no AI to spawn.
- [MODIFIED] Table verification script now checks all tables in a single pass. Author's Note: deciding on whether to have table verification enabled by default, as a full check is completed within a second.

Version 0.08 Patch 4:

- [MODIFIED] Removed alive check in trigger conditions (isPlayer check should be sufficient).
- [MODIFIED] Reduced amount of hardcoding in verifyTables script (filesize halved).
- [MODIFIED] Moved side relations settings to initserver.sqf since AI are intended to be hostile to players anyways.

Version 0.08 Patch 5:

- [NEW] Added support for Sahrani (loot and map config files). AI spawns still require tweaking.
- [FIXED] More fixes to despawn scripts.

Version 0.08 Patch 6:

- [FIXED] Fixed bug that prevented AI from properly respawning if numGroups was set higher than 1 for a trigger.
- [MODIFIED] <b>IMPORTANT:</b> fnc_spawnBandits_bldgs and fnc_spawnBandits_markers combined into a single script (fnc_spawnBandits).

<table>
<tr>
<td>New format:</td><td>[_minAI, _addAI, _patrolRadius, thisTrigger,[],_equipType (optional),_numGroups (optional)] call fnc_spawnBandits;</td>
</tr>
<tr>
<td>_minAI:</td><td> Minimum number of AI units to spawn.</td>
</tr>
<tr>
<td>_addAI:</td> <td>Maximum additional number of AI units to spawn</td>
</tr>
<tr>
<td>_patrolRadius:</td><td> Patrol radius</td>
</tr>
<tr>
<td>thisTrigger:</td><td> Leave as is</td>
</tr>
<tr>
<td>[]:</td> <td>Leave array empty if you want to use buildings within a 300m distance from trigger center as spawn points. To manually insert spawn points, insert names of markers to use as spawn points. Example: ['marker1','marker2','marker3']</td>
</tr>
<tr>
<td>_equipType (OPTIONAL):</td> <td>If no value is specified, 1 is used as default. 0: Basic rifles and pistols, 1: Basic rifles and occasionally military weapons, 2: Military weapons and occasionally basic rifles, 3: Military weapons and some high-grade military weapons.</td>
</tr>
<tr>
<td>_numGroups (OPTIONAL):</td> <td>If no value is specified, 1 is used as default. Number of groups to spawn using the above values.</td>
</tr>
</table>

<b>Note:</b> Wrapper functions have been added so that all calls to fnc_spawnBandits_bldgs and fnc_spawnBandits_markers are transferred to fnc_spawnBandits. If you have added any custom spawns, they will still work without modification.

- [MODIFIED] fnc_respawnBandits_bldgs and fnc_respawnBandits_markers have been combined into fnc_respawnBandits.
- [MODIFIED] aiBrain and aiBrain_debug scripts are now spawned instead of execVMed. Appears to solve issue where aiBrain script did not properly run at unit creation.
- [MODIFIED] fnc_getBuildingPositions now returns the trigger's position if it cannot find any usable building positions within a 300m radius. Note: do not use fnc_spawnBandits without a marker array if no buildings are within 300m of trigger center.
- [MODIFIED] fnc_initTrigger now handles variable initialization for all spawn types.
- [MODIFIED] AI now carry at least one pistol magazine upon death (changed from minimum of zero).
- [MODIFIED] Celle: RH_HK53eot and RH_mp5a5eod added back into weapon tables.
- [MODIFIED] All map configurations have been modified to use the new spawnBandits format. Will need to double-check if errors have been made during the conversion.
- [REMOVED] Removed fnc_spawnBandits_random and fnc_respawnBandits_random since they are no longer used.

Version 0.08 Patch 7:

- [MODIFIED] Minor AI skill decreases to aimingAccuracy, aimingShake, aimingShake (~0.05). Larger decreases to spotTime (~0.20).
- [MODIFIED] Chernarus: Disabled AI spawn at Balota Military Tents.
- [MODIFIED] Celle: Reduced number of AI groups at Winsen (Aller) from 3 to 2. Increased size of each group from 2(+1 max) to 3(+1 max).
- [REMOVED] Removed unused aiBrain.sqf script files.
