//AIKilled Version 0.06
//Updates current live AI count, adds loot to AI corpse if killed by a player, reveals the killer to the victim's group.
private["_weapongrade","_victim","_killer","_unitGroup"];
_victim = _this select 0;
_killer = _this select 1;

DZAI_numAIUnits = (DZAI_numAIUnits - 1);
if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI killed. %1 AI units left.",DZAI_numAIUnits];};

_unitGroup = group _victim;
if ((random 1) < DZAI_revealChance) then {_unitGroup reveal [_killer,4];};

if (!isPlayer _killer) exitWith {};

_weapongrade = [DZAI_weaponGrades,DZAI_gradeChances1] call fnc_selectRandomWeighted;	//For pistols, calculate weapongrade using default grade chances
if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI killed by player. Generating loot with weapongrade %1 (fn_banditAIKilled).",_weapongrade];};
[_victim, _weapongrade] call fnc_unitSelectPistol;				// Add sidearm
[_victim] call fnc_unitConsumables;								// Add food, medical, misc, skin
[_victim] call fnc_unitTools;									// Add tools and gadget
