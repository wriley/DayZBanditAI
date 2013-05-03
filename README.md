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


May 1, 2013 - 0.05 Update:
- Note: As 0.05 is a huge update for DZAI, there may be bugs that have not been found or fixed. Feel free to open an Issue on GitHub or message me on the OpenDayZ forums to report issues (username: Buttface)
- Note: Due to the large number of changes that have happened from 0.04 to 0.05, it is not recommended to reuse any 0.04 files in 0.05. Delete your old DZAI folder and replace with the 0.05 version.
- Note: A few scripts have been adapted from Sarge AI and other sources. Credit has been given in the comments section of relevant script files.
- Reminder: Due to the large size of the config folder, you may delete all config files that are not related to the map you will be playing on. However, you will need to comment out the switch-case block in dayz_ai_variables.sqf and add in #include "configs\(mapname)_config.sqf". An example is provided in the variables file.
- [NEW] Bandit AI now works together in organized groups instead of being hostile to each other. After respawning, individual AI units will regroup with their team and continue patrolling.
- [NEW] AI units will now respawn into the same group. Previously, a new group was created for every AI unit spawned, which quickly lead to the 144 group/side limit being reached.
- [NEW] AI spawn points can now be added using markers using the function fnc_spawnBandits_markers. Useful for placing precise spawn locations or spawning AI in locations where there are too few or no buildings to use as spawn points.
- [NEW] Syntax for fnc_spawnBandits_markers: [minimum AI,max. additional AI,distance between waypoints,thisTrigger,[array of markers],optional: number of AI groups] call fnc_spawnBandits_markers;
- [NEW] Several variables are now attached to each AI unit for respawning purposes: respawn type, respawn location, group, trigger of origin, patrol distance.
- [NEW] A single fn_banditAIRespawn.sqf script now handles AI respawning, instead of one per respawn type.
- [NEW] aiBrain.sqf background script for each AI unit. Automatically adds a new magazine to AI when depleted, and sets hostility to nearby zombies. (Credits: Sarge of SARGE AI).
- [NEW]	despawnBandits.sqf to handle despawning AI when all players have left a trigger area. By default, AI are deleted from a trigger area after 120 seconds of no player presence. (Adapted from SARGE AI).
- [NEW] Markers to track AI positions can be enabled by setting debug level to 2 (extended debug mode). Positions are updated every 15 seconds by default.
- [NEW] Zombie-to-AI aggro is now optional (disable by reducing DZAI_weaponNoise to 0.00 in dayz_ai_variables.sqf). By default, zombies do not aggro to AI.
- [NEW] AI-to-Zombie aggro is now optional (enable/disable by modifying the DZAI_zombieEnemy variable in dayz_ai_variables.sqf). By default, AI are hostile to nearby zombies. Hostility distance is configurable by modifying the DZAI_zDetectRange variable)
- [NEW] Adjustable health system implemented for AI units. AI durability to bullet/non-bullet damage is now configurable in dayz_ai_variables.sqf. (Credits: Celery, Nullkigan)
- [NEW] Side relations between AI and players are now configurable. East: Randomly-spawned AI, Resistance: Building/Marker-spawned AI. By default, all AI are friendly to each other, and hostile to players.
- [NEW] createAI.sqf script to handle individual AI unit spawns and respawns. Initalizes several AI variables, sets up unit loadout, adds eventhandlers, etc.
- [NEW] Modified several AI spawns from default settings for the following maps: Panthera, Takistan, Zargabad. (Note: Military loot areas tend to have much higher AI spawns)
- [NEW] Added AI spawn locations at NWAF, Balota Tents.
- [FIXED] Replaced patrol script (BIN_taskPatrol v1.4) with BIN_taskPatrol v1.3 (last edited by ArmaIIholic) to fix an issue where AI units would randomly travel far beyond their intended patrol area.
- [MODIFIED] Trigger radius increased from 325m to 500m to prevent excessive cycling of AI spawn/despawns from passing players.
- [MODIFIED] Triggers have been changed to Repeating type with the introduction of the AI despawn system. (Note: The number of total AI with each spawn cycle may vary).
- [MODIFIED] Large increases in AI numbers in large cities and certain high value military areas in Chernarus and other maps. (NWAF has a maximum of 20 patrolling AI units). AI spawns will be adjusted further if needed.
- [MODIFIED] Removed unnecessary code in ai_alertzombies.sqf left over from original player_alertzombies.sqf
- [MODIFIED] Modified default number of randomly-spawned AI units to zero. This may be changed in dayz_ai_variables.sqf.
- [MODIFIED] Some debug output now includes name of the script responsible for generating the output.
- [MODIFIED] Overall increase in AI spawns with the introduction of grouped AI units. Noticeable increase in difficulty of AI encounters.
- [MODIFIED] Randomly-spawned AI are now spawned 4000m from the center marker, down from 4500m. (original settings)
- [MODIFIED] AI flee probability is now configurable in dayz_ai_variables.sqf. AI fleeing may also be enabled/disabled.
- [MODIFIED] Overall increase in AI skill parameters (AI are now much more dangerous than before).
- [MODIFIED] Adjusted minimum number of AI sidearm ammunition to zero. Increased maximum number to 2.
- [MODIFIED] AI rifle ammunition now fixed at one magazine.
- [MODIFIED] wild_spawnZombies.sqf and zombie_generate.sqf replaced with empty dummy scripts to disable zombie spawns if DZAI_zombiesEnabled is set to false. If set to true (enable zombies), the default DayZ files are used instead.
- [MODIFIED] Scripts for AI weapon noise and Zombie-to-AI aggro are no longer loaded if Z-to-AI aggro is disabled.
- [MODIFIED] New syntax for fnc_spawnBandits_random. [Number of AI, marker, distance between waypoints, max distance from marker to spawn] spawn fnc_spawnBandits_random;
- [MODIFIED] New syntax for fnc_spawnBandits_bldgs. [minimum AI,max. additional AI,distance between waypoints,thisTrigger,optional: number of AI groups] call fnc_spawnBandits_bldgs;
- [MODIFIED] Increased probability of spawning small misc. loot in AI inventory from 0.50 to 0.66 per item (max 3, configurable).
- [MODIFIED] Lowered probability of spawning large misc. loot in AI inventory from 0.25 to 0.20 per item (max 1). Note: It's not recommended to raise the max number since items that can't fit in the backpack will drop on the ground instead.
- [MODIFIED] Lowered probability of spawning Compass, Map, Toolbox, Matchbox.
- [MODIFIED] Relocated default DZAI loot tables to default_config.sqf in the config folder. This file is essential for DZAI to function, so do not remove it.
- [MODIFIED] Increased minimum respawn time to 180 seconds and reduced maximum additional respawn time to 120 seconds. (180 seconds minimum, 300 seconds maximum). These values may need further rebalancing due the introduction of grouped AI.
- [MODIFIED] Decreased probability of generating MilitarySpecial weapons from 20% to 15% (Probabilities for Namalsk and Utes remain unchanged)
- [MODIFIED] Increased probability of generating Farm/Residential weapons from 25% to 30% (Probabilities for Namalsk and Utes remain unchanged)
- [MODIFIED] AI units may now spawn with NVGoggles instead of having them added as loot after death. 
- [MODIFIED] NVGoggles and Binoculars are now classified as Gadgets, have their own loot table with configurable chances.

May 1, 2013 - 0.05 Patch 1 Update:

- [NEW] Debug markers for AI patrol waypoints, AI positions, and randomly placed triggers (more info below) can be enabled/disabled by modifying DZAI_debugMarkers in dayz_ai_variables.sqf
- [NEW] Reworked random AI spawn system. Instead of spawning individual AI units at server start, triggers are randomly placed around the map through spawnTriggers_random. These triggers have a radius of 400m and spawn a group of 3-5 AI units per spawn. You will have to manually set the number of triggers to create.
- [FIXED] Fixed a bug that affected the AI respawn scripts when the last unit of a group is killed. Now, a temporary dummy unit is created when the last unit of a group is killed to prevent the group from becoming empty and deleted.
- [MODIFIED] Reworked spawnBandits_random/respawnBandits_random scripts to generate random patrol waypoints around a central trigger position instead of using markers. spawnBandits_random may be called directly, or called indirectly through spawnTriggers_random
- [MODIFIED] More AI skill parameter tweaks. In general, minimum skill parameters have been decreased slightly while maximum skill parameters have been increased. (Wider range of AI skill levels)
- [REMOVED] Satchel Charges have been removed from AI loot tables.

May 2, 2013 - 0.05 Patch 2 Update:

- [FIXED] Panthera, Lingor: Fixed a couple of typos in trigger activation fields that would have prevented AI from properly spawning.
- [FIXED] Namalsk: Trigger for Object A2 AI spawns was calling the wrong AI spawn script.
- [MODIFIED] Lingor: Repositioned several spawn markers for Prison and Palace locations
- [MODIFIED] Taviana: Increased AI spawns in several areas, with a focus on areas that spawn Military-grade loot.
- [MODIFIED] Namalsk: Reduced the number of spawn positions for Object A2 from 9 to 5
- [MODIFIED] In a previous update, marker-spawned groups now all spawn at the same location. Previously, each group member was spawned at separate locations.
- [MODIFIED] Increased minimum and maximum distance from building positions for building-spawned AI in an attempt to solve an issue where AI were being spawned at the map center due to a lack of clear space to spawn.
- [MODIFIED] Added author credits to several scripts were credit was previously missing.
- [MODIFIED] Celle: Shifted Celle city AI trigger to include the east firestation. Added a new AI trigger to the buildings west of Celle city.

May 3, 2013 - 0.05 Patch 3 Update:

- [MODIFIED] Weapongrade value is now also used to determine type of backpack added to AI (For example, Coyote backpack should be rarer than a Patrol Backpack)
- [MODIFIED] Increased chance of generating Military-grade weapon from 50% to 55, decreased chance of generating MilitarySpecial-grade weapon from 15% to 12%, decreased chance of generating HeliCrash-grade weapon from 5% to 3%.
- [MODIFIED] Chernarus: Updated several AI spawn triggers for Berezino. Spawn areas now encompass the city center and military tents.

May 3, 2013 - 0.05 Patch 4 Update:

- [NEW] Added a conditional check to ensure that groups always have patrol waypoints.
- [FIXED] Temporary dummy unit is now created when there are no units alive in a group. Previous script was only called when the number of total units decreased below 2.
- [FIXED] Added loot tables for AI backpacks that were supposed to be added in Patch 3.
- [MODIFIED] The last respawned unit is now set as group leader. Should fix the issue where group members would stand inactive until the dummy unit is deleted.
- [MODIFIED] Added conditional checks to delete a dummy unit only if one exists.

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