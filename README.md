DZAI - DayZ AI Addon (Current version: 0.05 Patch 4)
============


This new package is MP-compatible and works out of the box with any supported DayZ mission file. Currently supported DayZ missions:
- Chernarus
- Fallujah
- Isla Duala
- Lingor
- Celle
- Namalsk
- Oring
- Panthera
- Takistan
- Taviana 2.0 (Requires testing)
- Utes
- Zargabad
- <b>Note</b>: DZAI version 0.03+ should work with any DayZ mission file. However for DayZ mods not listed above, no AI units will spawn from buildings and default DayZ loot tables will be used to generate AI loadouts. You will have to create and add your own configuration file to create new spawn points. AI may also be randomly spawned by modifying the DZAI_spawnRandom variable. 


Date - Version 0.06 Update (Patch 1-2):
- [NEW] Experimental support for DayZ Epoch-exclusive features (Chernarus). Set DZAI_modName to "epoch" to enable Epoch skin loot, AI skins, and metal bar loot. Item probabilities still require tweaking.
- [MODIFIED] Weapon grade probabilities can now be defined on a per-location basis (new parameter: "equipment type"). AI in "newbie" areas tend to have lower end weaponry and skills while those in high-value areas tend to have high-end weaponry and higher skills.
- [MODIFIED] AI skill parameters are also determined by the unit's "weapon grade". AI that carry high-end weaponry tend to have higher skill parameters, and vice versa.
- [MODIFIED] Rebalanced AI skill parameters. General increases in AI aiming speed and spotting time, general decreases in aiming shake and spotting distance.
- [MODIFIED] Namalsk: Added marker-defined AI spawn points to Lubjansk military base instead of using building locations as spawn points. Should prevent AI from being spawned in water.
- [MODIFIED] Several variables offloaded from invdividual AI units to the trigger object they were spawned from.
- [MODIFIED] Cleaned up initialization script for easier reading.
- [MODIFIED] Renamed several directories for better clarity.
- [REMOVED] Removed Coyote backpack from second tier backpack table.

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

Update Instructions:
- Extract your mission .pbo file.
- Back up your dayz_ai_variables.sqf file in "DZAI\init" to a safe location if you wish to keep your current settings. 
- Open your extracted mission folder.
- Copy the newer DZAI folder into your extracted mission folder and overwrite everything.
- If you have not modified your dayz_variables.sqf file or don't want to retain your old settings, you may repack your mission .pbo file immediately and stop following these instructions.
- Edit dayz_ai_variables.sqf in "DZAI\init" to customize the addon settings. Refer to your old dayz_variables.sqf file as reference if you want to reuse certain settings. DO NOT overwrite the new copy with your old copy. It is no longer recommended to reuse your old dayz_ai_variables.sqf. Do so at your own risk.
- Repack your mission.pbo file.
- You are now ready to start your server.

Detailed documentation for the DZAI package is coming. Questions? Comments? Send me a PM on the Open DayZ forums at: http://opendayz.net/members/buttface.1178/ and I will help if I am able.