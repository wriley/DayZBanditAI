DZAI 1.1.0 - AI Addon for DayZ
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

Latest Updates:
============

1.1.0 Update:

- [NEW] AI respawns are now processed in a queue by a single script instead of one script per individual unit. AI now respawn after the entire group is killed. Timer begins when the last surviving member dies.
- [NEW] AI spawned from dynamic triggers now seek out the player's position at the time of trigger activation, then begin patrolling the area.
- [NEW] Radio now issues an on-screen text warning to the player if they are being pursued by AI bandits. (Dynamically-spawned AI will pursue a randomly selected player. AI will pursue a player who killed a team member if DZAI_findKiller is set 'true' in dzai_variables.sqf)
- [NEW] AI groups now actively pursue player responsible for killing a group member for up to 120 seconds if DZAI_findKiller is enabled. AI death will be detected if player is within 250-450m of the killed AI. Pursuit distance is randomized between 500-700m of killed AI unit's location.
- [REMOVED] Radio no longer prevents AI from pursuing player if the player killed a team member.
- [MODIFIED] AI group size may now vary with each respawn. Previously, the group size was fixed at the time of the first trigger activation.
- [MODIFIED] Large AI skill parameter increases for AI. Highest-skilled AI may now potentially reach maximum skill levels for all skills except Accuracy and AimingShake.
- [MODIFIED] AI counts are now updated when an AI group is spawned, killed entirely, or despawned.
- [MODIFIED] Increased rate of healing for injured AI from 5% health/15 seconds to 10% health/15 seconds. (rate determined by DZAI_refreshRate)
- [MODIFIED] AI loot scripts are now Spawned instead of Called due to their low priority.
- [MODIFIED] Temporary NVG feature can only be in effect (if enabled) during night time.
- [MODIFIED] Respawn delay now controlled by a single variable (DZAI_respawnTime).
- [MODIFIED] Dynamic trigger manager now relocates 25% of existing dynamic triggers every 15 minutes instead of relocating 1 trigger every 3 minutes. (4 triggers/15 minutes for Chernarus).
- [MODIFIED] DZAI server monitor now also reports the current number of AI groups queued for respawning.
- [MODIFIED] Classname verification script no longer checks if nonexistant classnames are banned.
- [MODIFIED] AI corpse deletion is now handled by the respawn handler script.

Note: Information about past updates are archived in changelog.txt
