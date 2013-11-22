DZAI 1.8.1 - AI Addon for DayZ
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
	
5. Optionally, you may edit DZAI's settings in dayz_server\DZAI\init\dzai_config.sqf

8. Repack your dayz_server.pbo by right-clicking the unpacked folder, then click on "create PBO". If prompted to overwrite, click "Yes".

Note: You may store your custom settings changes in DZAI\DZAI_settings_override.sqf. This file is a convenient way to store and transfer your custom settings when upgrading to a newer version of DZAI. Further instructions are provided inside this file.


DZAI 1.8.0 Changelog:
============

- 1.8.0 Update: http://opendayz.net/threads/dzai-1-8-0-update-changelog.15304/#post-83211
- 1.8.0.1 Hotfix: http://opendayz.net/threads/dzai-1-8-0-1-hotfix-fix-for-ai-heli-landing.15323/
- 1.8.1 Update: 


Contribute
============

- Anyone can help further the development of DZAI by giving constructive feedback and comprehensive bug reports. 
- YouTube videos of DZAI in action are also immensely helpful for influencing the design direction of this AI mod.
- I continue development of DZAI on my spare time, which often isn't very plentiful. If you enjoy using DZAI and would like to support me with a small donation, thank you.


[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=9PESMPV4SQFDJ)
