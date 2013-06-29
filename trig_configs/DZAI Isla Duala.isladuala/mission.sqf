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
  _this = _group_0 createUnit ["CDF_Soldier_AR", [4325.8628, 4677.0156, 0], [], 0, "CAN_COLLIDE"];
  _unit_0 = _this;
  _this setUnitAbility 0.60000002;
  if (true) then {_group_0 selectLeader _this;};
  if (true) then {selectPlayer _this;};
};

_this = createTrigger ["EmptyDetector", [7069.0635, 8569.668]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_0 = _this;

_this = createTrigger ["EmptyDetector", [5766.4365, 8179.082, 3.0922403]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_2 = _this;

_this = createTrigger ["EmptyDetector", [6018.0889, 7591.2158]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_4 = _this;

_this = createTrigger ["EmptyDetector", [5552.4458, 7642.2339, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_6 = _this;

_this = createTrigger ["EmptyDetector", [6820.5537, 7584.5029, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_8 = _this;

_this = createTrigger ["EmptyDetector", [6807.4512, 7064.249, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_10 = _this;

_this = createTrigger ["EmptyDetector", [4419.8433, 6667.9907]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,0,250,thisTrigger,[],1,2] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_12 = _this;

_this = createTrigger ["EmptyDetector", [4131.6777, 6776.9385, 7.5758514]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,150,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_14 = _this;

_this = createTrigger ["EmptyDetector", [4098.2373, 7766.8223]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,150,thisTrigger,[],0] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_16 = _this;

_this = createTrigger ["EmptyDetector", [3835.1145, 7364.9854, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,150,thisTrigger,[],0] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_18 = _this;

_this = createTrigger ["EmptyDetector", [2950.7937, 7018.6011]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,200,thisTrigger,[],1,2] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_20 = _this;

_this = createTrigger ["EmptyDetector", [2224.6157, 6965.2109]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,150,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_22 = _this;

_this = createTrigger ["EmptyDetector", [1701.1782, 8263.5693, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_24 = _this;

_this = createTrigger ["EmptyDetector", [1229.1614, 8805.7842]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,175,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_26 = _this;

_this = createTrigger ["EmptyDetector", [1072.98, 8413.8809]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,200,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_28 = _this;

_this = createTrigger ["EmptyDetector", [863.87537, 9030.4551]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,2,175,thisTrigger,[],2] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_30 = _this;

_this = createTrigger ["EmptyDetector", [860.87988, 7986.5264]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,200,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_32 = _this;

_this = createTrigger ["EmptyDetector", [1343.1869, 7728.1333, 6.6202183]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,2,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_34 = _this;

_this = createTrigger ["EmptyDetector", [614.32727, 7184.1743, -3.8146973e-006]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,0,225,thisTrigger,[],1,2] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_36 = _this;

_this = createTrigger ["EmptyDetector", [1310.6547, 6629.6211]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,150,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_38 = _this;

_this = createTrigger ["EmptyDetector", [4573.3926, 8147.7881]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_40 = _this;

_this = createTrigger ["EmptyDetector", [2102.1277, 5786.9404]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,150,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_42 = _this;

_this = createTrigger ["EmptyDetector", [2100.9089, 6115.0566]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,150,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_44 = _this;

_this = createTrigger ["EmptyDetector", [2550.9653, 6317.8345]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,2,150,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_46 = _this;

_this = createTrigger ["EmptyDetector", [2588.8691, 5813.2559, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,2,150,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_48 = _this;

_this = createTrigger ["EmptyDetector", [1391.9092, 4827.4482]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,175,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_50 = _this;

_this = createTrigger ["EmptyDetector", [1415.1824, 4212.1147]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_52 = _this;

_this = createTrigger ["EmptyDetector", [2134.0449, 3747.7202, 1.9073486e-006]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_54 = _this;

_this = createTrigger ["EmptyDetector", [3206.3882, 3882.2759]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_56 = _this;

_this = createTrigger ["EmptyDetector", [3527.4512, 3089.8181]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_58 = _this;

_this = createTrigger ["EmptyDetector", [3125.0925, 2501.6694, 2.9124184]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_60 = _this;

_this = createTrigger ["EmptyDetector", [3558.1499, 2611.4575]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_62 = _this;

_this = createTrigger ["EmptyDetector", [3966.3867, 2457.2327]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_64 = _this;

_this = createTrigger ["EmptyDetector", [4225.0454, 2137.0171, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_66 = _this;

_this = createTrigger ["EmptyDetector", [4248.8628, 1547.5615, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_68 = _this;

_this = createTrigger ["EmptyDetector", [3400.7737, 1491.1743, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_70 = _this;

_this = createTrigger ["EmptyDetector", [2533.8975, 1798.625, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_72 = _this;

_this = createTrigger ["EmptyDetector", [1479.1549, 1469.693]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_74 = _this;

_this = createTrigger ["EmptyDetector", [1881.7286, 1465.6655]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_76 = _this;

_this = createTrigger ["EmptyDetector", [1390.5886, 656.09509]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_78 = _this;

_this = createTrigger ["EmptyDetector", [2147.4277, 833.31445]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_80 = _this;

_this = createTrigger ["EmptyDetector", [2689.5605, 1327.381]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_82 = _this;

_this = createTrigger ["EmptyDetector", [1807.9236, 2234.9602]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_84 = _this;

_this = createTrigger ["EmptyDetector", [2603.1567, 3554.3096, 0.080730438]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_86 = _this;

_this = createTrigger ["EmptyDetector", [5313.6284, 3443.3875, 3.5966721]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_88 = _this;

_this = createTrigger ["EmptyDetector", [5949.8818, 3355.0132, 6.6718788]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_90 = _this;

_this = createTrigger ["EmptyDetector", [6259.168, 3077.2568, -2.7656555e-005]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_92 = _this;

_this = createTrigger ["EmptyDetector", [5447.4229, 2539.6992]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_94 = _this;

_this = createTrigger ["EmptyDetector", [6379.5054, 2333.7598, 2.8518009]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_96 = _this;

_this = createTrigger ["EmptyDetector", [6128.4883, 1254.9178, -1.9073486e-005]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_98 = _this;

_this = createTrigger ["EmptyDetector", [6705.4351, 4188.5449, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_100 = _this;

_this = createTrigger ["EmptyDetector", [7507.7754, 3148.8276, 4.6916485]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_102 = _this;

_this = createTrigger ["EmptyDetector", [7428.209, 1597.6958, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_104 = _this;

_this = createTrigger ["EmptyDetector", [8589.6025, 1157.0776, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_106 = _this;

_this = createTrigger ["EmptyDetector", [8997.6006, 1358.9668, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_108 = _this;

_this = createTrigger ["EmptyDetector", [8501.2422, 3279.5652, 3.1227856]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_110 = _this;

_this = createTrigger ["EmptyDetector", [8198.9375, 5583.6768, 8.006115]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_112 = _this;

_this = createTrigger ["EmptyDetector", [8740.4648, 5399.1104]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_114 = _this;

_this = createTrigger ["EmptyDetector", [8677.3848, 6527.9453]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_116 = _this;

_this = createTrigger ["EmptyDetector", [8471.4863, 7130.4678, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_118 = _this;

_this = createTrigger ["EmptyDetector", [9401.6738, 8863.3311, 5.7950001]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_120 = _this;

_this = createTrigger ["EmptyDetector", [8607.8311, 9021.7012, 0]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_122 = _this;

_this = createTrigger ["EmptyDetector", [5758.5371, 6104.1953]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_124 = _this;

_this = createTrigger ["EmptyDetector", [5095.6792, 5162.3945, 3.3981285]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,200,thisTrigger,[],1,2] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_126 = _this;

_this = createTrigger ["EmptyDetector", [5209.27, 4590.9551]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,200,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_128 = _this;

_this = createTrigger ["EmptyDetector", [5859.8735, 4757.6616, 1.6802704]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,175,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_130 = _this;

_this = createTrigger ["EmptyDetector", [3926.9272, 3643.1035]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,125,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_132 = _this;

_this = createTrigger ["EmptyDetector", [3699.9417, 6249.3818]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,175,thisTrigger,[],0] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_134 = _this;

_this = createTrigger ["EmptyDetector", [2862.1208, 6181.375]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [2,1,200,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_136 = _this;

_this = createTrigger ["EmptyDetector", [3506.4365, 5702.2222, 6.2364159]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [0,1,150,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_138 = _this;

_this = createTrigger ["EmptyDetector", [6472.6265, 4921.207]];
_this setTriggerArea [600, 600, 0, false];
_this setTriggerActivation ["ANY", "PRESENT", true];
_this setTriggerTimeout [20, 25, 30, true];
_this setTriggerText "DZAI Trigger";
_this setTriggerStatements ["{isPlayer _x} count thisList > 0;", "nul = [1,1,175,thisTrigger,[],1] call fnc_spawnBandits;", "nul = [thisTrigger] spawn fnc_despawnBandits;"];
_trigger_144 = _this;

_this = createMarker ["X", [5595.2988, 10009.162, -5.9604645e-007]];
_this setMarkerShape "ELLIPSE";
_this setMarkerType "Flag";
_this setMarkerColor "ColorRed";
_this setMarkerBrush "Solid";
_this setMarkerSize [175, 175];
_marker_21 = _this;

processInitCommands;
runInitScript;
finishMissionInit;
