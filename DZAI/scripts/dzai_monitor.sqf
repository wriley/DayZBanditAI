/*
	AI Counter 0.07 
	Used for debugging purposes - Reports number of active AI units and dynamically-spawned triggers into RPT log at a set interval.
*/

diag_log "Starting DZAI Server Monitor in 120 seconds.";
sleep 120;

while {true} do {
	diag_log format ["DZAI Monitor :: %1/%2 (cur/max) active AI units. %3/%4 (cur/max) active dynamic triggers.",DZAI_numAIUnits,DZAI_maxAIUnits,DZAI_numDynTrigs,DZAI_spawnRandom];
	sleep DZAI_monitorRate;
};
