//unitTools Version 0.04
/*
        Usage: [_unit] call fnc_unitTools;
		Generates tools for AI: Flashlight, Watch, Knife, Hatchet, Compass, Map, Toolbox, Matchbox, Military Flashlight, Rangefinder, GPS, NV Goggles
*/
        private ["_unit","_toolselect","_chance","_tool"];
        _unit = _this select 0;

		/*DZAI 0.06
		_toolselect = ((count DZAI_toolChances) - 1);
		for "_i" from 0 to _toolselect do {
			if ((random 1) < (DZAI_toolChances select _i)) then {_unit addWeapon (DZAI_DefaultTools select _i);};
		};
		*/
		
		//DZAI 0.07
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
		