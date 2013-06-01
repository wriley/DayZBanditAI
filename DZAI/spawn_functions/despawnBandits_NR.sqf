/*
	despawnBandits_NR version 0.08 (No respawn version)
	Usage: [thisTrigger] call despawnBandits_NR;
	Deletes all AI units spawned by a trigger once all players leave the trigger area, then creates a new trigger elsewhere while deleting the previous one. Adapted from Sarge AI.
	
*/
private ["_trigger","_grpArray","_isCleaning","_grpCount","_waitTime","_spawnCount"];
if (!isServer) exitWith {};							//Execute script only on server.

_trigger = _this select 0;							//Get the trigger object

_delTotal = 0;

_grpArray = _trigger getVariable ["GroupArray",[]];	//Find the groups spawned by the trigger. Or set an empty group array if none are found.
_isCleaning = _trigger getVariable ["isCleaning",nil];	//Find whether or not the trigger has been marked for cleanup, otherwise assume a cleanup has already happened.
_grpCount = count _grpArray;
//diag_log format ["DEBUG:: _grpCount is %1. _isCleaning is %2.",_grpCount,_isCleaning];
if ((_grpCount == 0) || (_isCleaning) || (isNil "_isCleaning")) exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Trigger's group array is empty, or a despawn script is already running. Exiting despawn script.";};};				//Exit script if the array has spawned no groups.

_trigger setVariable["isCleaning",true,false];		//Mark the trigger as being in a cleanup state so that subsequent requests to despawn for the same trigger will not run.
if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: No players remain in trigger area. Deleting spawned AI in %1 seconds.",DZAI_despawnWait];};
sleep DZAI_despawnWait;									//Wait some time before deleting units. (amount of time to allow units to exist when the trigger area has no players)

if (triggerActivated _trigger) exitWith {
	if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: A player has entered the trigger area. Cancelling despawn script.";}; //Exit script if trigger has been reactivated since _waitTime seconds has passed.
	_trigger setVariable ["isCleaning",false,false];	//Allow next despawn request.
};			

_isCleaning = _trigger getVariable ["isCleaning",nil];	//check if cleanup has already occured.
_spawnCount = _trigger getVariable ["spawnCount",nil];
if (isNil "_isCleaning") exitWith {diag_log "ERROR :: Trigger has nil isCleaning value. Trigger has already been cleaned?";};
if (isNil "_spawnCount") exitWith {diag_log "ERROR :: Trigger has nil spawnCount value. Trigger has already been cleaned?";};

{
	{deleteVehicle _x} forEach (units _x);			//Delete all units of each group.
	sleep 0.2;
	deleteGroup _x;									//Delete the group after its units are deleted.
} forEach _grpArray;

//Update active AI count
_spawnCount = _trigger getVariable ["spawnCount",0];
if (_spawnCount == 0) exitWith {diag_log "ERROR :: Spawncount is zero.";};
DZAI_numAIUnits = DZAI_numAIUnits - _spawnCount;

if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Relocating dynamic trigger.";};
0 = [1,'center',300,4500,DZAI_dynEquipType] spawn fnc_spawnTriggers_random; 	//Spawn a new trigger elsewhere on the map.
DZAI_curDynTrigs = (DZAI_curDynTrigs - 1);
DZAI_actDynTrigs = (DZAI_actDynTrigs - 1);
if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Despawned %1 AI in dynamic trigger area.",_spawnCount];};
deleteVehicle _trigger;										//Remove the old trigger.

true
