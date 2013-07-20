activateAddons [
];

activateAddons [];
initAmbientLife;

_this = createCenter west;
_center_0 = _this;

_group_0 = createGroup _center_0;

_unit_0 = objNull;
if (true) then
{
  _this = _group_0 createUnit ["CDF_Soldier_Strela", [7789.9292, 8011.1216, 0], [], 0, "CAN_COLLIDE"];
  _unit_0 = _this;
  _this setUnitAbility 0.60000002;
  if (true) then {_group_0 selectLeader _this;};
  if (true) then {selectPlayer _this;};
};

_this = createMarker ["SA_Kamenka", [1870.8976, 2225.4915]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_0 = _this;

_this = createMarker ["SA_Kamarovo", [3659.0559, 2402.4307]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_2 = _this;

_this = createMarker ["SA_Balota", [4513.8584, 2402.8191]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_4 = _this;

_this = createMarker ["SA_BalotaAirfield", [4706.6235, 2495.4143]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_6 = _this;

_this = createMarker ["SA_Cherno1", [6973.4692, 2596.7183]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_8 = _this;

_this = createMarker ["SA_Cherno2", [6566.5137, 2412.969]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_10 = _this;

_this = createMarker ["SA_Elektro1", [10186.388, 1936.0364, 3.4404879]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_12 = _this;

_this = createMarker ["SA_Elektro2", [10476.077, 2412.2297, 9.6632004]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_14 = _this;

_this = createMarker ["SA_Pusta", [9164.4277, 3832.1824]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_16 = _this;

_this = createMarker ["SA_Kamyshovo", [12088.244, 3527.2944, 9.5367432e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_18 = _this;

_this = createMarker ["SA_Tulga", [12855.01, 4457.4199, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_20 = _this;

_this = createMarker ["SA_Msta", [11299.008, 5460.605, 2.91008]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_22 = _this;

_this = createMarker ["SA_Solnichniy", [13380.794, 6244.5244]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_24 = _this;

_this = createMarker ["SA_Solnichniy Factory", [13054.416, 7042.6616]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_26 = _this;

_this = createMarker ["SA_Orlovets", [12161.262, 7288.5391, -0.00061035156]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_28 = _this;

_this = createMarker ["SA_Nizhnoye", [12951.086, 8085.335]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_30 = _this;

_this = createMarker ["SA_Berezino1", [11940.036, 9078.8213]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_32 = _this;

_this = createMarker ["SA_Berezino2", [12711.64, 9508.8379, -2.6702881e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_34 = _this;

_this = createMarker ["SA_Berezino3", [12928.554, 10046.056, 11.137758]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_36 = _this;

_this = createMarker ["SA_Khelm", [12318.547, 10812.334]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_38 = _this;

_this = createMarker ["SA_NEAF", [11988.115, 12497.066]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_40 = _this;

_this = createMarker ["SA_Krasnostav", [11130.03, 12335.65, 9.50177]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_42 = _this;

_this = createMarker ["SA_Gvozdno", [8710.1924, 11791.018, -3.0517578e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_44 = _this;

_this = createMarker ["SA_Grishino", [6003.6455, 10296.365]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_46 = _this;

_this = createMarker ["SA_NWAF1", [4673.8091, 10449.009]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_48 = _this;

_this = createMarker ["SA_NWAF2", [4760.895, 10160.055, 0.080749512]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_50 = _this;

_this = createMarker ["SA_NWAF3", [4607.541, 9625.1084]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_52 = _this;

_this = createMarker ["SA_Lopatino", [2743.1543, 9997.4131]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_54 = _this;

_this = createMarker ["SA_Vybor", [3826.7798, 8926.0244, 8.6271362]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_56 = _this;

_this = createMarker ["SA_Kabanino", [5366.3472, 8591.8545, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_58 = _this;

_this = createMarker ["SA_StarySobor", [6112.3901, 7735.8423]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_60 = _this;

_this = createMarker ["SA_NovySobor", [7076.6089, 7683.4829]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_62 = _this;

_this = createMarker ["SA_Gulglovo", [8457.4629, 6688.627, 4.7903137]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_64 = _this;

_this = createMarker ["SA_Vyshnoye", [6543.8091, 6106.0352]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_66 = _this;

_this = createMarker ["SA_Mogilevka", [7577.5776, 5111.8057]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_68 = _this;

_this = createMarker ["SA_Staroye", [10121.785, 5479.5034, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_70 = _this;

_this = createMarker ["SA_Kozlovka", [4464.2275, 4616.3687]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_72 = _this;

_this = createMarker ["SA_Nadezhdino", [5848.8809, 4707.165]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_74 = _this;

_this = createMarker ["SA_Pulkovo", [4930.3384, 5613.7847, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_76 = _this;

_this = createMarker ["SA_Pogorevka", [4486.5034, 6420.5313, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_78 = _this;

_this = createMarker ["SA_Rogovo", [4781.4141, 6797.9297]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_80 = _this;

_this = createMarker ["SA_Pustoshka", [3066.6545, 7942.9028, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_82 = _this;

_this = createMarker ["SA_Myshkino", [1986.5758, 7351.6929, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_84 = _this;

_this = createMarker ["SA_Sosnovka", [2529.2295, 6347.8228]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_86 = _this;

_this = createMarker ["SA_Zelenogorsk", [2743.7463, 5288.1021]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_88 = _this;

_this = createMarker ["SA_Pavlovo", [1699.3744, 3839.5432]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_90 = _this;

_this = createMarker ["SA_Bor", [3336.4529, 3921.7053, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_92 = _this;

_this = createMarker ["SA_Drozhino", [3411.4346, 4930.8711, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_94 = _this;

_this = createMarker ["SA_GreenMountain", [3734.5662, 5990.0493, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_96 = _this;

_this = createMarker ["SA_Gorka", [9572.3516, 8847.8584]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_98 = _this;

_this = createMarker ["SA_Dubrovka", [10420.348, 9844.5205, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_100 = _this;

_this = createMarker ["SA_DubrovkaNW", [10007.653, 10376.338]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_102 = _this;

_this = createMarker ["SA_Polana", [10709.08, 8055.9419, 4.4793243]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_104 = _this;

_this = createMarker ["SA_Dolina", [11229.258, 6583.4165]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_106 = _this;

_this = createMarker ["SA_Shakhovka", [9654.4688, 6562.8745]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_108 = _this;

_this = createMarker ["SA_Skalisty", [13523.106, 2854.7144]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_110 = _this;

_this = createMarker ["SA_Rog", [11250.809, 4274.082]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_112 = _this;

_this = createMarker ["SA_ThreeValleys", [13256.356, 5432.5425, 4.7683716e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_114 = _this;

_this = createMarker ["SA_DevilsCastle", [6894.6455, 11438.785]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_116 = _this;

_this = createMarker ["SA_Zub", [6551.4741, 5595.6704]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_118 = _this;

_this = createMarker ["SA_OrlovetsFactory", [11458.502, 7483.2754, 12.369965]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_120 = _this;

_this = createMarker ["SA_Dolina-Solnichniy", [12215.833, 6270.9868, 3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_122 = _this;

_this = createMarker ["SA_Cherno3", [6490.1133, 2778.8921, -7.6293945e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_124 = _this;

_this = createMarker ["SA_Elektro3", [10456.71, 2247.2095]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_126 = _this;

_this = createMarker ["SA_Cherno4", [6677.4395, 2585.647]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_128 = _this;

_this = createMarker ["SA_NWAF4", [4308.2876, 10658.527]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_130 = _this;

_this = createMarker ["SA_Berezino4", [12294.76, 9564.5117, 9.5367432e-007]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_132 = _this;

_this = createMarker ["SA_NWAF5", [4763.522, 10760.788, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_134 = _this;

_this = createMarker ["SA_NWAF6", [4117.4473, 11175.042, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_136 = _this;

_this = createMarker ["SA_NWAF7", [4246.9204, 10386.154, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_138 = _this;

_this = createMarker ["SA_NWAF8", [5222.3984, 9780.6406, 0]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_140 = _this;

processInitCommands;
runInitScript;
finishMissionInit;
