/*
	Sahrani Loot Configuration
	
	Last updated: 1:14 PM 6/3/2013
	
*/

private ["_modname","_craftingBooks","_newAISkins","_newRifles1","_newRifles2","_newRifles3","_newSkinItems"];
_modname = toLower format ["%1",DZAI_modName];


_newAISkins = ["Rocket_DZ","BanditSkin_DZ","SniperBandit_DZ","SniperBanditW_DZ","Sniper1W_DZ","BanditSkinW_DZ"];
_newRifles1 = ["Sa61_EP1","AK_107_pso","AK_107_kobra","AK_107_GL_kobra","AKS_74_pso","RPK_74","m8_carbine","m8_carbineGL","m8_compact","SVD"];
_newRifles2 = ["G36_C_SD_camo","Sa61_EP1","AK_107_pso","AK_107_kobra","AK_107_GL_kobra","AKS_74_pso","RPK_74","m8_carbine","m8_carbineGL","m8_compact","SVD"];
_newRifles3 = ["m8_SAW","m8_sharpshooter","BAF_L85A2_RIS_ACOG","VSS_vintorez","SCAR_L_CQC","SCAR_L_CQC_Holo","SCAR_L_STD_Mk4CQT","SCAR_L_STD_EGLM_RCO","SCAR_H_LNG_Sniper","ksvk_DZ","SVD_CAMO"];
_newSkinItems = ["Skin_Rocket_DZ","Skin_BanditSkin_DZ"];
_craftingBooks = [["ItemCraftingBook",0.10],["ItemCraftingBook2",0.10],["ItemCraftingBook3",0.05]];

for "_i" from 0 to ((count _newAISkins) - 1) do {DZAI_BanditTypes set [(count DZAI_BanditTypes),(_newAISkins select _i)];};
DZAI_Pistols0 set [(count DZAI_Pistols0),"MakarovSD"];
DZAI_Pistols1 set [(count DZAI_Pistols1),"MakarovSD"];
DZAI_Pistols2 set [(count DZAI_Pistols2),"MakarovSD"];
for "_i" from 0 to ((count _newRifles1) - 1) do {DZAI_Rifles1 set [(count DZAI_Rifles1),(_newRifles1 select _i)];};
for "_i" from 0 to ((count _newRifles2) - 1) do {DZAI_Rifles2 set [(count DZAI_Rifles2),(_newRifles2 select _i)];};
DZAI_Rifles3 = DZAI_Rifles3 - ["BAF_L85A2_RIS_SUSAT"];
for "_i" from 0 to ((count _newRifles3) - 1) do {DZAI_Rifles3 set [(count DZAI_Rifles3),(_newRifles3 select _i)];};
DZAI_Edibles = DZAI_Edibles - ["FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"];
for "_i" from 0 to ((count _newSkinItems) - 1) do {DZAI_SkinLoot set [(count DZAI_SkinLoot),(_newSkinItems select _i)];};
DZAI_MiscItemS set [(count DZAI_MiscItemS),"ItemNails"];
for "_i" from 0 to ((count DZAI_Pistols0) - 1) do {DZAI_Rifles0 set [(count DZAI_Rifles0),(DZAI_Pistols0 select _i)];};
for "_i" from 0 to ((count _craftingBooks) - 1) do {DZAI_tools0 set [(count DZAI_tools0),(_craftingBooks select _i)];};
for "_i" from 0 to ((count _craftingBooks) - 1) do {DZAI_tools1 set [(count DZAI_tools1),(_craftingBooks select _i)];};

diag_log "Sahrani loot tables loaded.";