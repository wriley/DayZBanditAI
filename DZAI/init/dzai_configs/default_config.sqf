/*Default DZAI Loot Tables version 0.07
EDIT WITH CARE - these tables affect ALL DayZ mods globally. 
To make changes for a specific DayZ mod, edit the appropriate config file in configs folder. 
Rule of thumb: If it doesn't belong in the original DayZ mod, it doesn't belong here. Edit the mod-specific config file instead.
Dev notes: add weighted chances to weapons?
*/

if !(DZAI_safeMode) then {
	
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
	DZAI_RiflesDefault0 = ["Winchester1866", "LeeEnfield", "huntingrifle","MR43"];
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
	DZAI_DefaultMiscItemL = ["ItemTent", "ItemJerrycan", "PartWheel", "PartEngine", "PartFueltank", "PartGlass", "PartVRotor","PartWoodPile"]; //List of random miscellaneous items (>1 inventory space)

	DZAI_DefaultSkinLoot = ["Skin_Camo1_DZ", "Skin_Sniper1_DZ"]; //List of all skin packs

	DZAI_tools = [["ItemFlashlight",1.00],["ItemWatch",0.90],["ItemKnife",0.85],["ItemHatchet",0.80],["ItemCompass",0.60],["ItemMap",0.50],["ItemToolbox",0.20],["ItemMatchbox",0.20],["ItemFlashlightRed",0.10],["ItemGPS",0.05],["ItemRadio",0.05]];

	DZAI_gadgets = [["binocular",0.60],["NVGoggles",0.05]];

	diag_log "DZAI default loot tables loaded.";
} else {
	//Pistols:
	DZAI_BanditTypesDefault = ["Bandit1_DZ"];
	DZAI_PistolsDefault0 = ["Makarov","revolver_EP1","Colt1911"];
	DZAI_PistolsDefault1 = ["M9","Colt1911"];
	DZAI_PistolsDefault2 = ["glock17_EP1"]; 
	DZAI_PistolsDefault3 = ["M9SD"];

	//Rifles:
	DZAI_RiflesDefault0 = ["LeeEnfield","MR43"];
	DZAI_RiflesDefault1 = ["M4A1","AK_74"];
	DZAI_RiflesDefault2 = ["M4A1_Aim","M4A3_CCO_EP1"];
	DZAI_RiflesDefault3 = ["Mk_48_DZ","M14_EP1"];
	//Backpacks:
	DZAI_Backpacks0 = ["DZ_Patrol_Pack_EP1"];
	DZAI_Backpacks1 = ["DZ_Assault_Pack_EP1"];
	DZAI_Backpacks2 = ["DZ_CivilBackpack_EP1"];
	DZAI_Backpacks3 = ["DZ_Backpack_EP1"];

	DZAI_DefaultEdibles = ["ItemSodaCoke","FoodCanFrankBeans"]; //List of all edible items
	DZAI_DefaultMedicals1 = ["ItemBandage", "ItemPainkiller"]; //List of common medical items
	DZAI_DefaultMedicals2 = ["ItemPainkiller", "ItemMorphine", "ItemBandage", "ItemBloodbag", "ItemAntibiotic","ItemEpinephrine"]; //List of all medical items

	DZAI_DefaultMiscItemS = ["HandRoadFlare", "HandChemBlue", "HandChemRed", "HandChemGreen"]; //List of random miscellaneous items (1 inventory space)
	DZAI_chanceMiscItemS = 0.66;								//Chance to add random item from DZAI_DefaultMiscItemS table.

	DZAI_DefaultMiscItemL = ["ItemTent", "ItemJerrycan", "PartWheel", "PartEngine", "PartFueltank", "PartGlass", "PartVRotor"]; //List of random miscellaneous items (>1 inventory space)
	DZAI_chanceMiscItemL = 0.20;

	DZAI_DefaultSkinLoot = ["Skin_Camo1_DZ", "Skin_Sniper1_DZ"]; //List of all skin packs
	DZAI_skinItemChance = 0.08;									//Chance to add random item from DZAI_DefaultSkinLoot table.

	DZAI_tools = [["ItemFlashlight",1.00],["ItemWatch",0.90],["ItemKnife",0.85],["ItemHatchet",0.80]];

	DZAI_gadgets = [["binocular",0.60]];

	DZAI_RiflesDefault0 = DZAI_RiflesDefault0 + DZAI_PistolsDefault0;
	
	diag_log "DZAI safe mode loot tables loaded.";
};
