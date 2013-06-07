/*
	Chernarus Loot Configuration
	
	Last updated: 1:13 PM 6/3/2013
	
*/
private ["_newItems"];
switch (DZAI_modName) do {
	case "2017":
	{
		DZAI_maxPistolMags = 1;
		DZAI_invmedicals = 0; 										//Number of selections of medical items (Inventory)
		DZAI_invedibles = 0;										//Number of selections of edible items (Inventory)
		DZAI_bpmedicals = 0; 										//Number of selections of medical items (Backpack)
		DZAI_bpedibles = 1;											//Number of selections of edible items (Backpack)
		DZAI_DefaultSkinLoot = [];
		DZAI_BanditTypesDefault = DZAI_BanditTypesDefault - ["Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"];
		_newItems = ["Beard_DZ","Dimitry_DZ","Alexej_DZ","Stanislav_DZ","Czech_Norris"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_BanditTypesDefault set [count DZAI_BanditTypesDefault,_newItems select _i];};
		DZAI_PistolsDefault0 = ["revolver_EP1","Makarov","Tokarev"];
		DZAI_PistolsDefault1 = ["revolver_EP1","Makarov","Tokarev"];
		DZAI_PistolsDefault2 = ["revolver_EP1","Makarov","Tokarev"];
		DZAI_PistolsDefault3 = [];
		DZAI_RiflesDefault0 = ["LeeEnfield","Winchester1866","Crossbow","MR43","Mosin38"];
		DZAI_RiflesDefault1 = ["LeeEnfield","Winchester1866","Remington870_lamp","Mosin38"];
		DZAI_RiflesDefault2 = ["LeeEnfield","Winchester1866","Remington870_lamp","Mosin38","M16_FlashLight","M4_FlashLight"];
		DZAI_RiflesDefault3 = [];
		DZAI_DefaultEdibles = DZAI_DefaultEdibles - ["FoodCanPasta","ItemWaterbottleBoiled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw","FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"] + ["HumanFleshCooked","RawHumanFlesh","RawInfectedFlesh","InfectedFleshCooked","FoodSteakCooked","FoodSteakRaw","FoodCanDogFood"];
		DZAI_DefaultMiscItemS = DZAI_DefaultMiscItemS - ["HandGrenade_West","FlareGreen_M203","HandGrenade_West","FlareGreen_M203"];
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
		#include "mod_configs\epoch_classnames.sqf"
	};
	case "civilian":
	{
		DZAI_Backpacks0 set [count DZAI_Backpacks0,"ice_apo_pack3"];
		_newItems = ["ice_apo_pack3","ice_apo_pack1"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Backpacks1 set [(count DZAI_Backpacks1),(_newItems select _i)];};
		_newItems = ["ice_apo_pack1","ice_apo_pack4","ice_apo_pack2"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Backpacks2 set [(count DZAI_Backpacks2),(_newItems select _i)];};
		_newItems = ["ice_apo_pack4","ice_apo_pack2"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Backpacks3 set [(count DZAI_Backpacks3),(_newItems select _i)];};
		//_newItems = ["Warlord_DZ","Skimask_DZ","Bardak_DZ","Boss_DZ","Euroman2_DZ","Euroman1_DZ","Doctor_DZ","CameraMan_DZ","Profiteer4_DZ","Profiteer3_DZ","Profiteer3_DZ","Profiteer2_DZ","Profiteer1_DZ","Priest_DZ","Pilot_DZ","PMC_Female_DZ","Female_2_DZ","Survivor2_DZ","Sniper1_DZ","Soldier1_DZ","BanditW1_DZ","Bandit1_DZ","SurvivorW2_DZ","Policeman_DZ","Rocker1_DZ","Rocker2_DZ","Rocker3_DZ","Rocker4_DZ","Civilian2_DZ","Civilian3_DZ","Priest_DZ","Pilot_DZ","Villager1_DZ","Villager4_DZ","Villager3_DZ","Villager2_DZ","Worker4_DZ","Worker3_DZ","Worker2_DZ","Worker1_DZ","Assistant_DZ"];
		//for "_i" from 0 to ((count _newItems) - 1) do {DZAI_BanditTypesDefault set [(count DZAI_BanditTypesDefault),(_newItems select _i)];};
		_newItems = ["ASC_Makarov","RH_m1911","RH_python","RH_tt33","RH_mk22v","RH_mk22","RH_deagle","RH_deagleg","RH_deagles","RH_mk22sd","RH_mk22vsd","RH_usp","RH_uspsd","RH_m1911sd","RH_m1911old","RH_uspm","RH_m93r","RH_m9","RH_m9sd","RH_m9c","RH_vz61","RH_muzi","RH_g18","RH_g17","RH_tec9","RH_mk2","RH_p38","RH_ppk","RH_p226","RH_p226s","RH_anac","RH_anacg","RH_bull","rh_usp"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_PistolsDefault0 set [(count DZAI_PistolsDefault0),(_newItems select _i)];};
		_newItems = ["ASC_M9","RH_g17","RH_g19","RH_g19t","RH_deagle","RH_deagleg","RH_deagles","RH_mk22","RH_mk22sd","RH_mk22v","RH_mk22vsd","RH_usp","RH_uspsd","RH_m1911","RH_m1911sd","RH_m1911old","RH_uspm","RH_m93r","RH_m9","RH_m9sd","RH_m9c","RH_vz61","RH_muzi","RH_g18","RH_g17","RH_tec9","RH_tt33","RH_mk2","RH_p38","RH_ppk","RH_p226","RH_p226s","RH_anac","RH_anacg","RH_bull","RH_python"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_PistolsDefault1 set [(count DZAI_PistolsDefault1),(_newItems select _i)];};
		_newItems = ["RH_tt33","RH_vz61"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_PistolsDefault2 set [(count DZAI_PistolsDefault2),(_newItems select _i)];};
		_newItems = ["RH_g17"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_PistolsDefault3 set [(count DZAI_PistolsDefault3),(_newItems select _i)];};
		DZAI_RiflesDefault0 = DZAI_RiflesDefault0 - ["MR43"];
		_newItems = ["d3z_lanber","rh_M16a1","Mosin38","M16_FlashLight","M4_FlashLight","KPFS_g3a2","gms_k98_knife","gms_k98","gms_k98zf39","Rh_Ar10s","gms_mp40","KPFS_KarS","M4a1","KPFS_mp44","RH_ak74m","RH_ak74mk","RH_aks74m","RH_aks74mk","RH_ak103","RH_ak103k","RH_aks74p","RH_aks74pk","RH_ak104","RH_ak104k","RH_ak105","RH_ak105k","RH_asval","RH_asvalk","c1987_g3","c1987_g3_grip","rh_aps","RH_ak107k"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_RiflesDefault0 set [(count DZAI_RiflesDefault0),(_newItems select _i)];};
		_newItems = ["ASC_M16a4","ASC_M16a4_Blank","RH_python","RH_ak74","ASC_M4_Blank","RH_ak74k","RH_aks74u","RH_akm","rh_m40a3","RH_m4","ASC_M4A1","ASC_M14_IR","ASC_UZI","ASC_M4A1_Camo","Rh_m16a1","RH_m4m","fs_r_870_police","RH_acrb","rh_masB","rh_acrbeotech","rh_acrbacog","rh_acraim","rh_hk416","rh_hk416aim","rh_ctar21","rh_ctar21m","rh_hk416seotech","rh_masbsd","rh_m4maim","rh_m16a1","rh_m16a3","RH_ak74mk","RH_ak74msp","RH_ak103","RH_ak103k","RH_ak103kgl","RH_ak103sp","RH_aks74p","RH_aks74pk","RH_ak104","RH_ak104k","RH_ak104sp","RH_ak105","RH_ak105k","RH_ak105sp","RH_ak107","RH_ak107k","RH_ak107sp","RH_asval","RH_asvalk","RH_asvalsp"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_RiflesDefault1 set [(count DZAI_RiflesDefault1),(_newItems select _i)];};
		_newItems = ["ASC_M16a4","ASC_M16a4_Blank","ASC_M249","ASC_M9_SD","SMAW","RH_ak74","ASC_M4_Blank","RH_ak74k","RH_aks74u","RH_akm","rh_m40a3","RH_svd","ASC_M107_IR","ASC_M4SPR","ASC_M4A1","ASC_M14_IR","ASC_UZI","ASC_M240","ASC_M4_Blank_SD","ASC_M16a4_ACOG","M4A1_HWS_GL_camo","RH_Mk48mod1","ASC_M4A1_Camo","rh_m40a5","RH_m4maim","RH_m4meotech","RH_m4m","RH_m4sbr","RH_m4sbraim","RH_m4sbracog","RH_an94","RH_aps","RH_rpk47","RH_ak107_1p29","ASC_G36A","ASC_G36K","ASC_G36C","rh_masaim","rh_masbaim","rh_massdeotech","rh_acracog","rh_acrbacog","rh_star21","rh_hk417","rh_hk417aim","rh_hk417eotech","KSVK","RH_asval","m8_carbine_pmc","m8_compact_pmc","m8_holo_sd","BAF_LRR_scoped_W"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_RiflesDefault2 set [(count DZAI_RiflesDefault2),(_newItems select _i)];};
		_newItems = ["ASC_M107_IR","ASC_M14_IR","RH_Mk48mod1","ASC_M249","ASC_G36C","ASC_G36C_camo","ASC_G36A","ASC_G36K"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_RiflesDefault3 set [(count DZAI_RiflesDefault3),(_newItems select _i)];};
		_newItems = ["Skin_Policeman_DZ","Skin_Citizen2_DZ","Skin_Citizen3_DZ","Skin_Rocker1_DZ","Skin_Rocker2_DZ","Skin_Rocker3_DZ","Skin_Rocker4_DZ","Skin_Worker1_DZ","Skin_Assistant_DZ","Skin_Pilot_DZ","Skin_Priest_DZ"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_DefaultSkinLoot set [(count DZAI_DefaultSkinLoot),(_newItems select _i)];};
	};
};

for "_i" from 0 to ((count DZAI_PistolsDefault0) - 1) do {DZAI_RiflesDefault0 set [(count DZAI_RiflesDefault0),(DZAI_PistolsDefault0 select _i)];};
