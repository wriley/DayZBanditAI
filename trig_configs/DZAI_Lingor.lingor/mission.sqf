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
  _this = _group_0 createUnit ["CDF_Soldier_AR", [4719.2432, 3765.7402, 0], [], 0, "CAN_COLLIDE"];
  _unit_0 = _this;
  _this setUnitAbility 0.60000002;
  if (true) then {_group_0 selectLeader _this;};
  if (true) then {selectPlayer _this;};
};

_this = createTrigger ["EmptyDetector", [1786.98, 596.24695]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Medlina";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [1188.6392, 703.38135]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Alma";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_2 = _this;

_this = createTrigger ["EmptyDetector", [657.39642, 1019.8361, 1.5258789e-005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Mercadio";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_4 = _this;

_this = createTrigger ["EmptyDetector", [668.66809, 1512.7637]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Zuela";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_6 = _this;

_this = createTrigger ["EmptyDetector", [1029.8649, 2043.1067]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Drassen";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_8 = _this;

_this = createTrigger ["EmptyDetector", [2104.4998, 1086.9586]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Verto";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_10 = _this;

_this = createTrigger ["EmptyDetector", [2721.5989, 1377.7301]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Rock Cafe";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_12 = _this;

_this = createTrigger ["EmptyDetector", [3270.4324, 1390.9686]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Ralon";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_14 = _this;

_this = createTrigger ["EmptyDetector", [3828.3474, 1467.4255]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Calamar";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_16 = _this;

_this = createTrigger ["EmptyDetector", [4196.0327, 1668.8202, 0.080739975]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sargento (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,['Sargento1','Sargento2','Sargento3','Sargento4','Sargento5']]call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_20 = _this;

_this = createTrigger ["EmptyDetector", [4705.125, 1870.5652, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Melana Resort";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_22 = _this;

_this = createTrigger ["EmptyDetector", [4041.6013, 2365.7727]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Bilbado";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_24 = _this;

_this = createTrigger ["EmptyDetector", [2982.6289, 3746.0688, 6.1199799]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_26 = _this;

_this = createTrigger ["EmptyDetector", [3536.1841, 3724.3757]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Research Lab 102";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_28 = _this;

_this = createTrigger ["EmptyDetector", [1907.5411, 4538.854]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Motodrom Rapido";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_30 = _this;

_this = createTrigger ["EmptyDetector", [882.18292, 4969.7598]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Regina Tributa";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_32 = _this;

_this = createTrigger ["EmptyDetector", [880.9198, 5574.8247, 3.8349648]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Benio";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_36 = _this;

_this = createTrigger ["EmptyDetector", [2786.8728, 5378.0957, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Vidora";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_38 = _this;

_this = createTrigger ["EmptyDetector", [3376.7754, 5193.8906, 5.9604645e-008]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Rosalia";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_40 = _this;

_this = createTrigger ["EmptyDetector", [4037.2544, 4985.3105]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Distrito Turistico";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_42 = _this;

_this = createTrigger ["EmptyDetector", [4701.647, 5015.4766]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Calapedro";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_44 = _this;

_this = createTrigger ["EmptyDetector", [4282.311, 4470.6416]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "San Arulco";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_46 = _this;

_this = createTrigger ["EmptyDetector", [3684.6152, 4458.5483]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Centro Esencia";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_48 = _this;

_this = createTrigger ["EmptyDetector", [3139.9341, 4594.6597]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Morada";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_50 = _this;

_this = createTrigger ["EmptyDetector", [4724.7114, 3164.7393]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Faunaverde";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_52 = _this;

_this = createTrigger ["EmptyDetector", [3580.6619, 2770.1504, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Montehofo";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_54 = _this;

_this = createTrigger ["EmptyDetector", [4837.292, 2677.4658, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Negrosa";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_56 = _this;

_this = createTrigger ["EmptyDetector", [5381.5337, 2141.0615, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Lagosa";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_58 = _this;

_this = createTrigger ["EmptyDetector", [5668.752, 3193.9785, -0.00015449524]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Prospero";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_60 = _this;

_this = createTrigger ["EmptyDetector", [6724.832, 3351.6597, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Victorin";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_62 = _this;

_this = createTrigger ["EmptyDetector", [6757.5962, 2742.5635, 1.4901161e-007]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Cafe Santiago";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_64 = _this;

_this = createTrigger ["EmptyDetector", [6815.2852, 2074.0981, 2.9927869]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Marcella";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_66 = _this;

_this = createTrigger ["EmptyDetector", [7481.1729, 1951.7023, -4.7683716e-007]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "El Villon";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_68 = _this;

_this = createTrigger ["EmptyDetector", [7635.5903, 2855.5254, 4.7683716e-007]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Monga-Tamba-Pachi";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_72 = _this;

_this = createTrigger ["EmptyDetector", [8344.5273, 2833.6694, 2.969995]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Palida";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_74 = _this;

_this = createTrigger ["EmptyDetector", [6068.6338, 1710.0781, 0.047464609]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Building";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_76 = _this;

_this = createTrigger ["EmptyDetector", [5834.3286, 4564.4883]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Corazon";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_78 = _this;

_this = createTrigger ["EmptyDetector", [6820.9502, 4760.1143]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Manteria";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_82 = _this;

_this = createTrigger ["EmptyDetector", [6638.6533, 4319.7192]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Sanvigado";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_84 = _this;

_this = createTrigger ["EmptyDetector", [7012.9639, 5903.3506]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Cafe Prada";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_86 = _this;

_this = createTrigger ["EmptyDetector", [6360.4697, 6009.6294]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Tres Palmas Inn";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_88 = _this;

_this = createTrigger ["EmptyDetector", [6811.6973, 6536.4175, 4.6562405]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Maruko";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [4,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_92 = _this;

_this = createTrigger ["EmptyDetector", [6194.25, 6733.0996]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Airport Terminal";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_94 = _this;

_this = createTrigger ["EmptyDetector", [8612.2471, 7818.9756]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Conoteta";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_98 = _this;

_this = createTrigger ["EmptyDetector", [8368.8955, 8807.5166, 2.9700069]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Cemarin";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_100 = _this;

_this = createTrigger ["EmptyDetector", [5205.4814, 6992.501, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "San Isabel";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_102 = _this;

_this = createTrigger ["EmptyDetector", [4364.9629, 6769.4038, 4.095047]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Research Lab 101";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_104 = _this;

_this = createTrigger ["EmptyDetector", [3689.5784, 6479.9902]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Aculto-Garibosa";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_106 = _this;

_this = createTrigger ["EmptyDetector", [3938.0479, 5961.0493, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Gayucca";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_108 = _this;

_this = createTrigger ["EmptyDetector", [4510.2466, 5792.0288]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Tucos";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_112 = _this;

_this = createTrigger ["EmptyDetector", [5194.457, 5560.1504, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Barracks";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [3,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_114 = _this;

_this = createTrigger ["EmptyDetector", [5402.2974, 5010.3179, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Checkpoint Oeste";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_116 = _this;

_this = createTrigger ["EmptyDetector", [3212.1772, 5937.606]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Fernando";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_118 = _this;

_this = createTrigger ["EmptyDetector", [2982.6782, 6508.2871]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "FOB Eddie";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_120 = _this;

_this = createTrigger ["EmptyDetector", [2805.8235, 6951.0005]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "FOB Eddie 2";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,2,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_122 = _this;

_this = createTrigger ["EmptyDetector", [3110.7537, 8027.1191]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Prison (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,['Prison1','Prison2','Prison3','Prison4','Prison5']]call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_124 = _this;

_this = createTrigger ["EmptyDetector", [4283.5151, 7499.082, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_126 = _this;

_this = createTrigger ["EmptyDetector", [1369.1008, 1354.0753, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Pintosa";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_128 = _this;

_this = createTrigger ["EmptyDetector", [609.86414, 4657.2119, -1.9073486e-006]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Villa Oscura";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,0,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_130 = _this;

_this = createTrigger ["EmptyDetector", [3950.9048, 4189.1797]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Old Dutch Castle";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_133 = _this;

_this = createTrigger ["EmptyDetector", [2797.0913, 5802.415, 0]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "Mairango";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,thisTrigger] call fnc_spawnBandits_bldgs;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_136 = _this;

_this = createMarker ["Prison1", [3041.4229, 8104.5732, 9.5367432e-007]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_0 = _this;

_this = createMarker ["Prison2", [3012.8645, 8033.4976, 5.7220459e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_1 = _this;

_this = createMarker ["Prison3", [3035.1382, 8016.5195]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_2 = _this;

_this = createMarker ["Prison4", [3093.5872, 8095.0024, -1.9073486e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_3 = _this;

_this = createMarker ["Prison5", [3036.9922, 8078.4106, 3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_4 = _this;

_this = createTrigger ["EmptyDetector", [6869.2939, 6409.1436]];
_this setTriggerArea [500, 500, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [30, 60, 90, true];
_this setTriggerText "PresidentePalace (Markers)";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,100,['Palace1','Palace2','Palace3','Palace4','Palace5']]call fnc_spawnBandits_markers;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_138 = _this;

_this = createMarker ["Palace1", [6906.1479, 6376.4399, -1.9073486e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_11 = _this;

_this = createMarker ["Palace2", [6906.2803, 6452.3936, -3.0517578e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_12 = _this;

_this = createMarker ["Palace3", [6848.0981, 6436.7783, -2.2888184e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_13 = _this;

_this = createMarker ["Palace4", [6848.4053, 6453.4707, -4.7683716e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_14 = _this;

_this = createMarker ["Palace5", [6905.2676, 6436.5586, -1.9073486e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_15 = _this;

_this = createMarker ["Sargento1", [4255.5874, 1715.239, 1.9073486e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_22 = _this;

_this = createMarker ["Sargento2", [4248.5918, 1450.2981]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_23 = _this;

_this = createMarker ["Sargento3", [4186.4541, 1479.3805, 3.8146973e-006]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_24 = _this;

_this = createMarker ["Sargento4", [4255.2549, 1594.6809, -1.335144e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_25 = _this;

_this = createMarker ["Sargento5", [4162.0854, 1648.361, 1.9073486e-005]];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
_marker_26 = _this;

processInitCommands;
runInitScript;
finishMissionInit;
