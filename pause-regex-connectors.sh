#!/bin/bash

CONNECT_NODE=$1
CONNECT_PORT=$2
REGEX=$3

curl $CONNECT_NODE:$CONNECT_PORT/connectors | jq '.[]' | grep $REGEX | xargs -I{connector_name} curl -s -XPUT $CONNECT_NODE:$CONNECT_PORT/connectors/{connector_name}/pause
