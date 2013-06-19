DZAI 1.0.2 - AI Addon for DayZ
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
- Locate the line that reads: <code>// # END OF STREAMING #</code> (Located near line 174. Exact location depends on your DayZ server software).
- Underneath this line, insert the following (If reading this in a text editor, ignore the code tags!): <code>call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";</code>. Refer to the provided example server_monitor.sqf (named server_monitor_example.sqf)
- Repack your dayz_server.pbo (it should be about 400KB larger).
- You are now ready to start your server.

Latest Updates:
============

Note: Information about past updates are archived in changelog.txt

1.0.0 Update:

- [NEW] Imported dynamic weapon list feature from DZAI Lite 0.0.7-0.0.8. This feature is enabled by default to ensure DZAI's compatibility across all DayZ maps. For more details, see the DZAI Lite patch notes (https://github.com/dayzai/DZAI-Lite).

1.0.0.1 Hotfix (DayZ 1.7.7 compatibility):

- [FIXED] Added fixes to dynamic weapon list feature to ensure compatibility with DayZ 1.7.7 as well as previous versions.

1.0.0.2 Hotfix (DayZ 1.7.7 compatibility):

- [FIXED] Implemented additional compatibility fixes to dynamic weapon list feature.
- [NEW] Namalsk: Added compatibility with Namalsk's selectable loot table feature. DZAI will read from the user-specified loot table instead of the default. 
- [MODIFIED] Namalsk: DZAI will now also read from the HeliCrashNamalsk table instead of HeliCrash.
- [MODIFIED] Added MeleeBaseBallBat and MeleeMachete to AI weapon banlist.
- [MODIFIED] User-specified weapon banlist is now added to the default weapon banlist, instead of the other way around.

1.0.1 Update:

- [NEW] Execution time is now reported into RPT log for DZAI initialization, dynamic weapon list generation, and classname verification.
- [NEW] Overlapping dynamic triggers now spawn a reduced number of AI units.
- [NEW] If a static trigger has no minimum number of AI to spawn and total AI to spawn is zero, the trigger will continue to recalculate the total number of AI to spawn every 2 minutes until a non-zero amount is reached.
- [REMOVED] Removed M107 and AS50 from preset weapon classname table.
- [MODIFIED] Server no longer waits for DZAI to finish initializing before continuing startup process.
- [MODIFIED] Static and dynamic triggers are generated only after dynamic weapon list and classname verification (if enabled) are completed. This avoids possible cases where AI spawn with invalid items before the weapon list and verification steps are completed.
- [MODIFIED] AI units will now always spawn in an "AWARE" state. When a member if an AI group is killed, the group's state is changed to "COMBAT". When all members of the group have been killed, the group's state will return to "AWARE" with the first respawning unit.
- [MODIFIED] AI units will no longer move with "LIMITED" speed. Possible movement modes are "NORMAL" (move in formation) or "FULL" (move without regard to maintaining formation).
- [MODIFIED] Building positions are now calculated directly instead of using interior positions (less complicated calculations).
- [MODIFIED] Spawn points are now calculated when the trigger is first activated, and stored for re-use for subsequent activations, instead of being re-calculated with each activation.
- [MODIFIED] AI skill parameters are now more consistent for each weapongrade value. Base values increased, bonus values decreased.
- [MODIFIED] Pistol ammo loot is now fixed at one magazine.
- [MODIFIED] Frequency of dynamic trigger manager script increased to every 3 minutes from 5 minutes.
- [MODIFIED] Increased probabilities of randomizing dynamic trigger location and activation chance.
- [MODIFIED] Modified preset dynamic trigger settings for all maps.
- [MODIFIED] Several fixes and DayZ 1.7.7 compatibility updates to dynamic weapon list script.
- [MODIFIED] Delay between each dynamic trigger spawn now fixed at 5 seconds.

1.0.2 Update:

- [FIXED] Fixed a bug where default settings for dynamic trigger settings were overwriting pre-map settings.
- [NEW] AI units with broken legs now have a 10% chance to have their legs healed (chance is evaluated every cycle determined by DZAI_refreshRate).
- [MODIFIED] Radio now has a 3% rate in low-tier tools table. (Note: If DZAI_findKiller is enabled, having a radio prevents AI group from automatically detecting and investigating player's position if they have killed a member of an AI group)
- [MODIFIED] Trigger area overlap for dynamic triggers now limited to 10% area overlap (Up to 3 locations are generated per trigger to help ensure that no two triggers overlap).
- [MODIFIED] Adjusted weapon loadout probabilities for dynamic-spawned AI.

