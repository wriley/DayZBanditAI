DZAI 1.2.2 - AI Addon for DayZ
============


Introduction
============

DZAI is designed to be a simple, configurable, easy-to-install AI package. This AI package is MP-compatible and works out of the box with any supported DayZ map. Installation instructions are provided below.

DZAI is also available as a "Lite" version. More details can be found here: https://github.com/dayzai/DZAI-Lite

Reminder: The latest stable build of DZAI is always located in the 'master' branch. The latest experimental build is located in a separate branch, usually labeled with a version number. These experimental builds have the latest improvements and bugfixes, but may also have new bugs that need to be fixed, so they are not guaranteed to be stable.

Detailed documentation for the DZAI package is coming. Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ and I will help if I am able.


Supported and tested maps:
============
- Chernarus
- Namalsk

Supported (untested) maps:
============
No issues have been reported with the following maps, but have not been tested.
- Celle*
- Chernarus - DayZ 2017
- Chernarus - DayZ Epoch
- DayZ Civilian
- Namalsk - DayZ Epoch
- Namalsk - DayZ 2017
- Fallujah
- Isla Duala
- Isla Duala - DayZ Epoch
- Lingor - Skaronator
- Lingor - DayZ Epoch
- Oring
- Panthera
- Sahrani
- Takistan
- Taviana - DayZ Epoch
- Utes
- Zargabad
- Taviana 2.0
- Lingor 1.3

Note: Only DayZ maps/mods with publicly-available server files will be supported.
* Marks maps/mods that are planned to be tested.

Installation Instructions:
============
<b>IMPORTANT</b>: The AI helicopter patrols added in 1.2.0 require edits to your server_cleanup.fsm. Failure to edit this file properly will cause helicopters spawned by DZAI to explode. Instructions are provided in the Required Edits section below.
- (Only do this if you have an older version of DZAI installed in your mission file): Delete the DZAI folder inside your mission file and remove the reference to DZAI in your init.sqf. Repack your mission pbo <b>without</b> DZAI.
- Unpack your <b>dayz_server.pbo</b>
- Copy the new DZAI folder inside your unpacked dayz_server folder. (You should also see config.cpp in the same level.)
- Edit your <b>server_monitor.sqf</b>. It is located within \dayz_server\system. 
- Locate the line that reads: <code>waituntil{isNil "sm_done"}; // prevent server_monitor be called twice (bug during login of the first player)</code> (located near line 200). If this line can't be located, find the one that reads: <code>// # END OF STREAMING #</code> (Located near line 174).
- Underneath this line, insert the following (If reading this in a text editor, ignore the code tags!): <code>call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";</code>. Refer to the provided example server_monitor.sqf (named server_monitor_example.sqf)
- Read the section below on other required edits and follow the instructions.
- Repack your dayz_server.pbo (it should be about 400KB larger).
- You are now ready to start your server.

Note: DZAI's settings file can be found in DZAI\init\dzai_variables.sqf

Required Edits:
============

<b>BattlEye Edits:</b>
DZAI's loot tables include the Radio (ItemRadio) which will trigger a BattlEye kick if a player attempts to place it in their backpack. To remedy this, you will need to comment out the line in your addmagazinecargo.txt that reads "5=ItemRadio" by editing it to "//5=ItemRadio"

<b>server_cleanup.fsm:</b>
In order to use DZAI's AI helicopter patrols, you must first edit your server_cleanup.fsm located in dayz_server\system. Locate this line in server_cleanup.fsm:


	"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"") then {" \n

	
If you <b>do not</b> have the Animated Helicopters addon installed, change the line to this :


	"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"" && (vehicle _x getVariable [""DZAI"",0] != 1)) then {" \n
 
 
If you <b>do</b> have the Animated Helicopters addon installed, change the line to this:


	"  	if(vehicle _x != _x && !(vehicle _x in _safety) && (typeOf vehicle _x) != ""ParachuteWest"" && ((vehicle _x getVariable [""Sarge"",0] != 1) && (vehicle _x getVariable [""DZAI"",0] != 1))) then {" \n

	
Latest Updates:
============

1.2.0 Update:

- [NEW] Humanity can now be awarded to players for AI unit kills. Humanity rewarded can be edited in DZAI_variables.sqf.
- [NEW] Added DZAI Scheduler to manage all scheduled tasks.
- [NEW] Added prototype version of AI helicopter patrols feature, which can be enabled in DZAI_variables.sqf. Helicopter patrols require edits to server_cleanup.fsm. Instructions have been provided in the Required Edits section. More details on the helicopters feature here: http://opendayz.net/threads/release-dzai-lite-dynamic-ai-package.11116/page-8#post-61128.
- [NEW] Added debug markers for static triggers. Markers will appear after the trigger's first activation. Color codes: Yellow (inactive), Orange (active), Red (Error).
- [FIXED] Fixed error that prevented Radio text messages from being displayed to player when dynamic AI have ended their pursuit state.
- [FIXED] Fixed bug where static triggers would be unable to continue spawning AI units if the calculated number of AI to respawn is zero.
- [UPDATED] SHK_pos package included with DZAI is now only initialized if it is not already started.
- [UPDATED] All AI death loot scripts integrated into fnc_addLoot.
- [UPDATED] Updated DZAI Server Monitor output. Text output is now separated into overall server statistics (uptime, AI count), static AI statistics, dynamic AI statistics.
- [UPDATED] Chernarus: Repositioned patrol area and spawn points for AI units at NEAF. AI numbers increased to 2 minimum + 2 maximum additional.
- [UPDATED] Reduced probability of generating Small-type misc items from 66% to 60%.
- [UPDATED] Reduced probability of generating Large-type misc items from 20% to 15%.
- [MODIFIED] Locations of debug markers for dynamic triggers are now refreshed at an interval specified by DZAI_monitorRate.
- [MODIFIED] Renamed several script files, some added directly into DZAI_functions.sqf
- [MODIFIED] Maximum dynamic trigger area overlap tolerance increased to 15% from 10%.

1.2.1 Update:

- [UPDATED] Added a check if DZAI is already running to prevent multiple instances of DZAI from starting.
- [MODIFIED] Adjusted minimum AI helicopter flying height to 90m.

1.2.2 Update:

- [FIXED] AI self-healing now heals damage properly.
- [REMOVED] Removed all AI skin loot and related loot tables. (Use Remove Clothes addon instead)
- [REMOVED] Removed auto-detection for DayZ 2017 and Namalsk 2017 due to possibility of future false-positive detections. All 2017 mods now require manual activation in dzai_variables.sqf.
- [UPDATED] Added probability checks for adding medical and edible loot. Default settings: 75%/medical, 85%/edible.
- [UPDATED] Increased AI helicopter crew skills.
- [UPDATED] Increased AI health. Note: Due to the differences between how AI and player health is calculated, AI units may be more or less durable than player units.
- [UPDATED] Chernarus: Shifted Stary Sobor AI patrol further away from military tents as AI units can see through the tent walls.
- [UPDATED] Chernarus: Changed Stary Sobor AI spawns from 1 min + 3 additional max to 2 min + 2 additional max.
- [UPDATED] Changed activation delays for all static triggers to 10/15/20 seconds.
- [UPDATED] Setting debugMarkers = 2 will enable debug markers for static triggers and allow continuous refreshing of dynamic trigger locations. (Setting value to 1 will disable these markers but other debug marker functionalities remain).

Note: Information about past updates are archived in changelog.txt
