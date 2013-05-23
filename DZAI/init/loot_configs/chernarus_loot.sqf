//Chernarus Loot Configuration 0.07

switch (DZAI_modName) do {
	case "2017":
	{
		diag_log "DayZ 2017 configuration selected.";
		DZAI_BanditTypesDefault = DZAI_BanditTypesDefault - ["Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"] + ["Beard_DZ","Dimitry_DZ","Alexej_DZ","Stanislav_DZ","Czech_Norris","SG_IRA_Soldier_CO_DZ"];
		DZAI_PistolsDefault0 = ["revolver_EP1","Makarov","Tokarev"];
		DZAI_PistolsDefault1 = ["revolver_EP1","Makarov","Tokarev"];
		DZAI_PistolsDefault2 = ["revolver_EP1","Makarov","Tokarev"];
		DZAI_RiflesDefault0 = ["LeeEnfield","Winchester1866","Crossbow","MR43","Mosin38"];
		DZAI_RiflesDefault1 = ["LeeEnfield","Winchester1866","Remington870_lamp","Mosin38"];
		DZAI_RiflesDefault2 = ["LeeEnfield","Winchester1866","Remington870_lamp","Mosin38","M16_FlashLight","M4_FlashLight"];
		DZAI_DefaultEdibles = DZAI_DefaultEdibles - ["FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw","FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"] + ["HumanFleshCooked","RawHumanFlesh","RawInfectedFlesh","InfectedFleshCooked","FoodSteakCooked","FoodSteakRaw","FoodCanDogFood"];
		DZAI_weaponGrades = [0,1,2];
		DZAI_gradeChances0 = [0.90,0.10,0.00];
		DZAI_gradeChances1 = [0.65,0.30,0.05];
		DZAI_gradeChances2 = [0.30,0.45,0.15];
		DZAI_gradeChances3 = [0.25,0.55,0.20];
		//Reduce tool probabilities
		DZAI_tools set [0,["ItemFlashlight",0.60]];
		DZAI_tools set [2,["ItemKnife",0.65]];
		DZAI_tools set [3,["ItemHatchet",0.60]];
		DZAI_tools set [4,["ItemCompass",0.40]];
		DZAI_tools set [5,["ItemMap",0.30]];
		DZAI_tools set [7,["ItemFlint",0.20]];		//Replace ItemMatchbox with ItemFlint
		DZAI_tools set [8,["ItemFlashlightRed",0.10]];
		DZAI_tools set [9,["ItemGPS",0.000]];		//Reduce probability of functional GPS
		DZAI_Backpacks0 = ["ice_apo_pack3"];
		DZAI_Backpacks1 = ["ice_apo_pack3","ice_apo_pack1"];
		DZAI_Backpacks2 = ["ice_apo_pack1","ice_apo_pack4","ice_apo_pack2"];
		DZAI_Backpacks3 = ["ice_apo_pack4","ice_apo_pack2"];
		DZAI_tempNVGs = false;	//Disable temporary NVG chance for DayZ 2017.
	};
	case "epoch":
	{
		diag_log "DayZ Epoch configuration selected.";
		//Epoch metal bar currency (rare bars only)
		DZAI_metalBars = [["ItemSilverBar",0.20],["ItemSilverBar10oz",0.10],["ItemGoldBar",0.03],["ItemGoldBar10oz",0.015]];
		DZAI_metalBarNum = 2;		//Maximum number of metal bars to generate
	
		DZAI_BanditTypesDefault = DZAI_BanditTypesDefault + ["Soldier1_DZ","RU_Policeman_DZ","Pilot_EP1_DZ","Haris_Press_EP1_DZ","Ins_Soldier_GL_DZ","Functionary1_EP1_DZ","GUE_Commander_DZ","Priest_DZ","Rocker2_DZ","SurvivorWpink_DZ","SurvivorWcombat_DZ","SurvivorWdesert_DZ","SurvivorWurban_DZ","Soldier_TL_PMC_DZ","Soldier_Sniper_PMC_DZ","Soldier_Bodyguard_AA12_PMC_DZ","Drake_Light_DZ","CZ_Special_Forces_GL_DES_EP1_DZ","TK_INS_Soldier_EP1_DZ","TK_INS_Warlord_EP1_DZ"];
		DZAI_DefaultSkinLoot = DZAI_DefaultSkinLoot + ["Skin_Soldier1_DZ","Skin_RU_Policeman_DZ","Skin_Pilot_EP1_DZ","Skin_Haris_Press_EP1_DZ","Skin_Ins_Soldier_GL_DZ","Skin_Functionary1_EP1_DZ","Skin_GUE_Commander_DZ","Skin_Priest_DZ","Skin_Rocker2_DZ","Skin_SurvivorWpink_DZ","Skin_SurvivorWcombat_DZ","Skin_SurvivorWdesert_DZ","Skin_SurvivorWurban_DZ","Skin_Soldier_TL_PMC_DZ","Skin_Soldier_Sniper_PMC_DZ","Skin_Soldier_Bodyguard_AA12_PMC_DZ","Skin_Drake_Light_DZ","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","Skin_TK_INS_Soldier_EP1_DZ","Skin_TK_INS_Warlord_EP1"];
		DZAI_DefaultEdibles = DZAI_DefaultEdibles + ["FoodBioMeat"];
		DZAI_DefaultMiscItemS = DZAI_DefaultMiscItemS + ["ItemZombieParts"];
		DZAI_skinItemChance = 0.15;
	};
};

DZAI_RiflesDefault0 = DZAI_RiflesDefault0 + DZAI_PistolsDefault0;
