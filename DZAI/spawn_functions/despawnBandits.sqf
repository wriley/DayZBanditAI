/*
	despawnBandits version 0.08
	Usage: [thisTrigger] call despawnBandits;
	Deletes all AI units spawned by a trigger once all players leave the trigger area. Adapted from Sarge AI.
	
*/
private ["_trigger","_grpArray","_isCleaning","_grpCount","_waitTime"];
if (!isServer) exitWith {};							//Execute script only on server.

_trigger = _this select 0;							//Get the trigger object

_grpArray = _trigger getVariable ["GroupArray",[]];	//Find the groups spawned by the trigger.
_isCleaning = _trigger getVariable ["isCleaning",nil];	//Find whether or not the trigger has been marked for cleanup, otherwise assume a cleanup has already happened.
_grpCount = count _grpArray;
//diag_log format ["DEBUG:: _grpCount is %1. _isCleaning is %2.",_grpCount,_isCleaning];
if ((_grpCount == 0) || (_isCleaning) || (isNil "_isCleaning")) exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Trigger's group array is empty, or a despawn script is already running. Exiting despawn script.";};};				//Exit script if the trigger hasn't spawned any AI units, or if a despawn script is already running for the trigger.

_trigger setVariable["isCleaning",true,false];		//Mark the trigger as being in a cleanup state so that subsequent requests to despawn for the same trigger will not run.
if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: No players remain in trigger area. Deleting %1 AI groups in %2 seconds.",_grpCount, DZAI_despawnWait];};
sleep DZAI_despawnWait;								//Wait some time before deleting units. (amount of time to allow units to exist when the trigger area has no players)

if (triggerActivated _trigger) exitWith {			//Exit script if trigger has been reactivated since _waitTime seconds has passed.
	if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: A player has entered the trigger area. Cancelling despawn script.";};
	_trigger setVariable ["isCleaning",false,false];	//Allow next despawn request.
};			

{
	{deleteVehicle _x} forEach (units _x);			//Delete all units of each group.
	sleep 0.2;
	deleteGroup _x;									//Delete the group after its units are deleted.
} forEach _grpArray;

//Update active AI count
_spawnCount = _trigger getVariable ["spawnCount",0];
if (_spawnCount == 0) exitWith {diag_log "ERROR :: Spawncount is zero.";};
DZAI_numAIUnits = DZAI_numAIUnits - _spawnCount;

//Cleanup variables attached to trigger
_trigger setVariable ["GroupArray",[],false];
_trigger setVariable ["isCleaning",nil,false];
_trigger setVariable ["patrolDist",nil,false];
_trigger setVariable ["gradeChances",nil,false];
_trigger setVariable ["spawnCount",nil,false];
DZAI_actTrigs = (DZAI_actTrigs - 1);
if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Despawned %1 AI in static trigger area. Resetting trigger's group array.",_spawnCount];};

true
