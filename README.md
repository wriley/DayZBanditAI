DZAI - DayZ AI Addon (Current version: 0.9.0)
============


Introduction
============
<b>IMPORTANT</b>: Version 0.9.0 onwards will be moving to the dayz_server.pbo instead of the mission pbo. If your DayZ server hoster does not give you access to your dayz_server.pbo, please notify me on the OpenDayZ forums (contact info below) with the hoster name. Thanks.

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

Non-supported maps
============
The following maps have been known to cause problems in the past, but recent updates may have provided compatibility. For these maps, the "Verify Tables" option will automatically be enabled to make on-the-fly adjustments to DZAI's classname tables to solve incompatibility issues.
- Taviana 2.0
- Lingor 1.3
 
*: Requires manual activation by editing "DZAI_modName" in DZAI\init\dayz_ai_variables.sqf

Installation Instructions:
============
<b>IMPORTANT</b>: In 0.9.0, the steps to install DZAI have changed. Please read each step carefully to avoid issues upgrading to 0.9.0 from previous versions. If you do not have a previous version of DZAI installed, skip to the second step.
- If you already have DZAI installed on your server, you <b>must first remove it</b>. Delete the DZAI folder inside your mission file and remove the reference to DZAI in your init.sqf. Repack your mission pbo <b>without</b> DZAI.
- Unpack your <b>dayz_server.pbo</b>
- Copy the new DZAI folder inside your unpacked dayz_server folder. (You should also see config.cpp in the same level.)
- Edit your <b>server_monitor.sqf</b>. It is located within \dayz_server\system. 
- Locate the line that reads: <code>waitUntil{initialized}; //means all the functions are now defined</code>
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
