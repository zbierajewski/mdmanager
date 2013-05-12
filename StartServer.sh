#!/bin/bash
cd Servers/$1
echo "Starting Server $1"
tmux new -d -s $1 "mono ManicDiggerServer.exe"
