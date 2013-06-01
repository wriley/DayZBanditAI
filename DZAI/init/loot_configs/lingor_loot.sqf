//Lingor Loot Configuration 0.07
private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

switch (DZAI_modName) do {
	case "skarolingor":
	{
		DZAI_PistolsDefault3 = DZAI_PistolsDefault3 + ["MakarovSD"];
		DZAI_RiflesDefault1 = DZAI_RiflesDefault1 + ["RPK_74"];
		DZAI_RiflesDefault2 = DZAI_RiflesDefault2 + ["MG36"];
		DZAI_RiflesDefault3 = DZAI_RiflesDefault3 + ["BAF_L85A2_UGL_Holo"];
		diag_log "DayZ Lingor (Skaronator) loot tables loaded.";
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
	case default
	{
		diag_log "DayZ Lingor (safe mode) config selected.";
		if (!DZAI_safeMode) then {DZAI_safeMode = true;};	//Always load regular Lingor in "safe mode". Temporary fix for crashing issues.
	};
};

DZAI_RiflesDefault0 = DZAI_RiflesDefault0 + DZAI_PistolsDefault0;
