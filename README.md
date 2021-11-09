# This repo provides some simple tools to manage Confluent Connectors


## Wild Script

####
pause-all-connectors.sh	
resume-all-connectors.sh

Both of these script take in 2 arguments, 1) hostname, 2) port number

Example:
./pause-all-connectors.sh localhost 8083
./resume-all-connectors.sh localhost 8083


## Grep Based Script

####
pause-regex-connectors.sh
resume-regex-connectors.sh

Both of these script take in 3 arguments, 1) hostname, 2) port number 3) string to be grepped

Example:
./pause-regex-connectors.sh localhost 8083 data
./resume-regex-connectors.sh localhost 8083 data

In the above case, all connectors with the string "data" in them will be paused and resumed.

