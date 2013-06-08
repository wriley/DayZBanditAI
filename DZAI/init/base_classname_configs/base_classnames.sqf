/*
	Description: Basic tables containing AI equipment classnames and skin models used by AI units. Some settings may be overridden by map-specific configuration files in the loot_configs folder.
				Also contains stripped-down tables for Safe Mode setting.
	
	Important Notes: EDIT WITH CARE - these tables affect ALL DayZ mods globally. 
	To make changes for a specific DayZ mod, edit the appropriate config file in configs folder. 
	Rule of thumb: If it doesn't belong in the original DayZ mod, it doesn't belong here. Edit the mod-specific config file instead.
	
	Last upated: 6/3/2013
*/

	DZAI_BanditTypes = ["Survivor2_DZ", "SurvivorW2_DZ", "Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"]; //List of skins for AI units to use
	DZAI_Pistols0 = ["Colt1911", "revolver_EP1", "Makarov"]; //Common pistols that can be found in areas such as Apartments and Farms.
	DZAI_Pistols1 = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD", "revolver_EP1"]; //DZAI_Pistols1-3: Uncommon/rare pistols that can be found in Military areas (ie: Firestations, Deer Stands, Barracks)
	DZAI_Pistols2 = ["M9", "glock17_EP1", "Colt1911", "UZI_EP1", "M9SD"]; //+["MakarovSD"]; For DayZ 1.7.7. 
	DZAI_Pistols3 = ["M9", "glock17_EP1", "UZI_EP1", "M9SD"]; //+["MakarovSD"]; For DayZ 1.7.7 
	/*
	Rifles:
	DZAI_Rifles0 = Rifles found in Residential areas. (ie: Apartments, Farms)
	DZAI_Rifles1 = Rifles found in Military areas. (ie: Firestations, Deer Stands)
	DZAI_Rifles2 = Rifles found in MilitarySpecial areas. (ie: Barracks)
	DZAI_Rifles3 = Rifles found in HeliCrash areas.
	*/
	DZAI_Rifles0 = ["Winchester1866", "LeeEnfield", "huntingrifle","MR43"];
	DZAI_Rifles1 = ["M16A2","M16A2GL","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","M1014","DMR","M4A1","M14_EP1","Remington870_lamp","MP5A5","MP5SD","M4A3_CCO_EP1","Sa58P_EP1","Sa58V_EP1","BAF_L85A2_RIS_Holo"];
	DZAI_Rifles2 = ["M16A2","M16A2GL","M249_DZ","AK_74","M4A1_Aim","AKS_74_kobra","AKS_74_U","AK_47_M","M24","SVD_CAMO","M1014","M107_DZ","DMR","M4A1","M14_EP1","Remington870_lamp","M240_DZ","M4A1_AIM_SD_camo","M16A4_ACG","M4A1_HWS_GL_camo","Mk_48_DZ","M4A3_CCO_EP1","Sa58V_RCO_EP1","Sa58V_CCO_EP1","M40A3"];
	DZAI_Rifles3 = ["FN_FAL","bizon_silenced","M14_EP1","FN_FAL_ANPVS4","M107_DZ","BAF_AS50_scoped","Mk_48_DZ","M249_DZ","DMR","G36C","G36C_camo","G36A_camo","G36K_camo","BAF_L85A2_RIS_SUSAT"]; //+ ["RPK_74"]; For DayZ 1.7.7
	//Backpacks:
	DZAI_Backpacks0 = ["DZ_Patrol_Pack_EP1","DZ_Assault_Pack_EP1","DZ_Czech_Vest_Puch"];
	DZAI_Backpacks1 = ["DZ_Czech_Vest_Puch","DZ_Assault_Pack_EP1","DZ_British_ACU","DZ_TK_Assault_Pack_EP1","DZ_CivilBackpack_EP1","DZ_ALICE_Pack_EP1"];
	DZAI_Backpacks2 = ["DZ_CivilBackpack_EP1","DZ_ALICE_Pack_EP1","DZ_Backpack_EP1"];
	DZAI_Backpacks3 = ["DZ_Backpack_EP1"];

	DZAI_Edibles = ["ItemSodaCoke", "ItemSodaPepsi", "ItemWaterbottle", "FoodCanSardines", "FoodCanBakedBeans", "FoodCanFrankBeans", "FoodCanPasta", "ItemWaterbottleUnfilled","ItemWaterbottleBoiled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw","FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"]; //List of all edible items
	DZAI_Medicals1 = ["ItemBandage", "ItemPainkiller"]; //List of common medical items
	DZAI_Medicals2 = ["ItemPainkiller", "ItemMorphine", "ItemBandage", "ItemBloodbag", "ItemAntibiotic","ItemEpinephrine"]; //List of all medical items

	DZAI_MiscItemS = ["ItemTankTrap", "ItemSandbag", "ItemWire", "ItemHeatpack", "HandRoadFlare", "HandChemBlue", "HandChemRed", "HandChemGreen","SmokeShell","SmokeShellGreen","SmokeShellGreen","HandGrenade_West","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","1Rnd_Smoke_M203","HandGrenade_West","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","1Rnd_Smoke_M203"]; //List of random miscellaneous items (1 inventory space)
	DZAI_MiscItemL = ["ItemTent", "ItemJerrycan", "PartWheel", "PartEngine", "PartFueltank", "PartGlass", "PartVRotor","PartWoodPile"]; //List of random miscellaneous items (>1 inventory space)

	DZAI_SkinLoot = ["Skin_Camo1_DZ", "Skin_Sniper1_DZ"]; //List of all skin packs

	DZAI_tools0 = [["ItemFlashlight",0.80],["ItemWatch",0.80],["ItemKnife",0.50],["ItemHatchet",0.40],["ItemCompass",0.35],["ItemMap",0.25],["ItemToolbox",0.10],["ItemMatchbox",0.10],["ItemFlashlightRed",0.05],["ItemGPS",0.00],["ItemRadio",0.00]];
	DZAI_tools1 = [["ItemFlashlight",0.90],["ItemWatch",0.90],["ItemKnife",0.75],["ItemHatchet",0.70],["ItemCompass",0.60],["ItemMap",0.50],["ItemToolbox",0.20],["ItemMatchbox",0.20],["ItemFlashlightRed",0.10],["ItemGPS",0.05],["ItemRadio",0.03]];
	
	DZAI_gadgets0 = [["binocular",0.60],["NVGoggles",0.00]];
	DZAI_gadgets1 = [["binocular",0.60],["NVGoggles",0.05]];
	
	diag_log "DZAI default loot tables loaded.";
