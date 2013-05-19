/*Default DZAI Loot Tables version 0.06
EDIT WITH CARE - these tables affect ALL DayZ mods globally. 
To make changes for a specific DayZ mod, edit the appropriate config file in configs folder. 
Rule of thumb: If it doesn't belong in the original DayZ mod, it doesn't belong here. Edit the mod-specific config file instead.
Dev notes: add weighted chances to weapons?
*/

//Pistols:
DZAI_BanditTypesDefault = ["Survivor2_DZ", "SurvivorW2_DZ", "Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"]; //List of skins for AI units to use
DZAI_PistolsDefault0 = ["Colt1911", "revolver_EP1", "Makarov"]; //Common pistols that can be found in areas such as Apartments and Farms.
DZAI_PistolsDefault1 = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD", "revolver_EP1"]; //DZAI_PistolsDefault1-3: Uncommon/rare pistols that can be found in Military areas (ie: Firestations, Deer Stands, Barracks)
DZAI_PistolsDefault2 = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD"]; //+["MakarovSD"]; For DayZ 1.7.7. 
DZAI_PistolsDefault3 = ["M9", "glock17_EP1", "UZI_EP1", "M9SD"]; //+["MakarovSD"]; For DayZ 1.7.7 
/*
Rifles:
DZAI_RiflesDefault0 = Rifles found in Residential areas. (ie: Apartments, Farms)
DZAI_RiflesDefault1 = Rifles found in Military areas. (ie: Firestations, Deer Stands)
DZAI_RiflesDefault2 = Rifles found in MilitarySpecial areas. (ie: Barracks)
DZAI_RiflesDefault3 = Rifles found in HeliCrash areas.
*/
DZAI_RiflesDefault0 = ["Winchester1866", "LeeEnfield", "huntingrifle","M1014","MR43"];
DZAI_RiflesDefault1 = ["M16A2","M16A2GL","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","M1014","DMR","M4A1","M14_EP1","Remington870_lamp","MP5A5","MP5SD","M4A3_CCO_EP1","Sa58P_EP1","Sa58V_EP1","BAF_L85A2_RIS_Holo"];
DZAI_RiflesDefault2 = ["M16A2","M16A2GL","M249_DZ","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","SVD_CAMO","M1014","M107_DZ","DMR","M4A1","M14_EP1","Remington870_lamp","M240_DZ","M4A1_AIM_SD_camo","M16A4_ACG","M4A1_HWS_GL_camo","Mk_48_DZ","M4A3_CCO_EP1","Sa58V_RCO_EP1","Sa58V_CCO_EP1","M40A3"];
DZAI_RiflesDefault3 = ["FN_FAL","bizon_silenced","M14_EP1","FN_FAL_ANPVS4","M107_DZ","BAF_AS50_scoped","Mk_48_DZ","M249_DZ","DMR","G36C","G36C_camo","G36A_camo","G36K_camo","BAF_L85A2_RIS_SUSAT"]; //+ ["RPK_74"]; For DayZ 1.7.7
//Backpacks:
DZAI_Backpacks0 = ["DZ_Patrol_Pack_EP1","DZ_Assault_Pack_EP1","DZ_Czech_Vest_Puch"];
DZAI_Backpacks1 = ["DZ_Czech_Vest_Puch","DZ_Assault_Pack_EP1","DZ_British_ACU","DZ_TK_Assault_Pack_EP1","DZ_CivilBackpack_EP1","DZ_ALICE_Pack_EP1"];
DZAI_Backpacks2 = ["DZ_CivilBackpack_EP1","DZ_ALICE_Pack_EP1","DZ_Backpack_EP1"];
DZAI_Backpacks3 = ["DZ_Backpack_EP1"];

DZAI_DefaultEdibles = ["ItemSodaCoke", "ItemSodaPepsi", "ItemWaterbottle", "FoodCanSardines", "FoodCanBakedBeans", "FoodCanFrankBeans", "FoodCanPasta", "ItemWaterbottleUnfilled","ItemWaterbottleBoiled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw","FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"]; //List of all edible items
DZAI_DefaultMedicals1 = ["ItemBandage", "ItemPainkiller"]; //List of common medical items
DZAI_DefaultMedicals2 = ["ItemPainkiller", "ItemMorphine", "ItemBandage", "ItemBloodbag", "ItemAntibiotic","ItemEpinephrine"]; //List of all medical items

DZAI_DefaultMiscItemS = ["ItemTankTrap", "ItemSandbag", "ItemWire", "ItemHeatpack", "HandRoadFlare", "HandChemBlue", "HandChemRed", "HandChemGreen","SmokeShell","SmokeShellGreen","SmokeShellGreen","HandGrenade_West","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","1Rnd_Smoke_M203","HandGrenade_West","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","1Rnd_Smoke_M203"]; //List of random miscellaneous items (1 inventory space)
DZAI_chanceMiscItemS = 0.66;								//Chance to add random item from DZAI_DefaultMiscItemS table.

DZAI_DefaultMiscItemL = ["ItemTent", "ItemJerrycan", "PartWheel", "PartEngine", "PartFueltank", "PartGlass", "PartVRotor","PartWoodPile"]; //List of random miscellaneous items (>1 inventory space)
DZAI_chanceMiscItemL = 0.20;

DZAI_DefaultSkinLoot = ["Skin_Camo1_DZ", "Skin_Sniper1_DZ"]; //List of all skin packs
DZAI_skinItemChance = 0.08;									//Chance to add random item from DZAI_DefaultSkinLoot table.

//DZAI_DefaultTools = ["ItemFlashlight","ItemWatch","ItemKnife","ItemHatchet","ItemCompass","ItemMap","ItemToolbox","ItemMatchbox","ItemFlashlightRed","binocular_vector","ItemGPS"]; //List of all tools and gadgets. NOTE: Every entry into the DZAI_DefaultTools table must have corresponding chance added to DZAI_toolChances!
//DZAI_toolChances = [1.00,0.90,0.85,0.80,0.60,0.50,0.20,0.20,0.10,0.05,0.03]; 	//Probabilities for generating each tool item upon unit death. (Flashlight, Watch, Knife, Hatchet, Compass, Map, Toolbox, Matchbox, Military Flashlight, Rangefinder, GPS).

//DZAI 0.07
DZAI_tools = [["ItemFlashlight",1.00],["ItemWatch",0.90],["ItemKnife",0.85],["ItemHatchet",0.80],["ItemCompass",0.60],["ItemMap",0.50],["ItemToolbox",0.20],["ItemMatchbox",0.20],["ItemFlashlightRed",0.10],["ItemGPS",0.05]];

//DZAI_DefaultGadgets = ["binocular","NVGoggles"];
//DZAI_gadgetChances = [0.50,0.03];								//Probabilities of generating each gadget item upon unit spawn (Binoculars, NVGoggles).

//DZAI 0.07
DZAI_gadgets = [["binocular",0.60],["NVGoggles",0.05]];

private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

switch (_modname) do {
	case "epoch":
	{
		private ["_worldname"];
		diag_log "DayZ Epoch configuration selected.";
	
		//Epoch metal bar currency (rare bars only)
		DZAI_metalBars = [["ItemSilverBar",0.30],["ItemSilverBar10oz",0.15],["ItemGoldBar",0.05],["ItemGoldBar10oz",0.025]];
		DZAI_metalBarNum = 3;		//Maximum number of metal bars to generate
	
		DZAI_BanditTypesDefault = DZAI_BanditTypesDefault + ["Soldier1_DZ","RU_Policeman_DZ","Pilot_EP1_DZ","Haris_Press_EP1_DZ","Ins_Soldier_GL_DZ","Functionary1_EP1_DZ","GUE_Commander_DZ","Priest_DZ","Rocker2_DZ","SurvivorWpink_DZ","SurvivorWcombat_DZ","SurvivorWdesert_DZ","SurvivorWurban_DZ","Soldier_TL_PMC_DZ","Soldier_Sniper_PMC_DZ","Soldier_Bodyguard_AA12_PMC_DZ","Drake_Light_DZ","CZ_Special_Forces_GL_DES_EP1_DZ","TK_INS_Soldier_EP1_DZ","TK_INS_Warlord_EP1_DZ"];
		DZAI_DefaultSkinLoot = DZAI_DefaultSkinLoot + ["Skin_Soldier1_DZ","Skin_RU_Policeman_DZ","Skin_Pilot_EP1_DZ","Skin_Haris_Press_EP1_DZ","Skin_Ins_Soldier_GL_DZ","Skin_Functionary1_EP1_DZ","Skin_GUE_Commander_DZ","Skin_Priest_DZ","Skin_Rocker2_DZ","Skin_SurvivorWpink_DZ","Skin_SurvivorWcombat_DZ","Skin_SurvivorWdesert_DZ","Skin_SurvivorWurban_DZ","Skin_Soldier_TL_PMC_DZ","Skin_Soldier_Sniper_PMC_DZ","Skin_Soldier_Bodyguard_AA12_PMC_DZ","Skin_Drake_Light_DZ","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","Skin_TK_INS_Soldier_EP1_DZ","Skin_TK_INS_Warlord_EP1"];
		DZAI_DefaultEdibles = DZAI_DefaultEdibles + ["FoodBioMeat"];
		DZAI_DefaultMiscItemS = DZAI_DefaultMiscItemS + ["ItemZombieParts"];

	};
	case "minimal":
	{
		//Minimal configuration is designed with maximum compatability in mind and should be compatible with every existing DayZ mod and possibly future releases, at the cost of variety of weapons and loot.
		diag_log "Minimal DZAI configuration selected.";
		#include "minimal_config.sqf"
	};
};

diag_log "DZAI loot tables loaded.";
