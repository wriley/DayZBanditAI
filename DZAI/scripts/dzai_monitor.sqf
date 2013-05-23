/*
	DZAI Monitor 0.07 
	Periodically eports current numbers of active AI units, static triggers, and dynamic triggers.
*/

diag_log "Starting DZAI Server Monitor in 60 seconds.";
sleep 60;

while {true} do {
	diag_log format ["DZAI Monitor :: %1/%2 (cur/max) active AI units. %3 active static triggers. %4/%5 (cur/total) active dynamic triggers.",DZAI_numAIUnits,DZAI_maxAIUnits,DZAI_actTrigs,DZAI_actDynTrigs,DZAI_curDynTrigs];
	sleep DZAI_monitorRate;
};
