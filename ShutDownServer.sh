#!/bin/bash
day=$(date +%A)
echo "Attempting to shut down server $1"
tmux send-keys -t $1 "/announcement Sandbox is shutting down the server in 10 seconds" ENTER
sleep 10
tmux send-keys -t $1 "/restart" ENTER
echo "Waiting 5 seconds"
sleep 5
tmux kill-window -t $1
echo "Server Shut down $1 Successfully!"
