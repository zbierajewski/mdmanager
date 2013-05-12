#!/bin/bash
day=$(date +%A)
echo "Backing Up Servers..."
for D in Servers/*; do
    if [ -d "${D}" ]; then
        unproccessed_server_name=${D}
        server_name=${unproccessed_server_name:8}
        echo "Backing Up $server_name..."
        tmux send-keys -t $server_name "/backup_database $day" ENTER
        echo "$server_name Backed up successfully."
    fi
done
