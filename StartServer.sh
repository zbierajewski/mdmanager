#!/bin/bash
echo "Changing Directory to $1"
cd Servers/$1
echo "Starting Server $1"
tmux new -s $1 "mono ManicDiggerServer.exe"
