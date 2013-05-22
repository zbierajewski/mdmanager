#!/bin/bash
day=$(date +%A)
echo "Attempting to stop server $1"
tmux send-keys -t $1 "/announcement Sandbox is stopping the server in 10 seconds" ENTER
sleep 10
tmux send-keys -t $1 "/restart" ENTER
echo "Waiting for server to stop..."
sleep 5
tmux kill-window -t $1
echo "Server $1 stopped Successfully!"
