//DZAI Variables Version 0.07
private["_worldname"];

//Enable/Disable Zombies, Zombie Hostility
DZAI_zombieEnemy = true;									//Enable or disable AI hostility to zombies. If enabled, AI will attack zombies. (default: true)
DZAI_zombiesEnabled = true;									//Enable or disable zombie spawns (default: true)
if (!isServer) exitWith {};									//End of client-sided work.

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
DZAI_modName = "default";									//If using a non-standard version of a DayZ mod, edit this variable, other leave it as "default". Possible values: "skarolingor" (DayZ Lingor Skaronator Version), "2017" (DayZ 2017), "epoch" (DayZ Epoch).
DZAI_safeMode = false;										//Enable "safe mode" to start DZAI with minimal item tables. Safe Mode is forced on for Taviana and Lingor (non-Skaronator version) (Default: false)

//AI Variables						
DZAI_weaponNoise = 0.00;									//AI weapon noise multiplier for zombie aggro purposes. No effect if DZAI_zombieEnemy is set to false. Note: AI cannot be attacked or damaged by zombies.(Default: 0.00. Player equivalent: 1.00)
DZAI_maxAIUnits = 65535;									//Limit of total AI spawned by DZAI (0: Disables AI spawning completely)
DZAI_spawnExtra = 0;										//Number of extra AI to spawn for each trigger. Affects building and marker AI spawns. (Default: 0)
DZAI_spawnRandom = 0;										//Number of randomly-placed triggers to spawn across the map on server start. These triggers will spawn a specified number of AI when activated (see lines below). (Default: 0)
DZAI_spawnRandomDelay = 60;									//Time to wait between creating each randomly-placed trigger (seconds). (Default: 60)
DZAI_randEquipType = 2;										//Equipment Type of randomly-spawned AI. 0: Beginner areas, 1: Average areas, 2: Areas with military loot, 3: Areas with high-grade (MilitarySpecial) loot. (Default: 2)
DZAI_randMinAI = 2;											//Minimum number of AI to spawn per randomly-spawned trigger.
DZAI_randAddAI = 3;											//Maximum number of additional AI to spawn per randomly-spawned trigger.	(Maximum Total AI/Trigger =  DZAI_randMinAI + (0 to DZAI_randAddAI))
DZAI_respawnTime1 = 300;									//Minimum wait time for AI respawn timer (seconds). (Default: 300)
DZAI_respawnTime2 = 180;									//Maximum additional wait time for AI respawn timer (seconds). Total Respawn Time = DZAI_respawnTime1 + random(DZAI_respawnTime2) (Default: 180)
DZAI_dmgFactors1 =[1.0,1.0,1.0,1.0,1.0];					//Multipliers for bullet-type damage done to different body parts: Structural, Head, Body, Hands, Legs. Example: to make AI take 50% reduced damage to a body part, set the appropriate value to 0.50.
DZAI_dmgFactors2 =[1.0,1.0,1.0,1.0,1.0];					//Multipliers for non-bullet-type (ie: explosions, collisions) damage done to different body parts: Structural, Head, Body, Hands, Legs.
DZAI_refreshRate = 15;										//Amount of time in seconds between AI ammo and zombie check. (Default: 15)
DZAI_zDetectRange = 200;									//Maximum distance for AI to detect zombies. (Default: 200)
DZAI_allowFleeing = false;									//Enable/disable AI fleeing (Default: false)
DZAI_minFleeChance = 0.05;									//Minimum chance that AI will flee. (Default: 0.05)
DZAI_addFleeChance = 0.05;									//Maximum additional chance that AI will flee. (Default: 0.05)
DZAI_despawnWait = 120;										//Time to allow AI to remain in seconds before being removed when all players have left a trigger area. (Default: 120)
DZAI_findKiller = false;										//Enable AI to become aware of who killed an AI group member. If alive, AI group leader will investigate last known position of killer. (Default: false)
DZAI_tempNVGs = false;										//If normal probability check for spawning NVGs fails, then give AI temporary NVGs only if they are spawned with weapongrade 2 or 3. Temporary NVGs will be removed at death (Default: false).

//Side relations (Default: West (Player) hostile against East (AI) and Resistance (AI). 
//Note: AI are not intended to be friendly to players, and no special features have been added to account for friendly fire.
resistance setFriend [east, 1];								//Resistance (AI) is hostile to West (Player), but friendly to East (AI).
resistance setFriend [west, 0];	
EAST setFriend [WEST, 0];									//East (AI) is hostile to West (Player), but friendly to Resistance (AI).
EAST setFriend [resistance, 1];	
WEST setFriend [EAST, 0];									//West (Player side) is hostile to all.
WEST setFriend [resistance, 0];

//AI Loadout Configuration									(Edible and Medical items, Miscellaneous items, Skin packs)
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

_worldname=toLower format ["%1",worldName];
if (((_worldname == "tavi")||(worldname == "lingor"))&&(DZAI_modName == "default")&&(!DZAI_safeMode)) then {DZAI_safeMode = true;};	//Force Safe Mode if using non-Skaronator Lingor or Taviana map.
if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] Server is running map %1. Loading map and loot configs.",_worldname];};

//Load default DZAI loot tables. These tables include weapons and other items that can be added to an AI unit's inventory.
//Do not delete this file, as it is required for DZAI to work.
#include "dzai_configs\default_config.sqf"

/*
Load mod-specific configuration file. Config files contain trigger/marker information, addition and removal of items/skins, and/or other variable customizations.
To reduce the size of your mission file, you may clear the contents of unused config files to reduce the size of your mission file by at least 230KB.
*/

switch (_worldname) do {
	case "chernarus":
	{
		#include "map_configs\chernarus_config.sqf"
		#include "loot_configs\chernarus_loot.sqf"
	};
	case "utes":
	{
		#include "map_configs\utes_config.sqf"
		#include "loot_configs\utes_loot.sqf"
	};
	case "zargabad":
	{
		#include "map_configs\zargabad_config.sqf"
		#include "loot_configs\zargabad_loot.sqf"
	};
	case "fallujah":
	{
		#include "map_configs\fallujah_config.sqf"
		#include "loot_configs\fallujah_loot.sqf"
	};
	case "takistan":
	{
		#include "map_configs\takistan_config.sqf"
		#include "loot_configs\takistan_loot.sqf"
	};
    case "tavi":
    {
		#include "map_configs\tavi_config.sqf"
		#include "loot_configs\tavi_loot.sqf"
    };
	 case "lingor":
    {
		#include "map_configs\lingor_config.sqf"
		#include "loot_configs\lingor_loot.sqf"
    };
    case "namalsk":
    {
		#include "map_configs\namalsk_config.sqf"
		#include "loot_configs\namalsk_loot.sqf"
    };
    case "mbg_celle2":
    {
		#include "map_configs\mbg_celle2_config.sqf"
		#include "loot_configs\mbg_celle2_loot.sqf"
    };
	case "oring":
    {
		#include "map_configs\oring_config.sqf"
		#include "loot_configs\oring_loot.sqf"
    };
	case "panthera2":
    {
		#include "map_configs\panthera2_config.sqf"
		#include "loot_configs\panthera2_loot.sqf"
    };
	case "isladuala":
    {
		#include "map_configs\isladuala_config.sqf"
		#include "loot_configs\isladuala_loot.sqf"
    };
};

if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] DZAI Variables loaded. Debug Level: %1. DebugMarkers: %2. ModName: %3. SafeMode: %4.",DZAI_debugLevel,DZAI_debugMarkers,DZAI_modName,DZAI_safeMode];};
