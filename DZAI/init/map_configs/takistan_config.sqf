//Takistan Configuration 0.07

_this = createTrigger ["EmptyDetector", [2025.0662, 348.04688, 0.68896484]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Landay";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [3599.5557, 1262.9868, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Ahmaday";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_2 = _this;

_this = createTrigger ["EmptyDetector", [4440.0664, 667.60712]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "ChakChak";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_4 = _this;

_this = createTrigger ["EmptyDetector", [3752.0554, 4478.8857]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Sakhe";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_6 = _this;

_this = createTrigger ["EmptyDetector", [3321.8599, 3797.0449]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Sakhe2";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_8 = _this;

_this = createTrigger ["EmptyDetector", [2558.2734, 5052.7573, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Jilavur";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_10 = _this;

_this = createTrigger ["EmptyDetector", [1538.7018, 5681.293, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Khushab";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_12 = _this;

_this = createTrigger ["EmptyDetector", [1499.1563, 3609.7861, 5.2146301]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Shukurkalay";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_14 = _this;

_this = createTrigger ["EmptyDetector", [599.96484, 2825.6133, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Chaman";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_16 = _this;

_this = createTrigger ["EmptyDetector", [1009.7563, 3189.5881, 1.3997345]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Chaman2";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_18 = _this;

_this = createTrigger ["EmptyDetector", [2005.2396, 7663.9365]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Mulladost";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_20 = _this;

_this = createTrigger ["EmptyDetector", [3675.8477, 8613.0322]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Gospandi";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_22 = _this;

_this = createTrigger ["EmptyDetector", [3237.1658, 8137.0254]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Gospandi2";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_24 = _this;

_this = createTrigger ["EmptyDetector", [4596.2383, 9436.0664, 4.9902496]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Lalezar";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_26 = _this;

_this = createTrigger ["EmptyDetector", [3084.9421, 9907.7158, -3.8146973e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Nagara";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_28 = _this;

_this = createTrigger ["EmptyDetector", [4208.9487, 10856.237, 1.1444092e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Nagara OilfieldEast";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_30 = _this;

_this = createTrigger ["EmptyDetector", [4167.4307, 11781.497, 3.8146973e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Shamali";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_32 = _this;

_this = createTrigger ["EmptyDetector", [5762.7471, 11210.347, 7.6293945e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Rasman Military1";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_34 = _this;

_this = createTrigger ["EmptyDetector", [6288.9844, 11246.689, -7.6293945e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Rasman";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_36 = _this;

_this = createTrigger ["EmptyDetector", [6036.7646, 11697.381, 7.6293945e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Rasman Military2";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_38 = _this;

_this = createTrigger ["EmptyDetector", [6842.2051, 12252.953, 1.1444092e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Safid Ab";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_40 = _this;

_this = createTrigger ["EmptyDetector", [6029.501, 10534.293, 7.6293945e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Rasman South";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_42 = _this;

_this = createTrigger ["EmptyDetector", [5677.271, 9933.1035, 6.8212051]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Rasman-Bastam";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_44 = _this;

_this = createTrigger ["EmptyDetector", [5563.7549, 9318.4072, 7.6293945e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Bastam North";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_46 = _this;

_this = createTrigger ["EmptyDetector", [5640.9932, 8909.7793, -1.5258789e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Bastam";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_48 = _this;

_this = createTrigger ["EmptyDetector", [6783.1826, 8895.7295, -7.6293945e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Bastam East";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_50 = _this;

_this = createTrigger ["EmptyDetector", [8281.1348, 7781.0781, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Imarat";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_52 = _this;

_this = createTrigger ["EmptyDetector", [9130.7549, 6758.9233, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Garmarud";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_54 = _this;

_this = createTrigger ["EmptyDetector", [10902.553, 6358.4922]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Garmsar";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_56 = _this;

_this = createTrigger ["EmptyDetector", [10351.353, 6439.2822]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "GarmsarMilitary";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,2,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_60 = _this;

_this = createTrigger ["EmptyDetector", [11830.018, 2589.0579, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Hazar Bagh";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_62 = _this;

_this = createTrigger ["EmptyDetector", [10974.319, 2452.8206]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Chardarakht East";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_64 = _this;

_this = createTrigger ["EmptyDetector", [10201.649, 2379.0244, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Chardarakht West";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_66 = _this;

_this = createTrigger ["EmptyDetector", [9237.1113, 1841.6443, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Jaza East";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_68 = _this;

_this = createTrigger ["EmptyDetector", [8752.9492, 1864.3501, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Jaza West";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_70 = _this;

_this = createTrigger ["EmptyDetector", [8533.5645, 2422.5449, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Loy Manara";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_72 = _this;

_this = createTrigger ["EmptyDetector", [8215.832, 2114.9724]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Airfield";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_74 = _this;

_this = createTrigger ["EmptyDetector", [7482.0273, 1781.0944, -3.0517578e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Airfield East";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_76 = _this;

_this = createTrigger ["EmptyDetector", [7048.9297, 1016.6519, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Town";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_78 = _this;

_this = createTrigger ["EmptyDetector", [6532.6182, 2038.4324, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Sultansafe";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_80 = _this;

_this = createTrigger ["EmptyDetector", [5995.501, 1228.5767]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Huzrutimam";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_82 = _this;

_this = createTrigger ["EmptyDetector", [8873.9883, 5310.0181, 3.7972412]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Timurkalay";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_84 = _this;

_this = createTrigger ["EmptyDetector", [6089.6948, 5632.6055]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Anar";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_86 = _this;

_this = createTrigger ["EmptyDetector", [6815.4111, 6110.4937, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "SmallTown";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_88 = _this;

_this = createTrigger ["EmptyDetector", [5213.1387, 6116.064]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Feruz Abad";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_90 = _this;

_this = createTrigger ["EmptyDetector", [5301.9639, 4759.9985, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Kakaru";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_92 = _this;

_this = createTrigger ["EmptyDetector", [1790.4332, 11798.849, 0.42770386]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Nur";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_94 = _this;

_this = createTrigger ["EmptyDetector", [9853.1455, 11435.367, 7.6293945e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Zavarak";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_96 = _this;

_this = createTrigger ["EmptyDetector", [10486.358, 10976.697]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Zavarak2";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_98 = _this;

_this = createTrigger ["EmptyDetector", [12308.616, 11093.223, 1.5258789e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "KarachinarNorth";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_100 = _this;

_this = createTrigger ["EmptyDetector", [12296.874, 10421.936, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Karachinar";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_102 = _this;

_this = createTrigger ["EmptyDetector", [11510.062, 8340.0977]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 40, 60, true];
_this setTriggerText "Ravanay";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_104 = _this;

diag_log "Takistan configuration loaded";
