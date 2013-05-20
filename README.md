DZAI - DayZ AI Addon (Current version: 0.06+0.07 Patch 2)
============

DZAI is designed to be a simple, configurable, easy-to-install AI package that requires a simple one-line edit to your init.sqf file. This AI package is MP-compatible and works out of the box with any supported DayZ mission file. Installation instructions are provided below.

Currently supported and tested DayZ missions:
- Chernarus
- DayZ Epoch (Chernarus)

Currently supported (but untested) DayZ missions:
- Celle			(Pending testing)
- Namalsk		(Pending testing)
- Fallujah
- Isla Duala
- Lingor		(Note: DZAI is planned to support only Skaronator DayZ Lingor from version 0.08 onwards)
- Oring
- Panthera
- Takistan
- Taviana 2.0 	(Note: DZAI will no longer be updated for Taviana 2.0 after DayZ 1.7.7 is released)
- Utes
- Zargabad
- <b>Note</b>: DZAI version 0.03+ should work with any DayZ mission file. However for DayZ mods not listed above, no AI units will spawn from buildings and default DayZ loot tables will be used to generate AI loadouts. You will have to create and add your own configuration file to create new spawn points. AI may also be randomly spawned by modifying the DZAI_spawnRandom variable. 

Version 0.07 Patch 1&2 Update:
Note: Due to the number of changes added shortly after 0.06 was planned for release, 0.06 and 0.07 will be fully released together. Changes made in 0.06 and earlier are archived in changelog.txt

- [NEW] Dynamically-spawned triggers are now spawned using road positions using SHK_pos. Spawn range extended from 4000m to 4500m. Patrol distance decreased from 350m to 300m/waypoint (Author's note: Watch out for road ambushes!)
- [NEW] If an AI unit is killed, there can be a chance for the group leader to investigate the killer's last known position. (Note: Experimental feature, chance must be set manually in dayz_ai_variables)
- [NEW] Added loot tables for DayZ Epoch metal bar currency. Loot table structure is identical to new structure used for tool items. If "Epoch" mode is enabled, AI units will have a chance to carry metal bar currency.
- [NEW] Added "minimal configuration" setting. Overrides default config info with heavily stripped-down loot tables. If you are experiencing troubles with unsupported DayZ mods, try setting "DZAI_modName = "minimal" in dayz_ai_variables.
- [NEW] AI units spawned with weapongrade of 2 or higher can now be configured to always spawn with temporary NVGs if the normal probability check to spawn NVGs fails. This feature is disabled for DayZ 2017 and DayZ Namalsk (Note: Experimental feature, must be enabled manually in dayz_ai_variables)
- [NEW] AI units spawned with weapongrade of 0 may now spawn with a pistol instead of a rifle. 
- [NEW] On AI unit death, loot generation script will not generate an additional pistol if unit is already carrying one.
- [FIXED] Equipment Type of AI created from dynamically-spawned triggers was unintentionally hardcorded to 1.
- [MODIFIED] AI loot table for tool items restructured. New format: [["ItemName1",Chance1],["ItemName2",Chance2],["ItemName3",Chance3]...etc]
- [MODIFIED] Chernarus: Increased maximum number of additional AI units spawned from 2 to 3. Extended patrol distance from 125 to 225m/waypoint. Disabled AI spawn centered around Stary Sobor military tents. 
- [MODIFIED] Chernarus: Decreased minimum number of AI units spawned on Skalisty Island from 2 to 0. Increased maximum additional number of AI units spawned from 0 to 1. (0 minimum, 1 maximum). 
- [MODIFIED] Increased maximum additional AI respawn delay from 120 to 180 seconds (Maximum delay changed from 420 seconds to 480 seconds).
- [MODIFIED] Changed spawn distance for AI created from dynamically-spawned triggers from 50m + a maximum of 450m to a maximum of 300 (no minimum).
- [MODIFIED] Modified activation delay time for dynamically-spawned triggers from 10/17/24 seconds to 10/15/20 seconds.
- [MODIFIED] Renamed fnc_unitBackpack to fnc_unitInventory, and fnc_unitSelectRifle to fnc_unitSelectWeapon.

Installation Instructions:
- Extract your mission .pbo file. (I recommend cpbo, which can be downloaded as part of the Arma Tools package: http://www.armaholic.com/page.php?id=411)
- Copy the entire DZAI folder into the extracted mission folder.
- Edit your init.sqf with a text editor.
- Add the line to your init.sqf file after DayZ's compiled functions: 

<code>call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_initialize.sqf";				//Load DayZ AI Bandit Module</code>

Example edit (Note: this block of code is easier to read in a text editor such as Notepad++):

<code>//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
progressLoadingScreen 0.6;
call compile preprocessFileLineNumbers "DZAI\init\dayz_ai_initialize.sqf";				//Load DayZ AI Bandit Module
progressLoadingScreen 1.0;</code>

- Optional: Edit dayz_ai_variables.sqf in "DZAI\init" to customize the addon settings (ie: Enable/Disable zombies, AI loadouts, AI spawns, etc.)
- Repack your mission.pbo file.
- You are now ready to start your server.


Detailed documentation for the DZAI package is coming. Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ and I will help if I am able.