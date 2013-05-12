#!/bin/bash
day=$(date +%A)
echo "Restarting Server..."
tmux send-keys -t $1 "/backup_database $day" ENTER
echo "Server Backed-Up Successfully"
