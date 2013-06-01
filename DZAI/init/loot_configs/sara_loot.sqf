//Sahrani Loot Configuration 0.08
private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

DZAI_BanditTypesDefault = DZAI_BanditTypesDefault + ["Rocket_DZ","BanditSkin_DZ","SniperBandit_DZ","SniperBanditW_DZ","Sniper1W_DZ","BanditSkinW_DZ"];
DZAI_PistolsDefault0 = DZAI_PistolsDefault0 + ["MakarovSD"];
DZAI_PistolsDefault1 = DZAI_PistolsDefault1 + ["MakarovSD"];
DZAI_PistolsDefault2 = DZAI_PistolsDefault2 + ["MakarovSD"];
DZAI_RiflesDefault1 = DZAI_RiflesDefault1 + ["Sa61_EP1","AK_107_pso","AK_107_kobra","AK_107_GL_kobra","AKS_74_pso","RPK_74","m8_carbine","m8_carbineGL","m8_compact","SVD"];
DZAI_RiflesDefault2 = DZAI_RiflesDefault2 + ["G36_C_SD_camo","Sa61_EP1","AK_107_pso","AK_107_kobra","AK_107_GL_kobra","AKS_74_pso","RPK_74","m8_carbine","m8_carbineGL","m8_compact","SVD"];
DZAI_RiflesDefault3 = DZAI_RiflesDefault3 - ["BAF_L85A2_RIS_SUSAT"] + ["m8_SAW","m8_sharpshooter","BAF_L85A2_RIS_ACOG","VSS_vintorez","SCAR_L_CQC","SCAR_L_CQC_Holo","SCAR_L_STD_Mk4CQT","SCAR_L_STD_EGLM_RCO","SCAR_H_LNG_Sniper","ksvk_DZ","SVD_CAMO"];
DZAI_DefaultEdibles = DZAI_DefaultEdibles - ["FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"];
DZAI_DefaultSkinLoot = DZAI_DefaultSkinLoot + ["Skin_Rocket_DZ","Skin_BanditSkin_DZ"];
DZAI_DefaultMiscItemS = DZAI_DefaultMiscItemS + ["ItemNails","ItemCraftingBook2","ItemCraftingBook"];

DZAI_RiflesDefault0 = DZAI_RiflesDefault0 + DZAI_PistolsDefault0;

diag_log "Sahrani loot tables loaded.";