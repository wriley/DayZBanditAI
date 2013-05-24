//dayz_ai_initialize 0.07

//Optionally replace DayZ's zombie spawning scripts with dummy scripts if zombies are disabled in dayz_ai_variables.
if (!DZAI_zombiesEnabled) then {
	zombie_generate = compile preprocessFile "DZAI\compile\zombie_generate.sqf";
	wild_spawnZombies = compile preprocessFile "DZAI\compile\wild_spawnZombies.sqf";
};
