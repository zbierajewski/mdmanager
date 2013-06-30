#!/bin/bash
day=$(date +%A)
for D in servers/*; do
    if [ -d "${D}" ]; then
        unproccessed_server_name=${D}
        server_name=${unproccessed_server_name:8}
        bash serverrunning.sh $server_name
    fi
done
