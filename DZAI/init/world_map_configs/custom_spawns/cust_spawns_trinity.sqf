/*
	DZAI Custom Spawn Function
	
	Description: An easy-to-use function for server admins to create AI spawns at specific locations.
	
 
	
	Explanation of DZAI_spawn:
	
	[
		"dzaicustomspawntest",	//This is the marker name to be used as the patrol and spawning area.
		2, 						//This trigger will spawn a group of 2 AI units.
		1,						//AI spawned by this trigger will have Weapon Grade level 1 (see below for explanation of Weapon Grade)
		true					//(Optional) Respawn option. Set "true" to allow for respawn after all units are killed. Set "false" to disable respawn, spawn area will self-delete after all units are killed.
	] call DZAI_spawn;
	
	Weapon Grade explanation:
	
	0: Approx 40% of maximum AI skill potential - weapon from Farm/Residential loot table.
	1: Approx 55% of maximum AI skill potential - weapon from Military loot table
	2: Approx 70% of maximum AI skill potential - weapon from MilitarySpecial (Barracks) loot table
	3: Approx 80% of maximum AI skill potential - weapon from HeliCrash loot table 
	
	Note: This trigger will create 2 respawning AI units with weapons from DayZ's military loot table.
	
*/

//----------------------------Add your custom spawn definitions below this line ----------------------------