//dayz_ai_initialize 0.07

//Enable/Disable Zombies, Zombie Hostility
DZAI_zombieEnemy = true;									//Enable or disable AI hostility to zombies. If enabled, AI will attack zombies. (default: true)
DZAI_zombiesEnabled = true;									//Enable or disable zombie spawns (default: true)

if (!isServer) then {
	call compile preprocessFileLineNumbers "DZAI\init\dzai_initclient.sqf";				//Load DayZ AI Bandit Module
};
if (isServer) then {
	call compile preprocessFileLineNumbers "DZAI\init\dzai_initserver.sqf";				//Load DayZ AI Bandit Module
};