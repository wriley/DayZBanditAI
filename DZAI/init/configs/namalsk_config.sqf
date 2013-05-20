//Reconfiguration for Namalsk Version 0.07
private ["_tmpArray"];
DZAI_invmedicals = 1; 	//Number of selections of medical items (Inventory)
DZAI_ninmedicals = 1;	//Maximum amount of each medical item, minimum of zero (Inventory)
DZAI_invedibles = 1;	//Number of selections of edible items (Inventory)
DZAI_ninedibles = 1;	//Maximum amount of each edible item, minimum of zero (Inventory)
DZAI_bpmedicals = 1; 	//Number of selections of medical items (Backpack)
DZAI_nbpmedicals = 1;	//Maximum amount of each medical item, minimum of zero (Backpack)
DZAI_bpedibles = 0;		//Number of selections of edible items (Backpack)
DZAI_nbpedibles = 0;	//Maximum amount of each edible item, minimum of zero (Backpack)

DZAI_gradeChances0 = [0.65,0.32,0.03,0.00];					//Weapongrade probabilities for small towns near beginner areas.
DZAI_gradeChances1 = [0.20,0.60,0.15,0.05];					//Weapongrade probabilities for large cities, or places with Military-grade loot. (Identical to 0.05 grade chances)
DZAI_gradeChances2 = [0.00,0.60,0.30,0.10];					//Weapongrade probabilities for areas with MilitarySpecial loot.
DZAI_BanditTypesDefault = DZAI_BanditTypesDefault + ["CamoWinterW_DZN", "CamoWinter_DZN", "Sniper1W_DZN"];
DZAI_PistolsDefault0 = DZAI_PistolsDefault0 + ["MakarovSD_DZN"];
if ((dayzNam_buildingLoot == "CfgBuildingLootNamalsk") || (dayzNam_buildingLoot == "CfgBuildingLootNamalskNOER7")) then {
	DZAI_RiflesDefault1 = DZAI_RiflesDefault1 + ["Saiga12K_DZN", "AKS_74_UN_kobra_DZN","RPK_74_DZN","AK_47_S","AK_74_GL","AK_107_kobra","AK_107_GL_kobra"];
	DZAI_RiflesDefault2 = DZAI_RiflesDefault2 + ["Saiga12K_DZN","AKS_74_UN_kobra_DZN","AK_107_GL_pso_DZN","G36_C_SD_eotech_DZN","PK_DZN","RPK_74_DZN","VSS_vintorez_DZN","MG36_DZN","AKS_74_pso","AK_74_GL","AK_107_kobra","AK_107_pso","AKS_GOLD_DZN","AK_47_S"];
	DZAI_RiflesDefault3 = DZAI_RiflesDefault3 + ["PK_DZN", "Pecheneg_DZN", "KSVK_DZN", "AKS_GOLD_DZN","BAF_L85A2_UGL_ACOG_DZN","Bizon"];
	} else { //No-sniper setting
	DZAI_RiflesDefault0 = DZAI_RiflesDefault0 - ["huntingrifle"];
	DZAI_RiflesDefault1 = DZAI_RiflesDefault1 - ["M24","DMR"] + ["Saiga12K_DZN", "AKS_74_UN_kobra_DZN","RPK_74_DZN","AK_47_S","AK_74_GL","AK_107_kobra","AK_107_GL_kobra"];
	DZAI_RiflesDefault2 = DZAI_RiflesDefault2 - ["M24","SVD_CAMO","M107_DZ","DMR","M16A4_ACG"] + ["Saiga12K_DZN","AKS_74_UN_kobra_DZN","AK_107_GL_pso_DZN","G36_C_SD_eotech_DZN","PK_DZN","RPK_74_DZN","MG36_DZN","AKS_74_pso","AK_74_GL","AK_107_kobra","AK_107_pso","AK_107_GL_kobra","AK_47_S"];
	DZAI_RiflesDefault3 = DZAI_RiflesDefault3 - ["FN_FAL_ANPVS4","M107_DZ","BAF_AS50_scoped","DMR","BAF_L85A2_RIS_SUSAT"] + ["PK_DZN", "Pecheneg_DZN", "AKS_GOLD_DZN","Bizon"];
};
DZAI_Backpacks1 = DZAI_Backpacks1 + ["BAF_AssaultPack_DZN"];
DZAI_Backpacks2 = DZAI_Backpacks2 + ["BAF_AssaultPack_DZN"];
DZAI_DefaultBackpacks = DZAI_DefaultBackpacks + ["BAF_AssaultPack_DZN"];	

_tmpArray = DZAI_gadgets select 1;	
_tmpArray set [1,0.005];				//Reduce probability of NVG (functional)
_tmpArray = DZAI_tools select 9;
_tmpArray set [1,0.005];				//Reduce probability of GPS (functional)

DZAI_tools = DZAI_tools + [["BrokenItemGPS",0.04],["BrokenNVGoggles",0.04],["BrokenItemRadio",0.02],["ItemSolder",0.01],["APSI",0.01]];	//Add Namalsk tools
DZAI_DefaultSkinLoot = DZAI_DefaultSkinLoot + ["Skin_Sniper1W_DZN","Skin_CamoWinter_DZN","Skin_CamoWinterW_DZN"];
DZAI_tempNVGs = false;	//Disable temporary NVG chance for DayZ Namalsk.

//Begin Markers
_this = createMarker ["ObjectA2_1", [4966.9224, 6722.8711]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_0 = _this;

_this = createMarker ["ObjectA2_3", [5049.21, 6527.749, -5.7220459e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_2 = _this;

_this = createMarker ["ObjectA2_2", [4889.707, 6724.2788]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_3 = _this;

_this = createMarker ["ObjectA2_4", [4989.4429, 6524.6143, -0.00012969971]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_6 = _this;

_this = createMarker ["ObjectA2_5", [4887.9893, 6678.5127, 3.8146973e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_7 = _this;

_this = createMarker ["CrashedC1301", [3184.2917, 7462.0552, 0.0001373291]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_10 = _this;

_this = createMarker ["CrashedC1302", [3197.7712, 7463.8721, 0.00011444092]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_11 = _this;

_this = createMarker ["CrashedC1304", [3151.9629, 7535.6792, -0.0001449585]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_13 = _this;

_this = createMarker ["CrashedC1303", [3195.2178, 7540.2441, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_14 = _this;

_this = createMarker ["CrashedC1304", [3129.2046, 7507.9668, 3.0517578e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_15 = _this;

_this = createMarker ["CrashedC1305", [3145.354, 7478.7124]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_16 = _this;

_this = createMarker ["CrashedC1306", [3179.199, 7524.3384, -8.392334e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_17 = _this;

_this = createMarker ["Vorkuta2", [6890.2822, 11335.761, -1.9073486e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_19 = _this;

_this = createMarker ["Vorkuta3", [6923.2754, 11286.305, 7.6293945e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_20 = _this;

_this = createMarker ["Vorkuta4", [6856.6094, 11400.171, 1.9073486e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_21 = _this;

_this = createMarker ["Vorkuta5", [6913.7783, 11451.955, 1.9073486e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_22 = _this;

_this = createMarker ["Vorkuta1", [6969.0005, 11397.274, 4.7683716e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_31 = _this;

_this = createMarker ["SebMarsh1", [6277.207, 9952.3008, -0.00023794174]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_43 = _this;

_this = createMarker ["SebMarsh2", [6266.2236, 9936.6738, 2.3365021e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_44 = _this;

_this = createMarker ["SebMarsh3", [6293.1318, 9936.4463, -5.7220459e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_45 = _this;

_this = createMarker ["SebMarsh4", [6294.5024, 9947.8506, 3.3378601e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_46 = _this;

_this = createMarker ["SebMarsh5", [6300.1924, 9913.585, 6.9141388e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_47 = _this;

_this = createMarker ["Seb1", [5860.083, 8620.4326, -2.6702881e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_50 = _this;

_this = createMarker ["Seb2", [5861.646, 8658.8887, 2.2888184e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_51 = _this;

_this = createMarker ["Seb3", [5761.1982, 8643.0635, 4.5776367e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_52 = _this;

_this = createMarker ["Seb4", [5831.4434, 8683.6885, 3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_53 = _this;

_this = createMarker ["Seb5", [5816.772, 8705.8164, 3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_54 = _this;

_this = createMarker ["SebMine1", [4960.9097, 8181.5693, 3.4332275e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_62 = _this;

_this = createMarker ["SebMine2", [4960.1816, 8128.9399, 1.1444092e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_63 = _this;

_this = createMarker ["SebMine3", [4996.6753, 8145.877, 1.5258789e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_64 = _this;

_this = createMarker ["SebMine4", [4994.6919, 8222.2051, 3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_65 = _this;

_this = createMarker ["SebMine5", [4904.0884, 8207.6416]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_66 = _this;

_this = createMarker ["Norinsk1", [3878.6819, 7502.2451]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_73 = _this;

_this = createMarker ["Norinsk2", [3989.6838, 7606.8359, 3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_75 = _this;

_this = createMarker ["Norinsk3", [3958.0471, 7546.7085, 3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_76 = _this;

_this = createMarker ["Norinsk4", [3879.8047, 7445.7739, -3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_77 = _this;

_this = createMarker ["Norinsk5", [3973.5703, 7583.6689, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_170 = _this;

_this = createMarker ["OldHosp1", [7319.019, 7965.3223, 1.5258789e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_97 = _this;

_this = createMarker ["OldHosp2", [7283.5967, 7940.4287]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_98 = _this;

_this = createMarker ["OldHosp3", [7237.4873, 7963.1348, 3.0517578e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_99 = _this;

_this = createMarker ["OldHosp4", [7301.2339, 7908.8413, 7.6293945e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_100 = _this;

_this = createMarker ["OldHosp5", [7332.3242, 8017.5762, -3.8146973e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_101 = _this;

_this = createMarker ["Tara1", [7268.625, 7016.7876, 1.5258789e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_119 = _this;

_this = createMarker ["Tara2", [7234.5288, 7045.7134, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_121 = _this;

_this = createMarker ["Tara3", [7247.0781, 7069.4111, -1.5258789e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_122 = _this;

_this = createMarker ["Tara4", [7279.5293, 7073.1455, -3.0517578e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_123 = _this;

_this = createMarker ["Tara5", [7287.0625, 7054.7998, -1.5258789e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_124 = _this;

_this = createMarker ["Harb1", [7820.6021, 7683.3228, 3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_130 = _this;

_this = createMarker ["Harb2", [7843.103, 7702.7246, 3.3378601e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_131 = _this;

_this = createMarker ["Harb3", [7841.3164, 7741.9927, -1.6212463e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_132 = _this;

_this = createMarker ["Harb4", [7837.7827, 7610.0864, 1.8119812e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_133 = _this;

_this = createMarker ["Harb5", [7869.4995, 7786.0303, 2.8610229e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_134 = _this;

_this = createMarker ["SAB1", [3532.2546, 6642.2847, -1.5258789e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_140 = _this;

_this = createMarker ["SAB2", [3577.9353, 6645.0054, -1.5258789e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_141 = _this;

_this = createMarker ["SAB3", [3582.9182, 6679.8647, 1.5258789e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_142 = _this;

_this = createMarker ["SAB4", [3551.7512, 6653.1172, 1.5258789e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_143 = _this;

_this = createMarker ["SAB5", [3541.7554, 6679.5747, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_145 = _this;

_this = createMarker ["Seraja1", [4154.833, 6646.3262]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_146 = _this;

_this = createMarker ["Seraja2", [4158.4116, 6708.4233, -3.0517578e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_147 = _this;

_this = createMarker ["Seraja3", [4199.1172, 6646.5317, 3.0517578e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_148 = _this;

_this = createMarker ["Seraja4", [4205.5298, 6617.8335, -6.1035156e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_149 = _this;

_this = createMarker ["Seraja5", [4144.2183, 6595.0176]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_150 = _this;

_this = createMarker ["Outskirts1", [7031.2642, 11073.132, -4.3869019e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_165 = _this;

_this = createMarker ["Outskirts2", [6857.4302, 10942.782, 4.3869019e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_166 = _this;

_this = createMarker ["Outskirts3", [7131.9741, 10849.471, -5.9127808e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_167 = _this;

_this = createMarker ["Outskirts4", [6853.063, 10819.712, -3.0517578e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_168 = _this;

_this = createMarker ["Outskirts5", [7203.0142, 10829.695, -3.3378601e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_169 = _this;

_this = createMarker ["Lub1", [4417.6191, 11039.309, -3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_171 = _this;

_this = createMarker ["Lub2", [4295.0586, 11038.771, -3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_172 = _this;

_this = createMarker ["Lub3", [4489.8462, 11286.414, -2.3841858e-007]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_173 = _this;

_this = createMarker ["Lub4", [4401.8081, 11208.507, -1.1205673e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_174 = _this;

_this = createMarker ["Lub5", [4511.0195, 10992.617, -2.4795532e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_176 = _this;
//End markers

//Begin Triggers
_this = createTrigger ["EmptyDetector", [4145.2739, 6654.9507, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Seraja Army Base (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,100,thisTrigger,['Seraja1','Seraja2','Seraja3','Seraja4','Seraja5'],2] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [3557.7988, 6671.5659]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Southern Army Base (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger,['SAB1','SAB2','SAB3','SAB4','SAB5'],2] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_2 = _this;

_this = createTrigger ["EmptyDetector", [3940.0078, 7536.5967]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Norinsk (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger,['Norinsk1','Norinsk2','Norinsk3','Norinsk4','Norinsk5'],1] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_4 = _this;

_this = createTrigger ["EmptyDetector", [4976.6655, 6619.644, 42.068932]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Object A2";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,['ObjectA2_1','ObjectA2_2','ObjectA2_3','ObjectA2_4','ObjectA2_5'],2,2] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_6 = _this;

_this = createTrigger ["EmptyDetector", [4845.8853, 6201.1484, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Brensk Railway Station";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_8 = _this;

_this = createTrigger ["EmptyDetector", [4070.5422, 9235.5088, 2.600769]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Western Army Checkpoint";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_10 = _this;

_this = createTrigger ["EmptyDetector", [4690.1934, 8916.7041, 5.2387733]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sebjan Warehouse";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_12 = _this;

_this = createTrigger ["EmptyDetector", [5727.0972, 9852.3496, -7.6293945e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sebjan dam";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_14 = _this;

_this = createTrigger ["EmptyDetector", [6485.832, 9293.6611, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sebjan Chemical Factory";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_16 = _this;

_this = createTrigger ["EmptyDetector", [5807.0181, 8676.9521, 12.870121]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sebjan (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger,['Seb1','Seb2','Seb3','Seb4','Seb5']] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_18 = _this;

_this = createTrigger ["EmptyDetector", [7293.3511, 7967.5581, 3.7465744]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Old Hospital (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger,['OldHosp1','OldHosp2','OldHosp3','OldHosp4','OldHosp5']] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_20 = _this;

_this = createTrigger ["EmptyDetector", [7799.0425, 7566.9746, 1.2397766e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Tara harbor (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger,['Harb1','Harb2','Harb3','Harb4','Harb5']] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_22 = _this;

_this = createTrigger ["EmptyDetector", [7046.0806, 5808.7622]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Old Sawmill";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_26 = _this;

_this = createTrigger ["EmptyDetector", [5986.1616, 6641.3848, -1.1444092e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Nitija Army Base";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_28 = _this;

_this = createTrigger ["EmptyDetector", [4997.793, 8127.748, -3.8146973e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sebjan Mine (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger,['SebMine1','SebMine2','SebMine3','SebMine4','SebMine5'],1] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_30 = _this;

_this = createTrigger ["EmptyDetector", [8199.6846, 10729.502]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Jalovisko";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_32 = _this;

_this = createTrigger ["EmptyDetector", [6949.3101, 10795.764, 1.335144e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Vorkuta Outskirts (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,3,100,thisTrigger,['Outskirts1','Outskirts2','Outskirts3','Outskirts4','Outskirts5']] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_34 = _this;

_this = createTrigger ["EmptyDetector", [6170.1294, 10791.009, 0.38125229]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Old Yard";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_36 = _this;

_this = createTrigger ["EmptyDetector", [4829.1992, 10839.983, 2.8610229e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Northern Army Base";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_38 = _this;

_this = createTrigger ["EmptyDetector", [4472.8857, 11208.37, -1.2159348e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Lubjansk (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,125,thisTrigger,['Lub1','Lub2','Lub3','Lub4','Lub5'],2] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_40 = _this;

_this = createTrigger ["EmptyDetector", [4407.7451, 10748.695]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Lubjansk South";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_42 = _this;

_this = createTrigger ["EmptyDetector", [6769.8472, 11320.711, 5.5010681]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Vorkuta Central";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_44 = _this;

_this = createTrigger ["EmptyDetector", [7668.0474, 8760.8672, 12.067543]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Nemsk Factory";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_46 = _this;

_this = createTrigger ["EmptyDetector", [7260.1699, 7052.3057, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Tara (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,100,thisTrigger,['Tara1','Tara2','Tara3','Tara4','Tara5']] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_48 = _this;

_this = createTrigger ["EmptyDetector", [6169.7852, 5737.0293, -9.5367432e-007]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Tara Marsh";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_58 = _this;

_this = createTrigger ["EmptyDetector", [6278.9634, 9930.498, -3.3378601e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sebjan Marsh (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger,['SebMarsh1','SebMarsh2','SebMarsh3','SebMarsh4','SebMarsh5']] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_60 = _this;

_this = createTrigger ["EmptyDetector", [8481.125, 10291.914]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Nemsk Barn";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_62 = _this;

_this = createTrigger ["EmptyDetector", [8896.6611, 10754.467, 9.5367432e-007]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Jalovisko Deerstands";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_64 = _this;

_this = createTrigger ["EmptyDetector", [5554.6465, 10344.664, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Lubjansk Bay";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_68 = _this;

_this = createTrigger ["EmptyDetector", [3173.5461, 7504.5532, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "CrashedC130 (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger,['CrashedC1301','CrashedC1302','CrashedC1303','CrashedC1304','CrashedC1305','CrashedC1306'],2] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_73 = _this;

_this = createTrigger ["EmptyDetector", [6943.7725, 11424.083]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Vorkuta (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger,['Vorkuta1','Vorkuta2','Vorkuta3','Vorkuta4','Vorkuta5'],1] call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_75 = _this;

_this = createTrigger ["EmptyDetector", [5777.3901, 10784.223, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Alakit";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_77 = _this;

_this = createTrigger ["EmptyDetector", [6767.2983, 11126.187, 20.099487]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Vorkuta Residential";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,0,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_80 = _this;

//End Triggers

//AI hostility to Bloodsuckers by decreasing their leader's rating (untested). Required because Bloodsuckers will aggro on AI.
sefik addRating -20000;

diag_log "Namalsk configuration loaded";

