//unitTools Version 0.06
/*
        Usage: [_unit] call fnc_unitTools;
		Generates tools for AI: Flashlight, Watch, Knife, Hatchet, Compass, Map, Toolbox, Matchbox, Military Flashlight, Rangefinder, GPS, NV Goggles
*/
        private ["_unit","_toolselect","_chance","_tool"];
        _unit = _this select 0;

		//diag_log format ["DEBUG :: Counted %1 tools in DZAI_tools.",(count DZAI_tools)];
		for "_i" from 0 to ((count DZAI_tools) - 1) do {
			_chance = ((DZAI_tools select _i) select 1);
			//diag_log format ["DEBUG :: %1 chance to add tool.",_chance];
			if ((random 1) < _chance) then {
				_tool = ((DZAI_tools select _i) select 0);
				_unit addWeapon _tool;
				//diag_log format ["DEBUG :: Added tool %1 as loot to AI corpse.",_tool];
			};
		};
		