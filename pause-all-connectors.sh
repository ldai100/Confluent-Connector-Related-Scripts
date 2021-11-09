#!/bin/bash

CONNECT_NODE=$1
CONNECT_PORT=$2

curl $CONNECT_NODE:$CONNECT_PORT/connectors | jq '.[]' | xargs -I{connector_name} curl -s -XPUT $CONNECT_NODE:$CONNECT_PORT/connectors/{connector_name}/pause
