#!/bin/bash
day=$(date +%A)
echo "Restarting All Servers..."
for D in Servers/*; do
    if [ -d "${D}" ]; then
        unproccessed_server_name=${D}
        server_name=${unproccessed_server_name:8}
        bash startserver.sh $server_name
    fi
done
