DZAI 1.6.1 - AI Addon for DayZ
============

<b>Announcement:</b> Further development for DZAI is currently on hold as I have limited time to continue work on this AI package. At this time DZAI has achieved all previously incomplete development goals and has reached 
a relatively bug-free state, so DZAI will only be updated to solve the most serious bugs and errors. 

Introduction
============

DZAI is designed to be a simple, configurable, easy-to-install AI package. This AI package is MP-compatible and works out of the box with any supported DayZ map. Installation instructions are provided below.

Reminder: The latest stable build of DZAI is always located in the 'master' branch. The latest experimental build is located in a separate branch, usually labeled with a version number. These experimental builds have the latest improvements and bugfixes, but may also have new bugs that need to be fixed, so they are not guaranteed to be stable.

Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ and I will help if I am able.

Features
============

- <b>Static AI Spawns</b> - AI spawn locations have been set up in cities, towns, and military bases for supported DayZ maps. Always be on alert while looting.
- <b>Dynamic AI Spawns</b> - AI spawn locations are also randomly created around the map. AI can appear anywhere, anytime.
- <b>AI helicopter patrols</b> - AI helicopters patrol randomly around the map. Tip: Players on foot have the best chance of avoiding detection, but players in vehicles are much more noticeable to AI.
- <b>AI can use any lootable weapon</b> - DZAI builds a list of AI-usable weapons using DayZ's loot tables. Beware, AI with rarer weapons will be more dangerous.
- <b>AI health system</b> - AI units can take as much damage as players, and can also be knocked unconscious by heavy damage. Headshots are more likely to knock out an AI unit.

Compatibility
============

- DZAI is designed to be compatible with most publicly-available DayZ Mods. Unsupported mods are listed further below.
- DZAI does not support any DayZ map or mod that is non-public, in development, or has an AI addon prepackaged.
- DZAI may or may not function properly with unsupported mods.

Compatibility with other AI addons:
============

- DZAI is not tested for compatibility with any other AI addons, therefore any issues that arise from using other AI addons with DZAI are entirely up to the user to solve.
- If using any addons that include AI, ensure that they do not modify side relations settings.
- Users have reported that DZAI is compatible the DayZ Misson addon. If using the mission addon, do not include the file(s) that set side relation settings (ie: factions.sqf).
- <b>Final Reminder:</b> DZAI is not guaranteed to work in conjunction with other AI mods. Unexpected AI behavior may happen.

<b>Supported DayZ maps and mods:</b>

- Supported Maps: Chernarus, Namalsk, Celle, Fallujah, Lingor/Hunting Grounds, Isla Duala, Oring, Panthera, Sahrani, Takistan, Taviana, Trinity Island, Utes, Zargabad.
- Supported Mods: DayZ 2017, DayZ 2017 Namalsk, DayZ Civilian, DayZ Epoch, DayZ Overwatch.

<b>Unupported DayZ mods:</b>

- DayZ+, DayZ Epidemic, DayZ Taviana (Tactical_Force version), DayZ Invasion 1944.

<b>Known Issues:</b>

- AI are spawned server-side, therefore any buildings or objects spawned client-side only are invisible to AI, meaning they can walk, see, and shoot through these objects. If you use any mods or scripts that add buildings or bases to the map, please make sure the buildings are not spawned client-side.
- The above issue also applies to clutter (wrecks) and other buildings spawned by DayZ's CfgTownGenerator. DZAI includes an experimental fix for this issue. Enable this fix by setting DZAI_objPatch = true in dzai_config.sqf. This fix takes about 60-90 seconds to run at server start.


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
	
5. If you do not wish to use DZAI's AI helicopter patrols, skip to step 6. Otherwise, continue reading. <b>Note: This step is not required for DayZ Epoch as of version 1.0.2.4.</b>
	
	Edit your server_cleanup.fsm (located in \dayz_server\system). Search for this line: 

		"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"") then {" \n

		
	If you <b>do not</b> have the Animated HeliCrash addon installed, change the line to this :


		"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"" && (vehicle _x getVariable [""DZAI"",0] != 1)) then {" \n
	 
	 
	If you <b>do</b> have the Animated HeliCrash addon installed (or unsure if you do), change the line to this:


		"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"" && ((vehicle _x getVariable [""Sarge"",0] != 1) && (vehicle _x getVariable [""DZAI"",0] != 1))) then {" \n

		
	You will need to manually enable helicopter patrols by editing dzai_config.sqf and setting DZAI_aiHeliPatrols = true;
	
6. A small edit to your BattlEye filters is needed. Inside your BattlEye folder, edit your addmagazinecargo.txt. Locate the line that reads:
	
		"5=ItemRadio"
		
	Edit it to this:

		//"5=ItemRadio"

	If you cannot find this line, do not make any changes.

7. Optionally, you may edit DZAI's settings in dayz_server\DZAI\init\dzai_config.sqf

8. Repack your dayz_server.pbo by right-clicking the unpacked folder, then click on "create PBO". If prompted to overwrite, click "Yes".

Note: You may store your custom settings changes in DZAI\DZAI_settings_override.sqf. This file is a convenient way to store and transfer your custom settings when upgrading to a newer version of DZAI. Further instructions are provided inside this file.


DZAI 1.6.0 Changelog:
============

- [NEW] Radio text warnings for AI pursuit will now report direction and distance of pursuing AI group.
- [NEW] Added support for AI plane patrols. To add planes, simply add them to the helicopter classname array (DZAI_heliTypes). Unarmed planes will be given an M240.
- [NEW] DZAI will now auto-detect the number of available gunner seats. This means you can now use helicopters with any number of gunner seats, or no gunners at all.
- [NEW] For new maps that DZAI does not have config files for, DZAI will now automatically generate basic static triggers at every city and town as well as spawn a certain number of dynamic triggers, depending on the number of city/town locations on the map. This is a temporary measure for newly-released maps until proper config files can be made for DZAI.
- [NEW] Re-implemented area blacklist to prevent dynamic AI spawns from being created in marker-specified areas.
- [NEW] DZAI will now autodetect Epoch if an unrecognized map is being used.
- [FIXED] Helicopter patrol spawning script will now wait for helicopter classname table to finish verifying before proceeding to spawn patrols. If all classnames happen to be invalid, DZAI will default to using the UH1H_DZ instead.
- [FIXED] Helicopter spawning script will now check if the vehicle classname is either a Helicopter or Plane type vehicle. If the vehicle is neither, it will spawn a UH1H by default instead.
- [CHANGED] AI findKiller seek range reduced to 350/450 (min/max) from 400/500 (min/max).
- <b>[CHANGED] dzai_variables.sqf has been renamed to dzai_config.sqf for better clarity.</b>
- [CHANGED] Updated file/folder layout for better organization of config files.
- [CHANGED] If a static trigger cannot find suitable building locations to use as spawn points, it will generate a random position within 220m of the trigger position. Previously, the trigger's position was used as a spawn point if no suitable locations were found.
- [CHANGED] Static triggers will now only spawn AI near buildings that can spawn loot or zombies.
- [CHANGED] The number of dead AI units ejected after destroying an AI air patrol now depends on the actual number of units on board. (ie: A UH1H will eject 3 units, a Camel biplane will eject 1 unit).
- [CHANGED] Changed default respawn time for static AI to 10 minutes after the last surviving unit has been killed. (Increased delay from 5 minutes).
- [CHANGED] Halved maximum bonus AI accuracy for ground AI units. This means that the lowest-level AI will no longer have a chance of having the same accuracy rating as the most elite-level AI.
- [CHANGED] Removed bonus AI accuracy for AI helicopter gunners. Accuracy rating is now fixed at 50% of maximum value. Note: Previously, AI gunner accuracy could vary between 45-55% of maximum possible value.
- [REMOVED] Removed ItemTent from AI loot tables.

1.6.1 Update:

- [CHANGED] Reduced maximum bonus spotDistance rating for all AI skill tiers.
- [CHANGED] Reduced minimum spotDistance rating for AI skill tier 3 (max tier).
- [CHANGED] Reduced NWAF AI spawns. There are now fewer groups spawned, and group sizes have been decreased slightly as well.

Note: Information about past updates are archived in changelog_archive.txt


Contribute
============

- Anyone can help further the development of DZAI by giving constructive feedback and comprehensive bug reports. 
- YouTube videos of DZAI in action are also immensely helpful for influencing the design direction of this AI mod.
- I continue development of DZAI on my spare time, which often isn't very plentiful. If you'd like to support me with a small donation, thank you. I have set up a convenient button below.


[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=9PESMPV4SQFDJ)
