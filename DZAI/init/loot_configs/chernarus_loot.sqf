/*
	Chernarus Loot Configuration
	
	Last updated: 1:13 PM 6/3/2013
	
*/
private ["_newItems"];
switch (DZAI_modName) do {
	case "2017":
	{
		DZAI_BanditTypesDefault = DZAI_BanditTypesDefault - ["Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"];
		_newItems = ["Beard_DZ","Dimitry_DZ","Alexej_DZ","Stanislav_DZ","Czech_Norris","SG_IRA_Soldier_CO_DZ"];
		for "_i" from 0 to (count _newItems) do {DZAI_BanditTypesDefault set [count DZAI_BanditTypesDefault,_i];};
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
		//Reduce tool probabilities (both tiers)
		DZAI_gadgets0 set [1,["NVGoggles",0.00]];
		DZAI_gadgets1 set [1,["NVGoggles",0.00]];
		DZAI_tools0 set [0,["ItemFlashlight",0.60]];
		DZAI_tools0 set [2,["ItemKnife",0.65]];
		DZAI_tools0 set [3,["ItemHatchet",0.60]];
		DZAI_tools0 set [4,["ItemCompass",0.40]];
		DZAI_tools0 set [5,["ItemMap",0.30]];
		DZAI_tools0 set [7,["ItemFlint",0.20]];		//Replace ItemMatchbox with ItemFlint
		DZAI_tools0 set [8,["ItemFlashlightRed",0.10]];
		DZAI_tools0 set [9,["ItemGPS",0.000]];		//Reduce probability of functional GPS
		DZAI_tools1 set [0,["ItemFlashlight",0.60]];
		DZAI_tools1 set [2,["ItemKnife",0.65]];
		DZAI_tools1 set [3,["ItemHatchet",0.60]];
		DZAI_tools1 set [4,["ItemCompass",0.40]];
		DZAI_tools1 set [5,["ItemMap",0.30]];
		DZAI_tools1 set [7,["ItemFlint",0.20]];		//Replace ItemMatchbox with ItemFlint
		DZAI_tools1 set [8,["ItemFlashlightRed",0.10]];
		DZAI_tools1 set [9,["ItemGPS",0.000]];		//Reduce probability of functional GPS
		DZAI_Backpacks0 = ["ice_apo_pack3"];
		DZAI_Backpacks1 = ["ice_apo_pack3","ice_apo_pack1"];
		DZAI_Backpacks2 = ["ice_apo_pack1","ice_apo_pack4","ice_apo_pack2"];
		DZAI_Backpacks3 = ["ice_apo_pack4","ice_apo_pack2"];
		DZAI_tempNVGs = false;	//Disable temporary NVG chance for DayZ 2017.
		diag_log "DayZ 2017 loot tables loaded.";
	};
	case "epoch":
	{
		#include "mod_configs\epoch_config.sqf"
	};
};

for "_i" from 0 to ((count DZAI_PistolsDefault0) - 1) do {DZAI_RiflesDefault0 set [(count DZAI_RiflesDefault0),(DZAI_PistolsDefault0 select _i)];};
