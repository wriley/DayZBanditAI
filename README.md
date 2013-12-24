DZAI 1.9.1.2 - AI Addon for DayZ
============


Introduction
============

DZAI is designed to be a simple, configurable, easy-to-install AI package. This AI package is designed to work out of the box with any supported DayZ mod/map. Installation instructions are provided below.

Questions? Comments? Start a thread on the OpenDayZ forums to send your feedback or ask questions: http://opendayz.net/forums/DZAI/.

Features
============

- <b>Static AI Spawns</b> - AI spawn locations have been set up in cities, towns, and military bases for supported DayZ maps. AI are attracted to loot piles, so always be alert while looting.
- <b>Dynamic AI Spawns</b> - AI spawn locations are also randomly created around the map. AI can appear anywhere, anytime.
- <b>AI helicopter patrols</b> - AI helicopters patrol randomly around the map. Tip: Players on foot have the best chance of avoiding detection, but players in vehicles are much more noticeable to AI.
- <b>AI can use any lootable weapon</b> - DZAI builds a list of AI-usable weapons using DayZ's loot tables. Beware, AI with rarer weapons will be more dangerous. (Users may also choose to set up their own AI loadouts).
- <b>AI health system</b> - AI units can take as much damage as players, and can also be knocked unconscious by heavy damage. Headshots are more likely to knock out an AI unit and for longer durations.

Compatibility
============

- DZAI is designed to be compatible with most publicly-available DayZ Mods. Unsupported mods are listed further below.
- DZAI does not support any DayZ map or mod that is non-public, in development, or has an AI addon prepackaged.
- DZAI may or may not function properly with unsupported mods.

<b>Compatibility with other AI addons:</b>

- DZAI is not tested for compatibility with any other AI addons, therefore any issues that arise from using other AI addons with DZAI are entirely up to the user to solve.
- If using any addons that include AI, ensure that they do not modify side relations settings.
- Users have reported that DZAI is compatible the DayZ Misson addon. If using the mission addon, do not include the file(s) that set side relation settings (ie: factions.sqf).
- <b>Final Reminder:</b> DZAI is not guaranteed to work in conjunction with other AI mods. Unexpected AI behavior may happen.

<b>Supported DayZ maps and mods:</b>

- Supported Maps: Chernarus, Namalsk, Celle, Fallujah, Lingor/Hunting Grounds, Isla Duala, Oring, Panthera, Sahrani, Takistan, Taviana, Trinity Island, Utes, Zargabad.
- Supported Mods: DayZ 2017, DayZ 2017 Namalsk, DayZ Civilian, DayZ Epoch, DayZ Overwatch.
- Note: DZAI is able to run on unrecognized maps by automatically generating static spawns in cities and towns.

<b>Known Issues:</b>

- Buildings spawned by DayZ's CfgTownGenerator are invisible to AI, meaning they can walk, see, and shoot through these objects. DZAI includes an experimental fix for this issue. Enable this fix by setting DZAI_objPatch = true in dzai_config.sqf. This fix takes about 60-90 seconds to run at server start. (This option is especially important for original DayZ and DayZ Overwatch).
- Note: The above doesn't apply to the majority of addons that add buildings to the map.
- Some users experience problems entering the game after repacking their dayz_server.pbo. To solve this issue, follow the instructions contained in the readme file in the authentication_fix folder included in this download package, or follow the install instructions
using PBO Manager.

Basic Installation Guide (with cpbo):
============

1. Unpack your dayz_server.pbo. If using cpbo, right click dayz_server.pbo and click "Extract".
2. Copy the downloaded DZAI folder inside your unpacked dayz_server folder.
3. Inside the unpacked dayz_server folder, locate server_monitor.sqf in dayz_server\system\. Edit server_monitor.sqf with a text editor.
4. Inside server_monitor.sqf, search for the line that says:

		allowConnection = true;

	Change the line to this:

		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";
		allowConnection = true;
	
5. Optionally, you may edit DZAI's settings in DZAI\init\dzai_config.sqf
6. Repack your dayz_server.pbo by right-clicking the unpacked folder, then click on "create PBO". If prompted to overwrite, click "Yes".


Basic Installation Guide (with PBO Manager):
----------------------------------------------------

**Note**: To avoid pbo corruption, do not use the "Pack into dayz_server.pbo" right-click option.

1. Unpack your dayz_server.pbo. Right click dayz_server.pbo, select "PBO Manager", click on "Extract to dayz_server\"
2. Inside the unpacked dayz_server folder, locate server_monitor.sqf in dayz_server\system\. Edit server_monitor.sqf with a text editor.
3. Inside server_monitor.sqf, search for the line that says:

		allowConnection = true;

	Change the line to this:

		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";
		allowConnection = true;
		
4. Right click the DZAI folder inside the download package and click "Copy".
5. Double-click your dayz_server.pbo to open the PBO Manager GUI. Inside the GUI, right-click on "dayz_server.pbo" and click "Paste". In the GUI, you should see "DZAI" in the list below "dayz_server.pbo".
6. Optionally, you may edit DZAI's settings in DZAI\init\dzai_config.sqf
7. Copy all modified files back into their original locations inside dayz_server.pbo using the PBO Manager GUI.


Troubleshooting: A number of users have reported issues with entering the game after repacking their dayz_server.pbo. 
If you encounter this problem, try following the Basic Installation Guide with PBO Manager and avoiding use of the "Pack into dayz_server.pbo
right-click option. If that fails to fix the problem, follow the readme instructions in the authentication_fix folder included in the download package.

Note 1: You may store your custom settings changes in DZAI\DZAI_settings_override.sqf. This file is a convenient way to store and transfer your custom settings when upgrading to a newer version of DZAI. Further instructions are provided inside this file.

Note 2: Editing the server_cleanup.fsm is not required for AI vehicle patrols from DZAI version 1.8.0 onwards.


Changelog:
============

- 1.9.0 Update: http://opendayz.net/threads/dzai-1-9-0-update-changelog.17707/
- 1.9.1 Update: http://opendayz.net/threads/dzai-1-9-1-update-changelog.17739/
- 1.9.1.1 Hotfix: Fixes for blacklist areas, Epoch trader area blacklists, missionfile patch.
- 1.9.1.2 Hotfix: Includes all undocumented fixes made on 12/24/2013

Contribute
============

- Anyone can help further the development of DZAI by giving constructive feedback and comprehensive bug reports. 
- YouTube videos of DZAI in action are also immensely helpful for influencing the design direction of this AI mod.
- I continue development of DZAI on my spare time, which often isn't very plentiful. If you enjoy using DZAI and would like to support me with a small donation, thank you.


[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=9PESMPV4SQFDJ)
