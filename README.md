DZAI 1.1.12.1 - AI Addon for DayZ
============


Introduction
============
<b>IMPORTANT</b>: Version 0.9.0 onwards will be moving to the dayz_server.pbo instead of the mission pbo. If your DayZ server hoster does not give you access to your dayz_server.pbo, please notify me on the OpenDayZ forums (contact info below) with the hoster name. Thanks.

DZAI is designed to be a simple, configurable, easy-to-install AI package. This AI package is MP-compatible and works out of the box with any supported DayZ map. Installation instructions are provided below.

DZAI is also available as a "Lite" version. More details can be found here: https://github.com/dayzai/DZAI-Lite

Reminder: The latest stable build of DZAI is always located in the 'master' branch. The latest experimental build is located in a separate branch, usually labeled with a version number. These experimental builds have the latest improvements and bugfixes, but may also have new bugs that need to be fixed, so they are not guaranteed to be stable.

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
- Locate the line that reads: <code>waituntil{isNil "sm_done"}; // prevent server_monitor be called twice (bug during login of the first player)</code> (located near line 200). If this line can't be located, find the one that reads: <code>// # END OF STREAMING #</code> (Located near line 174).
- Underneath this line, insert the following (If reading this in a text editor, ignore the code tags!): <code>call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";</code>. Refer to the provided example server_monitor.sqf (named server_monitor_example.sqf)
- Repack your dayz_server.pbo (it should be about 400KB larger).
- You are now ready to start your server.

Note: DZAI's settings file can be found in DZAI\init\dzai_variables.sqf

BattlEye Edits Required:
============

DZAI's loot tables include the Radio (ItemRadio) which will trigger a BattlEye kick if a player attempts to place it in their backpack. To remedy this, you will need to comment out the line in your addmagazinecargo.txt that reads "5=ItemRadio" by editing it to "//5=ItemRadio"

Latest Updates:
============

1.1.10 Update:

- [NEW] AI units now stop to heal when they reach 75% health. Healing process takes 3 seconds to complete and fully heals the unit, including broken legs. Each AI unit can heal up to 2 times with a 60 second cooldown in between.
- [UPDATED] AI health increased. AI can now take damage equivalent to 12000 units of blood (headshots do 50% additional damage). AI hands modified to be immune from damage (aim cannot be impaired).
- [UPDATED] Mod-specific features setting in dzai_variables.sqf updated to be more descriptive.
- [MODIFIED] Only zombies close to AI group leaders will be marked as hostile, instead of any AI unit.
- [MODIFIED] Changed activation delay for triggers created by DZAI_spawn (custom spawn function) to 10/15/20 seconds from 15/17/20 seconds.
- [MODIFIED] Chernarus: Moved several spawn points for Cherno.
- [MODIFIED] Chernarus: AI patrols should no longer pass by military/medical tents in Cherno. (Reason: All buildings added in mission.sqm are invisible to AI units).
- [MODIFIED] Decreased number of medical item loot in AI backpack from 2 to 1. Decreased number of small misc item loot in AI backpack from 3 to 2 (maximum).

1.1.11 Update:

- [UPDATED] Separated static spawn definitions into separate files for ease of editing (triggers, markers).
- [MODIFIED] Repositioned AI spawn areas for Balota (town) and Balota Airfield to reduce chance of AI encounters near medical tent area.
- [MODIFIED] Combined AI damage reduction factors for bullet/non-bullet damage.
- [MODIFIED] Adjusted AI skill ratings (Accuracy, AimingSpeed decreases).

1.1.12 Update:

- [NEW] AI units can now be stunned with Tasers. (DZAI will detect if Double Doppler's Taser Mod is installed).
- [UPDATED] DZAI now automatically detects the presence of certain DayZ mods and enables extra settings. Automatically detected mods: DayZ 2017, Namalsk 2017, DayZ Epoch, DayZ Overwatch. NOTE: DayZ Civilian requires manual editing in dzai_variables.sqf to enable extra features.
- [UPDATED] Removed setting to enable extra features for DayZ Lingor (Skaronator version) since it should be fully supported without user intervention.

1.1.12.1 Hotfix:

- [FIXED] Corrected typo that prevented skill-setting script from properly setting AI skills.
- [UPDATED] Enabling Extended Debug mode (DZAI_debugLevel = 2) now reports AI unit's skill settings into RPT log on unit creation.
- [REMOVED] Removed depreciated script files.

Note: Information about past updates are archived in changelog.txt
