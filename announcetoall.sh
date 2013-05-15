#!/bin/bash
day=$(date +%A)
echo "Announcing to Servers..."
for D in servers/*; do
    if [ -d "${D}" ]; then
        unproccessed_server_name=${D}
        server_name=${unproccessed_server_name:8}
        echo "Announcing to $server_name"
        bash announce.sh $server_name
    fi
done
