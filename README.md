DZAI 1.4.4 - AI Addon for DayZ
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

- DZAI is regularly updated for compatibility with these DayZ mods: DayZ 1.7.7.1+, DayZ Overwatch 0.2.2+.

<b>Partially-supported DayZ Mods:</b>

- DZAI is known to be functional and compatible with these maps/mods but development is not done using these mods. Any issues with these maps/mods will be fixed as they become known.
- This list includes the following maps/mods: DayZ 2017, DayZ 2017 Namalsk, DayZ Civilian, DayZ Fallujah, DayZ Isladuala, DayZ Lingor 1.3, DayZ Oring, DayZ Panthera, DayZ Sahrani, DayZ Taviana (all versions), DayZ Utes, DayZ Celle, DayZ Namalsk, DayZ Epoch 1.0.1.5+, DayZ Hunting Grounds 1.0.1+.

<b>Unsupported DayZ Mods:</b>

- DZAI does not support DayZ mods that are in their non-public and/or development phase.
- There is no support for the following DayZ mods: DayZ+, DayZ Invasion 1944, DayZ Thirsk, DayZ Trinity Island.

<b>Known Issues:</b>

- AI are spawned server-side, therefore any buildings or objects spawned client-side only are invisible to AI, meaning they can walk, see, and shoot through these objects. If you use any mods or scripts that add buildings or bases to the map, please make sure the buildings are not spawned client-side.
- The above issue also applies to clutter (wrecks) and other buildings spawned by DayZ's CfgTownGenerator. DZAI includes an experimental fix for this issue. Enable this fix by setting DZAI_objPatch = true in dzai_variables.sqf. This fix takes about 60-90 seconds to run at server start.


Installation Instructions:
============

1. Unpack your dayz_server.pbo. If using cpbo, right click dayz_server.pbo and click "Extract".
2. Copy the downloaded DZAI folder inside your unpacked dayz_server folder.
3. Edit server_monitor.sqf with a text editor. It is located in \dayz_server\system.
4. Search for the line that says:

		allowConnection = true;

	Change the line to this:

		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";
		allowConnection = true;
	
5. If you do not wish to use DZAI's AI helicopter patrols, skip to step 6. Otherwise, continue reading.
	
	Edit your server_cleanup.fsm (located in \dayz_server\system). Search for this line: 

		"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"") then {" \n

		
	If you <b>do not</b> have the Animated HeliCrash addon installed, change the line to this :


		"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"" && (vehicle _x getVariable [""DZAI"",0] != 1)) then {" \n
	 
	 
	If you <b>do</b> have the Animated HeliCrash addon installed, change the line to this:


		"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"" && ((vehicle _x getVariable [""Sarge"",0] != 1) && (vehicle _x getVariable [""DZAI"",0] != 1))) then {" \n


6. A small edit to your BattlEye filters is needed. Inside your BattlEye folder, edit your addmagazinecargo.txt. Locate the line that reads:
	
		"5=ItemRadio"
		
	Edit it to this:

		//"5=ItemRadio"

	If you cannot find this line, do not make any changes.

7. Optionally, you may edit DZAI's settings in dayz_server\DZAI\init\dzai_variables.sqf

8. Repack your dayz_server.pbo by right-clicking the unpacked folder, then click on "create PBO". If prompted to overwrite, click "Yes".

Note: You may store your custom settings changes in DZAI\DZAI_settings_override.sqf. This file is a convenient way to store and transfer your custom settings when upgrading to a newer version of DZAI. Further instructions are provided inside this file.

	
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


1.4.1 Update (Re-release):

- [FIXED] Added an optional experimental fix to prevent AI units from shooting/walking through buildings and objects spawned by DayZ's CfgTownGenerator. Enable by setting DZAI_objectPatch = true in dzai_variables.sqf. Enabling this setting may be essential for DayZ Overwatch 0.2.2+.
<b>Note</b>: Enabling DZAI_objectPatch *may* cause a flood of "Ref to nonnetwork object" errors in your RPT log. This is a harmless warning message but can be annoying as it fills up the RPT log.

1.4.2 Update:

- [FIXED] Added fix to prevent second sidearm weapon from being added to AI after death.
- [UPDATED] Static spawn triggers avoid spawning AI if a player is within 30m of the spawn point. Up to 5 attempts are made to search for a suitable location without players nearby.
- [UPDATED] Chernarus: Updated default patrol radius for most static AI spawns from 125m to 200m. This should allow player encounters with AI more easy to avoid and less forced.
- [UPDATED] Updated default AI weapon banlist. The following weapons will not be added to list of AI-usable weapons: "Crossbow_DZ","Crossbow","MeleeHatchet","MeleeCrowbar","MeleeMachete","MeleeBaseball","MeleeBaseBallBat","MeleeBaseBallBatBarbed","MeleeBaseBallBatNails"
- [MODIFIED] Increased chance of generating pistol instead of rifle for AI with weapongrade 0 from 50% to 66%.
- [MODIFIED] Removed classname blacklist for serverside object fix since it was ineffective at suppressing RPT log warning entries. We will have to wait until BIS releases a patch that suppresses these log warnings.
- [MODIFIED] Chernarus: Updated Zelenogorsk static spawns from 1 group of 1 (+2 max) units to 2 groups of 1 (+1 max) units.
- [MODIFIED] Decreased AI accuracy and aimingshake (lock-on time increased) slightly for all skill tiers.
- [MODIFIED] Decreased probability of generating each medical item for AI from 75% to 70%.

1.4.3 Update:

- [MODIFIED] Dynamic triggers that intersect other active dynamic triggers will only spawn 1 AI unit instead of having total AI spawned reduced by a certain amount.
- [MODIFIED] Increased probability of generating AI unit with weapongrade 0 for equipType 0 and 1, probability decreased accordingly for weapongrade 1.
- [MODIFIED] AI helicopter waypoint amounts no longer depend on number of dynamic triggers. (Fixed at 15).
- [MODIFIED] Decreased completion times for AI helicopter waypoints.
- [MODIFIED] Removed the following small miscellaneous items from AI loot tables: ItemTankTrap, ItemSandbag, ItemWire, Handgrenade_West, 1Rnd_HE_M203.
- [MODIFIED] Lowered probability of generating Flashlight and Watch for low-tier tools loot table.
- [MODIFIED] AI units with weapongrade 0 no longer carry medical and miscellaneous items.
- [MODIFIED] Epoch: AI units with weapongrade no longer have a chance of carrying metal bar currency.
- [MODIFIED] Small edits to AI patrol script: AI units no longer move together in formation, and are fixed in combat mode Red (do not engage enemies in formation).

1.4.4 Update:

- [FIXED] Fixed bug where debug markers for dynamic triggers became desynchronized with their assigned trigger.
- [FIXED] Dynamic AI player-seeking now uses AI group leader as center point for AI patrol if target player logs out during pursuit state.
- [FIXED] Waypoints are no longer created for a wiped-out dynamic AI group.
- [MODIFIED] Lowered AI aimingAccuracy for all skill tiers. Large increases to AI aimingShake (lock-on time decrease) and smaller increases to AI aimingSpeed. These changes are intended to increase AI effectiveness in close quarters and decrease effectiveness at long distances.
- [MODIFIED] Lowered collision damage reduction for AI from 90% to 80%.
- [MODIFIED] Lowered probability of generating pistol instead of rifle for weapongrade 0 AI units from 66% to 55%.
- [MODIFIED] Dynamic AI spawn distance from target player modified from 200m-300m to 200m-250m.

Note: Information about past updates are archived in changelog.txt
