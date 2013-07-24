DZAI 1.3.0 - AI Addon for DayZ
============


Introduction
============

DZAI is designed to be a simple, configurable, easy-to-install AI package. This AI package is MP-compatible and works out of the box with any supported DayZ map. Installation instructions are provided below.

DZAI is also available as a "Lite" version. More details can be found here: https://github.com/dayzai/DZAI-Lite

Reminder: The latest stable build of DZAI is always located in the 'master' branch. The latest experimental build is located in a separate branch, usually labeled with a version number. These experimental builds have the latest improvements and bugfixes, but may also have new bugs that need to be fixed, so they are not guaranteed to be stable.

Detailed documentation for the DZAI package is coming. Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ and I will help if I am able.


Supported DayZ Mods:
============
- DZAI is designed to be compatible with every publicly-available DayZ Mod.


Partially-supported DayZ Mods:
============
- Certain maps/mods have partial support because they are unpopular or development has ceased. DZAI is not constantly updated for these maps/mods in particular but they should still be compatible.
- This list includes the following maps/mods: Fallujah, Isla Duala, Oring, Panthera, Sahrani, Takistan, Taviana, Utes, Zargabad.


Unsupported DayZ Mods:
============
- At present time no DayZ mod are known to have issues with DZAI. This section will be updated once issues with any DayZ mods are known.


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

	
DZAI 1.3.0 Rolling Changelog:
============

- [NEW] Unconsciousness for AI units: AI units can now be temporarily knocked unconscious when shot. Damage threshold to knock out an AI unit is identical to player units. Unconsciousness time is currently fixed at 10 seconds.
- [NEW] Added support for DayZ Hunting Grounds. Includes new AI skin models and backpacks.
- [UPDATED] AI units spawned with weapongrade = 0 now have a 50% chance of being assigned a pistol or rifle.
- [UPDATED] Static and dynamic AI now share a common Killed eventhandler. This eventhandler decides which action to take when the AI unit is killed (respawn or relocate trigger).
- [UPDATED] AI hands and legs can now be broken in the same way as players. Damage to hands and legs is only applied when sufficient damage has accumulated to cause a fracture.
- [UPDATED] If BIS_fnc_findSafePos can't find a suitable location to spawn/respawn static AI from building positions, exact positions of the buildings will be used instead.
- [MODIFIED] Maximum AI bandages increased to 3 from 2 (maximum self-heals).
- [MODIFIED] Time required for AI self-heal increased to 3.5 seconds from 3 seconds.
- 

Note: Information about past updates are archived in changelog.txt
