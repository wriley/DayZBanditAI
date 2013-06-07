DZAI - DayZ AI Addon (Current version: 0.9.5)
============


Introduction
============
<b>IMPORTANT</b>: Version 0.9.0 onwards will be moving to the dayz_server.pbo instead of the mission pbo. If your DayZ server hoster does not give you access to your dayz_server.pbo, please notify me on the OpenDayZ forums (contact info below) with the hoster name. Thanks.

DZAI is designed to be a simple, configurable, easy-to-install AI package. This AI package is MP-compatible and works out of the box with any supported DayZ mission file. Installation instructions are provided below.

Detailed documentation for the DZAI package is coming. Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ and I will help if I am able.

Supported and tested maps:
============
- Chernarus
- Chernarus - DayZ Epoch*
- Celle
- DayZ Civilian*
- Namalsk

*: Requires manual activation by editing "DZAI_modName" in DZAI\init\dayz_ai_variables.sqf

Supported (untested) maps:
============
No issues have been reported with the following maps, but have not been tested. If you experience problems with these maps, try setting "DZAI_verifyTables = true" in dayz_ai_variables.sqf and restart your server.
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

*: Requires manual activation by editing "DZAI_modName" in DZAI\init\dayz_ai_variables.sqf

Non-supported maps
============
The following maps have been known to cause problems in the past, but recent updates may have provided compatibility. For these maps, the "Verify Tables" option will automatically be enabled to make on-the-fly adjustments to DZAI's classname tables to solve incompatibility issues.
- Taviana 2.0
- Lingor 1.3
 


Installation Instructions:
============
<b>IMPORTANT</b>: In 0.9.0, the steps to install DZAI have changed. Please read each step carefully to avoid issues upgrading to 0.9.0 from previous versions. If you do not have a previous version of DZAI installed, skip to the second step.
- If you already have DZAI installed on your server, you <b>must first remove it</b>. Delete the DZAI folder inside your mission file and remove the reference to DZAI in your init.sqf. Repack your mission pbo <b>without</b> DZAI.
- Unpack your <b>dayz_server.pbo</b>
- Copy the new DZAI folder inside your unpacked dayz_server folder. (You should also see config.cpp in the same level.)
- Edit your <b>server_monitor.sqf</b>. It is located within \dayz_server\system. 
- Locate the line that reads: <code>// # END OF STREAMING #</code> (Located near line 174. Exact location depends on your DayZ server software).
- Underneath this line, insert the following (If reading this in a text editor, ignore the code tags!): <code>call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";</code>. Refer to the provided example server_monitor.sqf (named server_monitor_example.sqf)
- Repack your dayz_server.pbo (it should be about 400KB larger).
- You are now ready to start your server.

Latest Updates:
============

0.9.0 Update:

- [NEW] DZAI is now installed to your dayz_server.pbo instead of your mission file. This method of installation will help reduce the size of your mission file (and associated network traffic) as well as prevent prying eyes from looking into any customizations you have made.
- [NEW] Added experimental support for custom patrol definitions. This feature has already been integrated into the normal spawn and despawn scripts. Instead of specifying a patrol distance when calling spawnBandits.sqf, you can either: 1) Specify an array of markers as waypoints, 2) Specify an array containing an array of waypoints, probability of choosing a random marker as the next waypoint, and probability of patrolling in reverse sequence.
Example 1: ['Marker1','Marker2','Marker3']	//Default probabilities for random waypoint selection and patrol reversal will be used
Example 2: [['Marker1','Marker2','Marker3'],0.50,0.50]	//Manually specify probabilities. To have the patrol path followed exactly (without deviations), set the second variable to zero. To have the patrol sequence followed in its specified order, set the third variable to zero.
Note: This is a basic version for testing purposes and more features will be added later.

- [REMOVED] Removed "disable zombies" option. Note: an easier method is to redefine the maximum zombie amounts in your init.sqf instead.
- [REMOVED] Removed Safe Mode and related tables. Note: if experiencing crashes or missing config entry errors, set DZAI_verifyTables = true (if possible, send me the RPT logs with verifyTables enabled on the OpenDayZ forums, username Buttface).
- [MODIFIED] Lingor 1.3 and Taviana 2.0 have verifyTables automatically enabled. (Note: If anyone has an RPT log using these DayZ mods with verifyTables enabled, please send me your RPT log on the OpenDayZ forums. Thanks).
- [MODIFIED] Dynamically-spawned triggers now spawn AI groups 100m (+100m max) from a randomly selected player within the trigger area, instead of randomly spawning around the trigger center.
- [MODIFIED] Dynamically-spawned triggers are now setPos'ed to their next location instead of being deleted and respawned. Note: If debugMarkers are enabled, the marker also moves to the new location, changing color from yellow (new) to orange (respawned).
- [MODIFIED] Changed documentation for several script files.
- [MODIFIED] AI loot is now generated using the same _equipType they were spawned with (note: _weapongrade value may differ).
- [MODIFIED] Separated gadget and tool loot tables into two separate tables: low and high grade. Table for low grade tools/gadgets has probabilities for NVGs and GPS set to zero. (Note: This change means that only AI units with weapongrade 2 or 3 can carry NVGs/GPS).
- [MODIFIED] Considerable AI skill parameter decreases for AI with weapongrade 0&1. AimingSpeed decrease and SpotDistance increase for AI with weapongrade 2. General skill increases for AI with weapongrade 3. (Note: This change means that high weapongrade AI are more skilled, and vice versa).
- [MODIFIED] AI units are now randomly assigned to the East or Resistance side.
- [MODIFIED] Slight decreases in AI spawns for NWAF, Cherno, and Elektro.

0.9.1 Update:

- [FIXED] Fixed DayZ 2017 classname tables.
- [MODIFIED] DayZ 2017: Maximum pistol ammo fixed at 1. AI may carry a maximum of 1 edible item in their inventory, none in backpack. AI do not carry medical items other than a bandage.
- [MODIFIED] AI spawn distance from dynamically spawned triggers increased to 150m (+100m max) from 100m (+100m max).

0.9.2 Update:

- [MODIFIED] Reduced rates of generating tools/gadgets for low-tier tools/gadgets table. (weapongrade 0-1).
<table>
<tr>
<td>Item Name:</td><td>Old Rate</td><td>New Rate</td>
</tr>
<tr>
<td>ItemFlashlight:</td><td>0.90</td><td>0.80</td>
</tr>
<tr>
<td>ItemWatch:</td><td>0.90</td><td>0.80</td>
</tr>
<tr>
<td>ItemKnife:</td><td>0.75</td><td>0.50</td>
</tr>
<tr>
<td>ItemHatchet:</td><td>0.70</td><td>0.40</td>
</tr>
<tr>
<td>ItemCompass:</td><td>0.60</td><td>0.35</td>
</tr>
<tr>
<td>ItemMap:</td><td>0.50</td><td>0.25</td>
</tr>
<tr>
<td>ItemToolbox:</td><td>0.20</td><td>0.10</td>
</tr>
<tr>
<td>ItemMatchbox:</td><td>0.20</td><td>0.10</td>
</tr>
<tr>
<td>ItemFlashlightRed:</td><td>0.10</td><td>0.05</td>
</tr>
</table>
- [MODIFIED] Increased radius of all static triggers from 500m to 600m. Will test if this change affects performance.
- [MODIFIED] Spawn radius of AI from dynamically spawned triggers reverted to 100m (+100m max) from 150m (+100m max).

0.9.3 Update:

- [NEW] Added support for DayZ Civilian mod. To enable DayZ Civilian support, edit DZAI_modName = "civilian" in dayz_ai_variables.sqf. Note: Weapon  parts for Civilian's ASC - Customizable Weapon Addon component have not yet been added to the DZAI loot tables.

0.9.4 Update:

- [FIXED] aiBrain script now waits until the AI unit's current weapon classname is found before proceeding. Fixes rare cases where script proceeds without having the weapon classname defined, resulting in AI running out of ammo.
- [FIXED] unitSelectPistol script now waits until the AI unit's current weapon classname is found before proceeding. Fixes rare cases where a second sidearm weapon would be generated.
- [FIXED] banditAIKilled script is now called instead of spawned, to solve cases where killing an AI would cause long delays in actions such as using items or performing actions.
- [FIXED] Fixed several scripts that were producing undefined variable errors.

0.9.5 Update:

- [FIXED] aiBrain script now waits until the AI unit's magazine classname is defined before continuing.
- [NEW] Initial release of DZAI Lite 0.0.1, a simplified version of DZAI. More details here: https://github.com/dayzai/DZAI-Lite
- [NEW] Dead dynamically-spawned AI are now deleted after 300 seconds have elapsed. (if not already deleted by the standard despawn script).
- [NEW] Added independent settings for dynamic triggers for each map. Each map will have varying numbers of dynamic triggers and ranges for spawning triggers.
- [NEW] Dynamic trigger spawning script now checks for player presence before placing each trigger. If a player is present within activation range of the trigger, the script will attempt to find another location without a player. (Note: This does not apply when dynamic triggers are being relocated).
- [REMOVED] Disabled AI fleeing option.
- [MODIFIED] Classname verification script (verifyTables.sqf) now accepts a string of array names to check, instead of having the array names hardcoded.
- [MODIFIED] fnc_initTrigger is now called instead of spawned.
- [MODIFIED] Renamed several directories and script files for better clarity. (NB: The DZAI variable definitions file, dayz_ai_variables.sqf has been renamed to dzai_variables.sqf)
- [MODIFIED] Debug markers for patrol waypoints have been changed from red X's to blue dots.
- [MODIFIED] Debug markers for custom patrol waypoints have been changed from pink X's to pink dots.
- [MODIFIED] Debug markers indicating AI unit positions have been changed from blue X's to small red dots.
- [MODIFIED] Debug markers for dynamic triggers have been changed from yellow X's to filled yellow circles. (Respawned: orange).
- [MODIFIED] Debug markers for AI patrol waypoints are now also deleted when AI are despawned.
- [MODIFIED] Added an independent reference marker for spawning dynamic triggers instead of using the standard DayZ 'center' marker. (Note: for unrecognized maps, DZAI will default to the 'center' marker instead).
