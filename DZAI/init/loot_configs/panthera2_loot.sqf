//Panthera Loot Configuration 0.07
private ["_modname"];
_modname = toLower format ["%1",DZAI_modName];

diag_log "Panthera loot tables loaded.";

DZAI_RiflesDefault0 = DZAI_RiflesDefault0 + DZAI_PistolsDefault0;
