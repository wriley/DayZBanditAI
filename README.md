DZAI 1.8.0 - AI Addon for DayZ
============


Introduction
============

DZAI is designed to be a simple, configurable, easy-to-install AI package. This AI package is MP-compatible and works out of the box with any supported DayZ map. Installation instructions are provided below.

Reminder: The latest stable build of DZAI is always located in the 'master' branch. The latest experimental build is located in a separate branch, usually labeled with a version number. These experimental builds have the latest improvements and bugfixes, but may also have new bugs that need to be fixed, so they are not guaranteed to be stable.

Questions? Comments? Start a thread on the OpenDayZ forums to send your feedback or ask questions: http://opendayz.net/forums/DZAI/.

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

- Buildings spawned by DayZ's CfgTownGenerator are invisible to AI, meaning they can walk, see, and shoot through these objects. DZAI includes an experimental fix for this issue. Enable this fix by setting DZAI_objPatch = true in dzai_config.sqf. This fix takes about 60-90 seconds to run at server start. (This option is especially important for original DayZ and DayZ Overwatch).
- Some users experience problems entering the game after repacking their dayz_server.pbo. To solve this issue, follow the instructions contained in the readme file in the authentication_fix folder included in this download package.

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


DZAI 1.7.1 Changelog:
============

- [NEW] Added "passive zed aggro" option. With this enabled, zombies will tend to loiter towards the nearest AI group leader if there is one nearby (within 75m). Enable by setting DZAI_passiveAggro = true in dzai_config.sqf. Default setting is false (disabled).
- [NEW] AI spawned from static triggers in large cities (100 or more lootable buildings within 250m) will now patrol randomly between buildings instead of patrolling in a circular pattern.
- [NEW] Added a test version of the reworked dynamic AI spawn system. This new dynamic spawn system randomly selects online players and spawns dynamic triggers directly on their position, rather than randomly distributing triggers around the map. More info here: http://opendayz.net/threads/release-dzai-lite-dynamic-ai-package.11116/page-27#post-78863. (Enable the test version by setting DZAI_V2dynSpawns = true).
- [NEW] Free-for-all mode for all AI units. If enabled, all AI groups will be hostile to each other, but AI in the same group will not be hostile to each other. Note: FFA mode will not include AI units spawned using the custom spawn function (DZAI_spawn) and does not include AI helicopters. Custom-spawn AI and helicopter AI will be hostile to static and dynamic AI and vice-versa.
- [FIXED] Static triggers will now search for up to 150 buildings capable of spawning loot/zombies within a 250m radius rather than the nearest buildings.
- [FIXED] AI air vehicles will generate loot if destroyed by players using vehicle weapons. Note: Vehicles with multiple gunners such as helicopters may have issues with this.
- [FIXED] Fixed issue with AI helicopter spawning script that some users were experiencing.
- [UPDATED] Updated zed aggro script to a simplified DayZ 1.8.x version.
- [UPDATED] Radio text messages can now be disabled in dzai_config.sqf by setting DZAI_radioMsgs = false. Default setting is true (enabled).
- [UPDATED] Dynamic AI will now use trigger position as patrol center point if player logs out or is killed during pursuit state.
- [UPDATED] Cause of death text for Study Body action on AI units is now randomized between blood loss and head shot.
- [CHANGED] AI-to-AI friendly fire damage reduced by 80% (same as collision damage reduction).
- [CHANGED] Dynamic AI patrol radius decreased from 250m to 225m.
- [CHANGED] AI unconsciousness time increased from 10 to 12.5 seconds.
- [CHANGED] General increase in MilitarySpecial/HeliCrash weapon probability.
- [CHANGED] Added separate weapongrade probabilities for AI helicopter crew. AI helicopters now have the best chance of generating MilitarySpecial/HeliCrash loot.
- [CHANGED] Slight reduction in base AI aiming speed rating values.
- [CHANGED] AI helicopter wreck cleanup delay increased from 10 to 15 minutes.
- [CHANGED] Chernarus: Further reductions and changes in AI spawns at NWAF. Spawns around the airfield have a reduced equipType value (should allow slightly easier entry to the airfield).
- [CHANGED] Chernarus: Northmost NWAF static spawn location shifted towards the industrial hangars.
- [CHANGED] If an AI unit is killed by another AI unit, all magazines on the victim are removed.
- [CHANGED] AI killer-hunting behavior and dynamic AI player-seeking behavior now continues even if the player gets on a bicycle or motorcycle.
- [CHANGED] Weapongrade value can now be explicitly defined when using the DZAI_spawn custom spawn function (instead of specifying equipType). This value will determine which DayZ loot table to generate AI weapons from. More information can be found in the custom_spawns config files.
- [CHANGED] Custom spawn function will now generate AI spawn points on-the-fly instead of generating a set of predetermined spawn points.
- [CHANGED] Custom spawns can now have respawn disabled. If the entire AI group is killed, the spawn trigger will self-delete. If the spawn area is despawned and some units have survived, the number of surviving AI units is saved.
- [CHANGED] Radio text messages now have a 0.5 second fade-in time.
- [CHANGED] The format for calling the custom spawn function (DZAI_spawn) has changed. To see the updated format, see this link: http://opendayz.net/threads/release-dzai-lite-dynamic-ai-package.11116/page-28#post-79148.
- [CHANGED] AI health increased very slightly.
- [CHANGED] Reduced probability of generating pistol weapon instead of rifle for AI with weapongrade 0 from 55% to 45%.
- [REMOVED] Removed Rocket_DZ and Survivor3_DZ skins from DZAI Epoch config file.

1.7.1.1 Supplemental Update:
------------------------------

- [CHANGED] Zombies near AI group leader are once again revealed (speeds up target acquisition for zeds).

1.7.1.2 Bugfix:
------------------------------

- [FIXED] Fixed typo that prevented non-respawn option in DZAI_spawn function from working properly. (Thanks to Markk311)

1.7.1.3 Bugfix:
------------------------------

- [FIXED] Disabling dynamic AI spawns should not disable DZAI's map reference marker if helicopter patrols are enabled.

Note: Information about past updates are archived in changelog_archive.txt

Contribute
============

- Anyone can help further the development of DZAI by giving constructive feedback and comprehensive bug reports. 
- YouTube videos of DZAI in action are also immensely helpful for influencing the design direction of this AI mod.
- I continue development of DZAI on my spare time, which often isn't very plentiful. If you enjoy using DZAI and would like to support me with a small donation, thank you.


[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=9PESMPV4SQFDJ)
