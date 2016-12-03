#!/bin/bash
# 50 100 200 500 1000
#149.162.131.67
SERVER_HOST=localhost
SLEEP_TIME=0.5
NUM_PROCESS=200
for i in `seq 1 ${NUM_PROCESS}`;
do
	# firefox -new-tab http://localhost:8080/FiveInARow/jsp/runtest.jsp &
    phantomjs run_game.js http://${SERVER_HOST}:8080/FiveInARow/jsp/runtest.jsp > logs/${NUM_PROCESS}_${i}_s_${SLEEP_TIME}.log &
	sleep ${SLEEP_TIME}
    echo "user ${i} of ${NUM_PROCESS} started"
done

        
