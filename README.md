DZAI 1.4.0 - AI Addon for DayZ
============


Introduction
============

DZAI is designed to be a simple, configurable, easy-to-install AI package. This AI package is MP-compatible and works out of the box with any supported DayZ map. Installation instructions are provided below.

DZAI is also available as a "Lite" version. More details can be found here: https://github.com/dayzai/DZAI-Lite

Reminder: The latest stable build of DZAI is always located in the 'master' branch. The latest experimental build is located in a separate branch, usually labeled with a version number. These experimental builds have the latest improvements and bugfixes, but may also have new bugs that need to be fixed, so they are not guaranteed to be stable.

Detailed documentation for the DZAI package is coming. Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ and I will help if I am able.

Features
============

- <b>Static AI Spawns</b> - AI spawn locations have been set up in cities, towns, and military bases for supported DayZ maps. Always be on alert while looting.
- <b>Dynamic AI Spawns</b> - AI spawn locations are also randomly created around the map. AI can appear anywhere, anytime.
- <b>AI helicopter patrols</b> - AI helicopters patrol randomly around the map. Tip: Players on foot have the best chance of avoiding detection, but players in vehicles are much more noticeable to AI.
- <b>AI can use any lootable weapon</b> - DZAI builds a list of AI-usable weapons using DayZ's loot tables. Beware, AI with rarer weapons will be more dangerous.
- <b>AI health system</b> - AI units can take as much damage as players, and can also be knocked unconscious by heavy damage. Headshots are more likely to knock out an AI unit.

Compatibility
============

- DZAI is designed to be compatible with every publicly-available DayZ Mod. At present time no DayZ mods are known to have issues with DZAI.

<b>Fully-supported DayZ Mods:</b>

- DZAI is constantly updated for compatibility with these DayZ mods: DayZ 1.7.7.1+, DayZ Celle 1.9+, DayZ Epoch 1.0.1.5+, DayZ Hunting Grounds 1.0.1+, DayZ Overwatch 0.2.1+.
- Note: Namalsk 0.75 is planned to be supported but untested at time of writing.

<b>Partially-supported DayZ Mods:</b>

- DZAI is not constantly updated for these maps/mods in particular but they should still be compatible.
- This list includes the following maps/mods: DayZ 2017, DayZ 2017 Namalsk, DayZ Civilian, DayZ Fallujah, DayZ Isladuala, DayZ Lingor 1.3, DayZ Oring, DayZ Panthera, DayZ Sahrani, DayZ Taviana (all versions), DayZ Utes.

<b>Unsupported DayZ Mods:</b>

- This section will be updated once issues with any DayZ mods are known.

Installation Instructions:
============
<b>IMPORTANT</b>: The AI helicopter patrols added in 1.2.0 require edits to your server_cleanup.fsm. Failure to edit this file properly will cause helicopters spawned by DZAI to explode. Instructions are provided in the Required Edits section below.
- (Only do this if you have an older version of DZAI installed in your mission file): Delete the DZAI folder inside your mission file and remove the reference to DZAI in your init.sqf. Repack your mission pbo <b>without</b> DZAI.
- Unpack your <b>dayz_server.pbo</b>
- Copy the new DZAI folder inside your unpacked dayz_server folder. (You should also see config.cpp in the same level.)
- Edit your <b>server_monitor.sqf</b>. It is located within \dayz_server\system. 
- Search for the line where server_cleanup.fsm is called, and insert the following after this line:


    <code>call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";</code>


An example is shown here:

    if (isDedicated) then {
        _id = [] execFSM "\z\addons\dayz_server\system\server_cleanup.fsm";
        call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";
    };

	
- <b>NOTE:</b> Certain DayZ mods such as DayZ Epoch do not have a server_cleanup.fsm reference. In this case, insert the required line before the line that says:

    <code>allowConnection = true;</code>

- Read the section below on other required edits and follow the instructions.
- Repack your dayz_server.pbo (it should be about 400KB larger).
- You are now ready to start your server.

<b>Note:</b> DZAI's settings file can be found in DZAI\init\dzai_variables.sqf. You may store your custom settings changes in DZAI\DZAI_settings_override.sqf. Instructions are provided inside this file.

Required Edits:
============

<b>BattlEye Edits:</b>
DZAI's loot tables include the Radio (ItemRadio) which will trigger a BattlEye kick if a player attempts to place it in their backpack. To remedy this, you will need to comment out the line in your addmagazinecargo.txt that reads "5=ItemRadio" by editing it to "//5=ItemRadio"

<b>server_cleanup.fsm:</b>
In order to use DZAI's AI helicopter patrols, you must first edit your server_cleanup.fsm located in dayz_server\system. Locate this line in server_cleanup.fsm:


	"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"") then {" \n

	
If you <b>do not</b> have the Animated HeliCrash addon installed, change the line to this :


	"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"" && (vehicle _x getVariable [""DZAI"",0] != 1)) then {" \n
 
 
If you <b>do</b> have the Animated HeliCrash addon installed, change the line to this:


	"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"" && ((vehicle _x getVariable [""Sarge"",0] != 1) && (vehicle _x getVariable [""DZAI"",0] != 1))) then {" \n

	
<b>Important Note:</b> Certain DayZ mods have the Animated HeliCrash addon pre-installed (Example: DayZ Overwatch). Be sure to check if the DayZ mod you're running includes this addon. 
	

DZAI 1.4.0 Changelog:
============

1. Gameplay Changes
---

- [NEW] Destroying an AI helicopter now causes three dead AI units to be parachuted out. These units carry military-grade gear. (Items are generated using DZAI's highest-tier loot table). Bodies are deleted 10 minutes after they are generated.
- [UPDATED] Changes to AI spawning functions now allow AI units to spawn in tighter quarters (ie: between buildings, inside forests, etc).
- [UPDATED] Collision damage to AI units reduced to 10% to prevent rare cases where AI die after spawning on top of tall objects and die after falling off.
- [UPDATED] Dynamic AI spawn triggers will relocate instead of activating if placed on water.
- [UPDATED] Zombies around AI group leaders are no longer automatically revealed.
- [UPDATED] Increased probability of AI to start self-heal process from 33.3% to 40% (check interval is determined by DZAI_refreshRate).
- [UPDATED] AI helicopters have a 25% chance of entering "Seek and Destroy" mode after reaching a waypoint, where the helicopter will attempt to visually search the area for enemy units (players). S.A.D. mode lasts for 30/60/90 seconds (minimum/average/maximum).
- [UPDATED] Custom static triggers can now have activation delay manually specified. Simply insert an array containing the minimum/average/maximum activation delay. Further instructions are provided in the map config files. (NOTE: This feature is untested. Please report any problems using the DZAI_spawn function).
- [UPDATED] Chernarus: Updated AI spawns for Castle Rog, Devil's Castle, Castle Zub. (AI difficulty/weapon grade, spawn points, patrol radii).
- [UPDATED] Chernarus: Stary Sobor AI spawns changed from 1 group of 2 (+2 max) units of 2 groups of 2 (+1 max) units.
- [UPDATED] Chernarus: Novy Sobor AI spawns changed from 1 (+2 max) units to 2 (+1 max) units. Patrol radius increased from 175m to 225m.
- [FIXED] AI patrol waypoints are no longer generated in water.
- [FIXED] Dynamic AI now properly seeks out targeted player's position beyond the minimum 30 seconds.
- [FIXED] Fixed bugs associated when static triggers have no minimum amount of AI units to spawn or respawn.


2. Under-the-hood Code Changes
----

- [NEW] Debug text in RPT log now reports name of trigger (ie: Electro1, Cherno1) when reporting static trigger activity.
- [UPDATED] Debug markers for helicopters now display text indicating helicopter type and AI group.
- [UPDATED] Updated debug markers for static triggers. Instead of colored circular markers, red/orange/green text will indicate the activity status of the trigger. (Active/Despawning/Inactive). Debug markers for dynamic triggers are unaffected.
- [UPDATED] DZAI_debugMarkers level 2 will allow debug markers for static triggers to refresh periodically (1 refresh/30 seconds). Inactive static triggers will not have their markers refreshed.
- [UPDATED] Modified classname verification script to avoid usage of "call compile...".
- [UPDATED] Reduced building search range for static triggers from 300m to 250, and restricted search criteria to objects of "HouseBase" class instead of "Building".
- [UPDATED] Static triggers now generate a maximum of 100 building positions per trigger. Previously, no limit existed and the number of generated building positions could reach over 500/trigger in dense areas.
- [FIXED] Debug markers for individual AI units and helicopters now check if unit/vehicle is both alive and not null. Should prevent cases where markers remain after the unit/vehicle is destroyed or despawned.
- [FIXED] Fixed rare cases where debug markers for individual AI units and group waypoints were not properly deleted.


Note: Information about past updates are archived in changelog.txt

