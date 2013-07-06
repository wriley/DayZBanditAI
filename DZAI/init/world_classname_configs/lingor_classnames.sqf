/*
	Lingor Classname Configuration
	
	Last updated:
	
*/

private ["_modname","_newItems"];
_modname = toLower format ["%1",DZAI_modName];

switch (DZAI_modName) do {
	case "epoch":
	{
		#include "mod_configs\epoch_classnames.sqf"
	};
	case default
	{
		diag_log "DayZ Lingor classnames loaded.";
	};
};
