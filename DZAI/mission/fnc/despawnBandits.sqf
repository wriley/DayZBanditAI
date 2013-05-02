/*
	despawnBandits version 0.05
	Usage: [thisTrigger] call despawnBandits;
	Deletes all AI units spawned by a trigger once all players leave the trigger area. Adapted from Sarge AI.
	
*/
private ["_grpArray","_trigger"];
if (!isServer) exitWith {};							//Execute script only on server.

_trigger = _this select 0;							//Get the trigger object

_grpArray = _trigger getVariable["GroupArray",[]];	//Find the groups spawned by the trigger. Or set an empty group array if none are found.
if (count _grpArray == 0) exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Trigger's group array is empty. Exiting despawn script.";};};				//Exit script if the array has spawned no groups.

//_waitTime = 120;									//Move this variable to config
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Extended Debug: No players remain in trigger area. Deleting spawned AI in %1 seconds.",DZAI_despawnWait];};
sleep DZAI_despawnWait;									//Wait some time before deleting units. (amount of time to allow units to exist when the trigger area has no players)

if (triggerActivated _trigger) exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: A player has entered the trigger area. Cancelling despawn script.";};};			//Exit script if trigger has been reactivated since _waitTime seconds has passed.

_grpArray = _trigger getVariable["GroupArray",[]];	//Find the groups spawned by the trigger. Or set an empty group array if none are found.
if (count _grpArray == 0) exitWith {};				//Exit script if the array has spawned no groups.
	
{
	{deleteVehicle _x} forEach (units _x);			//Delete all units of each group.
	sleep 0.3;
	deleteGroup _x;									//Delete the group after its units are deleted.
} forEach _grpArray;

if (DZAI_debugLevel > 0) then {diag_log "DZAI Extended Debug: Despawned AI in trigger area. Resetting trigger's group array.";};
_trigger setVariable["GroupArray",[],false];		//Reset trigger's group array.

true

