/*Default AI Loot Tables. EDIT WITH CARE - these tables affect ALL DayZ mods globally. 
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
DZAI_RiflesDefault2 = ["M16A2","M16A2GL","M249_DZ","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","SVD_CAMO","M1014","M107_DZ","DMR","M4A1","M14_EP1","Remington870_lamp","M240_DZ","M4A1_AIM_SD_camo","M16A4_ACG","M4A1_HWS_GL_camo","Mk_48_DZ","M4A3_CCO_EP1"];
DZAI_RiflesDefault3 = ["FN_FAL","bizon_silenced","M14_EP1","FN_FAL_ANPVS4","M107_DZ","BAF_AS50_scoped","Mk_48_DZ","M249_DZ","DMR","G36C","G36C_camo","G36A_camo","G36K_camo","BAF_L85A2_RIS_SUSAT"]; //+ ["RPK_74"]; For DayZ 1.7.7
//Backpacks:
DZAI_Backpacks0 = ["DZ_Patrol_Pack_EP1","DZ_Assault_Pack_EP1","DZ_Czech_Vest_Puch"];
DZAI_Backpacks1 = ["DZ_Czech_Vest_Puch","DZ_Assault_Pack_EP1","DZ_British_ACU","DZ_TK_Assault_Pack_EP1","DZ_CivilBackpack_EP1","DZ_ALICE_Pack_EP1","DZ_Backpack_EP1"];
DZAI_Backpacks2 = ["DZ_CivilBackpack_EP1","DZ_ALICE_Pack_EP1","DZ_Backpack_EP1"];
DZAI_Backpacks3 = ["DZ_Backpack_EP1"];
//DZAI_DefaultStartPack = "DZ_Patrol_Pack_EP1"; //Class name of default starting backpack
//DZAI_DefaultBackpacks = ["CZ_VestPouch_EP1","DZ_Patrol_Pack_EP1", "DZ_Assault_Pack_EP1", "DZ_CivilBackpack_EP1", "DZ_ALICE_Pack_EP1", "DZ_Backpack_EP1", "DZ_British_ACU", "DZ_TK_Assault_Pack_EP1"]; //List of all available backpacks

DZAI_DefaultEdibles = ["ItemSodaCoke", "ItemSodaPepsi", "ItemWaterbottle", "FoodCanSardines", "FoodCanBakedBeans", "FoodCanFrankBeans", "FoodCanPasta", "ItemWaterbottleUnfilled","ItemWaterbottleBoiled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw","FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"]; //List of all edible items
DZAI_DefaultMedicals1 = ["ItemBandage", "ItemBandage", "ItemPainkiller"]; //List of common medical items
DZAI_DefaultMedicals2 = ["ItemPainkiller", "ItemMorphine", "ItemBandage", "ItemBloodbag", "ItemAntibiotic","ItemEpinephrine"]; //List of all medical items
DZAI_DefaultMiscItemS = ["ItemTankTrap", "ItemSandbag", "ItemWire", "ItemHeatpack", "HandRoadFlare", "HandChemBlue", "HandChemRed", "HandChemGreen","SmokeShell","SmokeShellGreen","SmokeShellGreen","HandGrenade_West","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","1Rnd_Smoke_M203","HandGrenade_West","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","1Rnd_Smoke_M203"]; //List of random miscellaneous items (1 inventory space)
DZAI_DefaultMiscItemL = ["ItemTent", "ItemJerrycan", "PartWheel", "PartEngine", "PartFueltank", "PartGlass", "PartVRotor","PartWoodPile"]; //List of random miscellaneous items (>1 inventory space)
DZAI_DefaultSkinLoot = ["Skin_Camo1_DZ", "Skin_Sniper1_DZ"]; //List of all skin packs
DZAI_DefaultTools = ["ItemFlashlight","ItemWatch","ItemKnife","ItemHatchet","ItemCompass","ItemMap","ItemToolbox","ItemMatchbox","ItemFlashlightRed","binocular_vector","ItemGPS"]; //List of all tools and gadgets. NOTE: Every entry into the DZAI_DefaultTools table must have corresponding chance added to DZAI_toolChances!
DZAI_DefaultGadgets = ["binocular","NVGoggles"];

diag_log "DZAI loot tables loaded";
