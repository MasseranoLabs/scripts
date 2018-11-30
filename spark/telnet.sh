#!/bin/bash

docker exec -ti $(docker ps --filter publish=3000 -q) telnet localhost 8080
