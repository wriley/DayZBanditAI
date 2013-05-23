/*
	fnc_initTrigger version 0.07
*/

private["_trigger","_patrolDist","_gradeChances","_markerArray"];
_trigger = _this select 0;
_patrolDist = _this select 1;
_gradeChances = _this select 2;
_markerArray = if ((count _this) > 3) then {_this select 3} else {[]};

_trigger setVariable ["patrolDist",_patrolDist,false];
_trigger setVariable ["gradeChances",_gradeChances,false];
if ((count _markerArray) > 0) then {
	_trigger setVariable ["markerArray",_markerArray,false];
};
DZAI_actTrigs = (DZAI_actTrigs + 1);
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Extended Debug: Init. static trigger %1. PatrolDist: %2, GradeChances: %3, MarkerArray: %4.",_trigger,_patrolDist,_gradeChances,_markerArray];};
