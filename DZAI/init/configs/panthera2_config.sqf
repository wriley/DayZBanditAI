//Panthera Configuration 0.06

_this = createTrigger ["EmptyDetector", [5976.8677, 898.83728]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Zappado";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [6605.3662, 558.7854]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Cato";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_2 = _this;

_this = createTrigger ["EmptyDetector", [6728.4736, 1554.903, 3.3663206]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_6 = _this;

_this = createTrigger ["EmptyDetector", [7021.6294, 1115.6555]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Foxhill";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_8 = _this;

_this = createTrigger ["EmptyDetector", [6501.6294, 2101.2886]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "FOB Brown";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_10 = _this;

_this = createTrigger ["EmptyDetector", [4424.6841, 2085.0059]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sela Pri Volcah";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_12 = _this;

_this = createTrigger ["EmptyDetector", [5351.9053, 2336.7036, 2.3841858e-007]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Klavze-Kneza";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_16 = _this;

_this = createTrigger ["EmptyDetector", [4685.9907, 2601.1606]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Tolmin-Podljubinj";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_18 = _this;

_this = createTrigger ["EmptyDetector", [3401.0903, 3363.5356]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Kobarid-Idrsko-Ladra-Dreznica";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_20 = _this;

_this = createTrigger ["EmptyDetector", [2577.917, 3409.4309]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "FOD Boriana";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_22 = _this;

_this = createTrigger ["EmptyDetector", [3059.854, 4487.9453]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Bovec";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_24 = _this;

_this = createTrigger ["EmptyDetector", [2349.0977, 5183.9561, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sella Nevea";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_26 = _this;

_this = createTrigger ["EmptyDetector", [3184.2334, 5881.1704]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Cave del Predil";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_28 = _this;

_this = createTrigger ["EmptyDetector", [3293.145, 6656.562]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Tarvisio";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_30 = _this;

_this = createTrigger ["EmptyDetector", [4252.4546, 6479.8477]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Fusine-Ratece";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_32 = _this;

_this = createTrigger ["EmptyDetector", [5027.188, 6414.1445]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Podkoren-KranjskaGora";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_34 = _this;

_this = createTrigger ["EmptyDetector", [6380.8013, 6191.4937, -4.196167e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Belca-Dovje-Mojstrana";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_36 = _this;

_this = createTrigger ["EmptyDetector", [7382.3384, 5790.9922]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Jesenice";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_38 = _this;

_this = createTrigger ["EmptyDetector", [7995.8252, 5384.375, 0.00017166138]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "VariousTowns";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_40 = _this;

_this = createTrigger ["EmptyDetector", [7760.3237, 4960.8774]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Bled";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_42 = _this;

_this = createTrigger ["EmptyDetector", [8456.6641, 4750.8101, 9.3561516]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Radovljica";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_46 = _this;

_this = createTrigger ["EmptyDetector", [6222.4888, 7260.4292]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Senzatoka";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_48 = _this;

_this = createTrigger ["EmptyDetector", [7078.8726, 7144.1992]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Kleinfort-Freckle";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_51 = _this;

_this = createTrigger ["EmptyDetector", [5108.0947, 7271.9878]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Hoopsberg";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_53 = _this;

_this = createTrigger ["EmptyDetector", [4263.626, 7357.5322]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Arnoldstein";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_56 = _this;

_this = createTrigger ["EmptyDetector", [7447.7817, 4569.2896]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "BohBela-Obrne";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_58 = _this;

_this = createTrigger ["EmptyDetector", [6309.1235, 3856.6101, 7.1597528]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "VariousTowns";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_60 = _this;

_this = createTrigger ["EmptyDetector", [6508.4888, 4633.6953]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "MrzliStudenec";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_62 = _this;

_this = createTrigger ["EmptyDetector", [8426.0361, 3166.3018, 5.815485]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Zelezniki";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_64 = _this;

_this = createTrigger ["EmptyDetector", [8599.7998, 4254.0479]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Kamna Gorica";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_66 = _this;

_this = createTrigger ["EmptyDetector", [7869.9702, 1439.1388]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "New Skooma";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_68 = _this;

_this = createTrigger ["EmptyDetector", [7866.7837, 1977.5895]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Smugglers Den";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_70 = _this;

_this = createTrigger ["EmptyDetector", [5684.5093, 6365.6538]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Gozd Mar.";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_72 = _this;

_this = createTrigger ["EmptyDetector", [8449.1162, 2199.146]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Unnamed Military";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_74 = _this;

_this = createTrigger ["EmptyDetector", [2483.3481, 4045.9131]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Zaga-Srpenica";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_77 = _this;

_this = createTrigger ["EmptyDetector", [6850.6919, 4182.4834]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Koprivnik-Gorjuse-Nomenj";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_80 = _this;

_this = createTrigger ["EmptyDetector", [7196.7983, 3137.9199]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sorica";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_82 = _this;

_this = createTrigger ["EmptyDetector", [7345.6938, 1396.5796, 4.7683716e-007]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Rockburn";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_84 = _this;

_this = createTrigger ["EmptyDetector", [6918.874, 782.67761, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Asaband Army Base";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_87 = _this;

_this = createTrigger ["EmptyDetector", [4794.082, 1893.0115]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Taff Grove";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_90 = _this;

_this = createTrigger ["EmptyDetector", [4773.4854, 1549.2499]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Ramon's Villa";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_93 = _this;

_this = createTrigger ["EmptyDetector", [5113.3325, 1688.8153]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Ramon's Villa 2";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_96 = _this;

_this = createTrigger ["EmptyDetector", [5837.4697, 2345.4644]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Koritnica";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_99 = _this;

_this = createTrigger ["EmptyDetector", [4828.8105, 2199.0718]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Modrej-MostnaSoci-Baca";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_102 = _this;

_this = createTrigger ["EmptyDetector", [3343.4146, 4902.0713]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Kluze Fortress";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_105 = _this;

_this = createTrigger ["EmptyDetector", [3172.1848, 6304.4653, 0.45965576]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Riofreddo";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_108 = _this;

_this = createTrigger ["EmptyDetector", [3511.5696, 5482.8555]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Strmec-LogPodMangartom";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_111 = _this;

_this = createTrigger ["EmptyDetector", [4768.561, 6838.5864, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Podkoren-KranjskaGora";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,0,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_114 = _this;

_this = createTrigger ["EmptyDetector", [8676.5605, 5040.9673]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Begunje";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,1] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_118 = _this;

diag_log "Panthera configuration loaded";
