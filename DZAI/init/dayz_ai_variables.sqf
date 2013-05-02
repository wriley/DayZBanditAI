//DZAI Variables Version 0.05
private["_worldname"];


//Enable/Disable Zombies, Zombie Hostility
DZAI_zombieEnemy = true;									//Enable or disable AI hostility to zombies. If enabled, AI will attack zombies. (default: true)
DZAI_zombiesEnabled = true;								//Enable or disable zombie spawns (default: true)
if (!isServer) exitWith {};									//End of client-sided work.

//Internal Use Variables: DO NOT EDIT THESE
DZAI_numAIUnits = 0;										//Counter variable used to keep track of currently live AI units.

//DZAI Settings
DZAI_debugLevel = 1;										//Enable or disable event logging to arma2oaserver.rpt. Debug level setting. 0: Off, 1: Basic Debug, 2: Extended Debug. (Default: 1)
DZAI_debugMarkers = 0;										//Enable or disable debug markers. Track AI position, locate waypoints, locate randomly-placed triggers. (Default: 0)
DZAI_modName = "default";									//If using a non-standard version of a DayZ mod, edit this variable, other leave it as "default". Possible values: "skarolingor" (DayZ Lingor Skaronator Version), "2017" (DayZ 2017). 

//AI Variables						
DZAI_weaponNoise = 0.00;									//AI weapon noise for zombie aggro purposes. No effect if DZAI_zombieEnemy is set to false. Note: AI cannot be attacked or damaged by zombies.(Default: 0.00. Player equivalent: 1.00)
DZAI_maxAIUnits = 65535;									//Limit of total AI spawned by DZAI (0: Disables AI spawning completely)
DZAI_spawnExtra = 0;										//Number of extra AI to spawn for each trigger. Affects building and marker AI spawns. (Default: 0)
DZAI_randMinAI = 3;											//Minimum number of randomly-spawned AI to create.
DZAI_randAddAI = 2;											//Maximum number of bonus randomly-spawned AI to create.
DZAI_spawnRandom = 0;										//Number of randomly-placed AI to spawn on server start. These AI are randomly placed on the map in the same way as Heli Crashes. (Default: 0)
DZAI_spawnRandomDelay = 60;									//Time to wait between each AI spawn at server start (seconds). (Default: 60)
DZAI_respawnTime1 = 180;									//Minimum wait time for AI respawn timer (seconds). (Default: 180)
DZAI_respawnTime2 = 120;									//Maximum additional wait time for AI respawn timer (seconds). Total Respawn Time = DZAI_respawnTime1 + random(DZAI_respawnTime2) (Default: 120)
DZAI_dmgFactors1 =[1.0,1.0,1.0,1.0,1.0];					//Multipliers for bullet-type damage done to different body parts: Structural, Head, Body, Hands, Legs. Example: to make AI take 50% reduced damage to a body part, set the appropriate value to 0.50.
DZAI_dmgFactors2 =[1.0,1.0,1.0,1.0,1.0];					//Multipliers for non-bullet-type (ie: explosions, collisions) damage done to different body parts: Structural, Head, Body, Hands, Legs.
DZAI_refreshRate = 15;										//Amount of time in seconds between AI ammo and zombie check. (Default: 15)
DZAI_zDetectRange = 200;									//Maximum distance for AI to detect zombies. (Default: 200)
DZAI_allowFleeing = false;									//Enable/disable AI fleeing (Default: false)
DZAI_minFleeChance = 0.05;									//Minimum chance that AI will flee. (Default: 0.05)
DZAI_addFleeChance = 0.05;									//Maximum additional chance that AI will flee. (Default: 0.05)
DZAI_despawnWait = 120;										//Time to allow AI to remain before being removed when all players have left a trigger area.

//Side relations (Default: West (Player) hostile against East (AI) and Resistance (AI)
resistance setFriend [east, 1];								//Resistance (AI) is hostile to West (Player), but friendly to East (AI).
resistance setFriend [west, 0];
EAST setFriend [WEST, 0];									//East (AI) is hostile to West (Player), but friendly to Resistance (AI).
EAST setFriend [resistance, 1];
WEST setFriend [EAST, 0];									//West (Player side) is hostile to all.
WEST setFriend [resistance, 0];

//AI Loadout Configuration									(Edible and Medical items, Miscellaneous items, Skin packs)
DZAI_invmedicals = 1; 										//Number of selections of medical items (Inventory)
DZAI_ninmedicals = 1;										//Maximum amount of each medical item, minimum of zero (Inventory)
DZAI_invedibles = 1;										//Number of selections of edible items (Inventory)
DZAI_ninedibles = 1;										//Maximum amount of each edible item, minimum of zero (Inventory)
DZAI_bpmedicals = 2; 										//Number of selections of medical items (Backpack)
DZAI_nbpmedicals = 1;										//Maximum amount of each medical item, minimum of zero (Backpack)
DZAI_bpedibles = 1;											//Number of selections of edible items (Backpack)
DZAI_nbpedibles = 1;										//Maximum amount of each edible item, minimum of zero (Backpack)
DZAI_numMiscItemS = 3;										//Maximum number of items to select from DZAI_DefaultMiscItemS table.
DZAI_numMiscItemL = 1;										//Maximum number of items to select from DZAI_DefaultMiscItemL table.
DZAI_chanceMiscItemS = 0.66;								//Chance to add random item from DZAI_DefaultMiscItemS table.
DZAI_chanceMiscItemL = 0.20;								//Chance to add random item from DZAI_DefaultMiscItemL table.
DZAI_skinItemChance = 0.08;									//Chance to add random item from DZAI_DefaultSkinLoot table.
DZAI_maxPistolMags = 2;										//Maximum number of pistol magazines to generate as loot upon death.
DZAI_maxRifleMags = 1;										//Maximum number of rifle  magazines to generate. (Unused variable)
DZAI_weaponGrades = [0,1,2,3];								//All possible weapon grades. A "weapon grade" is a tiered classification of gear. 0: Residential, 1: Military, 2: MilitarySpecial, 3: Heli Crash. (MUST change DZAI_weaponGrades and DZAI_gradeChances  together if removing/adding weapon grades to avoid issues!)
DZAI_gradeChances = [0.30,0.50,0.15,0.05]; 					//Probabilities for generating each weapon grade. (Values should add up to 1.00)
DZAI_toolChances = [1.00,0.90,0.85,0.80,0.60,0.50,0.20,0.20,0.10,0.05,0.03]; 	//Probabilities for generating each tool item upon unit death. (Flashlight, Watch, Knife, Hatchet, Compass, Map, Toolbox, Matchbox, Military Flashlight, Rangefinder, GPS).
DZAI_gadgetChances = [0.50,0.03];								//Probabilities of generating each gadget item upon unit spawn (Binoculars, NVGoggles).
DZAI_betterBackPack = 0.90;									//Chance of assigning a better backpack than the default one. (Default: 0.90)

//Load default DZAI loot tables. These tables include weapons and other items that can be added to an AI unit's inventory.
//Do not delete this file, as it is required for DZAI to work.
#include "configs\default_config.sqf"

/*Load mod-specific configuration file. Config files contain trigger/marker information, addition and removal of items/skins, and/or other variable customizations.
To reduce the size of your mission file, you may delete the configuration files for maps that you are not using. You will also need to comment out the switch-case block below.
Underneath the commented switch-case block, include a line like this: #include "configs\(mapname)_config.sqf", where 'mapname' is the name of the map you will be using.

*/

_worldname=toLower format ["%1",worldName];

switch (_worldname) do {
	case "chernarus":
	{
		#include "configs\chernarus_config.sqf"
	};
	case "utes":
	{
		#include "configs\utes_config.sqf"
	};
	case "zargabad":
	{
		#include "configs\zargabad_config.sqf"
	};
	case "fallujah":
	{
		#include "configs\fallujah_config.sqf"
	};
	case "takistan":
	{
		#include "configs\takistan_config.sqf"
	};
    case "tavi":
    {
		#include "configs\tavi_config.sqf"
    };
	 case "lingor":
    {
		#include "configs\lingor_config.sqf"
    };
    case "namalsk":
    {
		#include "configs\namalsk_config.sqf"
    };
    case "mbg_celle2":
    {
		#include "configs\mbg_celle2_config.sqf"
    };
	case "oring":
    {
		#include "configs\oring_config.sqf"
    };
	case "panthera2":
    {
		#include "configs\panthera2_config.sqf"
    };
};

if (DZAI_debugLevel > 0) then {diag_log format["[DZAI] DZAI Variables loaded."];};
