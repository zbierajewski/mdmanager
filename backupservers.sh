#!/bin/bash
day=$(date +%A)
echo "Backing Up Servers..."
for D in servers/*; do
    if [ -d "${D}" ]; then
        unproccessed_server_name=${D}
        server_name=${unproccessed_server_name:8}
        echo "Backing Up $server_name..."
        tmux send-keys -t $server_name "/backup_database $day" ENTER
        tar -zcvf $unproccessed_server_name/UserData/Backup/data-$day.tar.gz -c $unproccessed_server_name/data/*
        tar -zcvf $unproccessed_server_name/UserData/Backup/Mods-$day.tar.gz -c $unproccessed_server_name/Mods/*
        tar -zcvf $unproccessed_server_name/UserData/Backup/Configuration-$day.tar.gz -c $unproccessed_server_name/UserData/Configuration/*
        echo "$server_name Backed up successfully."
    fi
done
