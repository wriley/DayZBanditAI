DZAI - DayZ AI Addon (Current version: 0.08 Patch 7)
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
