#!/bin/bash
echo "Restarting Server $1..."
tmux send-keys -t $1 "/announcement Sandbox is restarting server in 10 seconds" ENTER
sleep 10
tmux send-keys -t $1 "/restart" ENTER
echo "Server Restarted Successfully"
