/*
DZAI Minimal Configuration - Modified config for maximum compatibility.
*/

//Pistols:
DZAI_BanditTypesDefault = ["Bandit1_DZ"];
DZAI_PistolsDefault0 = ["revolver_EP1"];
DZAI_PistolsDefault1 = ["M9"];
DZAI_PistolsDefault2 = ["glock17_EP1"]; 
DZAI_PistolsDefault3 = ["M9SD"];

//Rifles:
DZAI_RiflesDefault0 = ["LeeEnfield"];
DZAI_RiflesDefault1 = ["M16A2"];
DZAI_RiflesDefault2 = ["M16A4_ACG"];
DZAI_RiflesDefault3 = ["M14_EP1"];
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

//DZAI 0.07
DZAI_tools = [["ItemFlashlight",1.00],["ItemWatch",0.90],["ItemKnife",0.85],["ItemHatchet",0.80],["ItemCompass",0.60],["ItemMap",0.50],["ItemToolbox",0.20],["ItemMatchbox",0.20]];

//DZAI 0.07
DZAI_gadgets = [["binocular",0.60]];

diag_log "DZAI loot tables loaded.";
