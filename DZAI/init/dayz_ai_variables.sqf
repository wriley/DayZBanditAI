/*
	DZAI Variables File
	
	Description: Contains all configurable settings of DZAI. Contains settings for debugging, customization of AI units, spawning, and loot.
	
	Last updated: 6/2/2013
*/
private["_worldname"];

if (!isServer) exitWith {};									//End of client-sided work.

//Enable/Disable Zombies, Zombie Hostility
DZAI_zombieEnemy = true;									//Enable or disable AI hostility to zombies. If enabled, AI will attack zombies. (default: true)

//Internal Use Variables: DO NOT EDIT THESE
DZAI_numAIUnits = 0;										//Keep track of currently active AI units, including dead units waiting for respawn.
DZAI_actDynTrigs = 0;										//Keep track of current number of active dynamically-spawned triggers
DZAI_curDynTrigs = 0;										//Keep track of current total of inactive dynamically-spawned triggers.
DZAI_actTrigs = 0;											//Keep track of active static triggers.										

//DZAI Settings
DZAI_debugLevel = 0;										//Enable or disable event logging to arma2oaserver.rpt. Debug level setting. 0: Off, 1: Basic Debug, 2: Extended Debug. (Default: 0)
DZAI_debugMarkers = 0;										//Enable or disable debug markers. Track AI position, locate patrol waypoints, locate dynamically-spawned triggers. (Default: 0)
DZAI_monitor = true;										//Enable or disable server monitor. Keeps track of number of max/current AI units and dynamically spawned triggers. (Default: true)
DZAI_monitorRate = 180;										//Frequency of server monitor update to RPT log in seconds. (Default: 180)
DZAI_modName = "default";									//If using a non-standard version of a DayZ mod, edit this variable, other leave it as "default". Possible values: "skarolingor" (DayZ Lingor Skaronator Version), "2017" (DayZ 2017 and Namalsk 2017), "epoch" (DayZ Epoch).
DZAI_verifyTables = false;									//Use this if experiencing crashes or errors with DZAI. Set to "true" to have DZAI verify all tables for banned/invalid classnames. If invalid entries are found, they are removed and logged into the RPT log. Forced ON for Taviana 2.0 and Lingor 1.3 (Default: false)

//AI Unit Variables						
DZAI_weaponNoise = 0.00;									//AI weapon noise multiplier for zombie aggro purposes. No effect if DZAI_zombieEnemy is set to false. Note: AI cannot be attacked or damaged by zombies.(Default: 0.00. Player equivalent: 1.00)
DZAI_dmgFactors1 =[1.0,1.0,1.0,1.0,1.0];					//Multipliers for bullet-type damage done to different body parts of AI units: Structural, Head, Body, Hands, Legs. Example: to make AI take 50% reduced damage to a body part, set the appropriate value to 0.50.
DZAI_dmgFactors2 =[1.0,1.0,1.0,1.0,1.0];					//Multipliers for non-bullet-type (ie: explosions, collisions) damage done to different body parts: Structural, Head, Body, Hands, Legs.
DZAI_refreshRate = 15;										//Amount of time in seconds between AI ammo and zombie check. (Default: 15)
DZAI_zDetectRange = 200;									//Maximum distance for AI to detect zombies. (Default: 200)
DZAI_allowFleeing = false;									//Enable/disable AI fleeing (Default: false)
DZAI_minFleeChance = 0.05;									//Minimum chance that AI will flee. (Default: 0.05)
DZAI_addFleeChance = 0.05;									//Maximum additional chance that AI will flee. (Default: 0.05)

//AI Spawning Variables
DZAI_maxAIUnits = 65535;									//Limit of total AI spawned by DZAI (0: Disables AI spawning completely)
DZAI_respawnTime1 = 300;									//Minimum wait time for AI respawn timer (seconds). (Default: 300)
DZAI_respawnTime2 = 180;									//Maximum additional wait time for AI respawn timer (seconds). Total Respawn Time = DZAI_respawnTime1 + random(DZAI_respawnTime2) (Default: 180)
DZAI_despawnWait = 120;										//Time to allow AI to remain in seconds before being removed when all players have left a trigger area. (Default: 120)
DZAI_spawnExtra = 0;										//Number of extra AI to spawn for each trigger. Affects building and marker AI spawns. (Default: 0)

//Dynamic Trigger Settings
//DZAI automatically determines the settings for dynamic triggers. To manually change a value, replace "auto" with a value for the setting.
DZAI_dynTriggersMax = "auto";								//Number of randomly-placed triggers to spawn across the map on server start. These triggers will spawn a specified number of AI when activated (see lines below). (Default: "auto")
DZAI_dynSpawnDelay = "auto";								//Time to wait between creating each randomly-placed trigger (seconds). (Default: "auto")
DZAI_dynEquipType = "auto";									//Equipment Type of randomly-spawned AI. (Value Range: 0-3). 0: Lowest grade weaponry. 3: Highest grade weaponry. (Default: "auto")
DZAI_dynAIMin = "auto";										//Minimum number of AI to spawn per randomly-spawned trigger.  (Default: "auto")
DZAI_dynAIAdd = "auto";										//Maximum number of additional AI to spawn per randomly-spawned trigger.	(Maximum Total AI/Trigger =  DZAI_dynAIMin + (0 to DZAI_dynAIAdd))  (Default: "auto")
DZAI_dynSpawnDist = "auto";									//Maximum distance from 'center' marker to spawn dynamic triggers. (Ddefault: "auto")

//Extra AI Settings
DZAI_findKiller = false;										//Enable AI to become aware of who killed an AI group member. If alive, AI group leader will investigate last known position of killer. Players with radios are able to evade detection (Default: false)
DZAI_tempNVGs = false;										//If normal probability check for spawning NVGs fails, then give AI temporary NVGs only if they are spawned with weapongrade 2 or 3. Temporary NVGs are unlootable and will be removed at death (Default: false).

//AI loot Configuration										(Edible and Medical items, Miscellaneous items, Skin packs)
DZAI_invmedicals = 1; 										//Number of selections of medical items (Inventory)
DZAI_invedibles = 1;										//Number of selections of edible items (Inventory)
DZAI_bpmedicals = 2; 										//Number of selections of medical items (Backpack)
DZAI_bpedibles = 1;											//Number of selections of edible items (Backpack)
DZAI_numMiscItemS = 3;										//Maximum number of items to select from DZAI_DefaultMiscItemS table.
DZAI_numMiscItemL = 1;										//Maximum number of items to select from DZAI_DefaultMiscItemL table.
DZAI_maxPistolMags = 2;										//Maximum number of pistol magazines to generate as loot upon death.
DZAI_maxRifleMags = 1;										//Maximum number of rifle  magazines to generate. (Unused variable)
DZAI_weaponGrades = [0,1,2,3];								//All possible weapon grades. A "weapon grade" is a tiered classification of gear. 0: Civilian, 1: Military, 2: MilitarySpecial, 3: Heli Crash. Weapon grade also influences the general skill level of the AI unit.
DZAI_gradeChances0 = [0.85,0.15,0.00,0.00];					//equipType = 0 - most AI will have basic pistols or rifles, and occasionally common military weapons.
DZAI_gradeChances1 = [0.55,0.40,0.04,0.01];					//equipType = 1 - most AI will have common rifles, many will have common military weapons. Very rarely, AI will spawn with high-grade military or helicrash weapons.
DZAI_gradeChances2 = [0.30,0.55,0.11,0.04];					//equipType = 2 - most AI carry military weapons, and occasionally high-grade military weapons.
DZAI_gradeChances3 = [0.00,0.60,0.33,0.07];					//equipType = 3 - All AI will carry at least a military-grade weapon. Many will be carrying high-grade military weapons.
DZAI_chanceMiscItemS = 0.66;								//Chance to add random item from DZAI_DefaultMiscItemS table.
DZAI_chanceMiscItemL = 0.20;								//Chance to add random item from DZAI_DefaultMiscItemL table.
DZAI_skinItemChance = 0.08;									//Chance to add random item from DZAI_DefaultSkinLoot table.

//NOTHING TO EDIT BEYOND THIS POINT.

if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] DZAI Variables loaded. Debug Level: %1. DebugMarkers: %2. ModName: %3. VerifyTables: %4.",DZAI_debugLevel,DZAI_debugMarkers,DZAI_modName,DZAI_verifyTables];};
