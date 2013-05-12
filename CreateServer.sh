#!/bin/bash
echo "Creating Server $1..."
echo "Unzipping Server Image..."
unzip ServerImage.zip
echo "Making Server Directory..."
mv ServerImage Servers
echo "Changing Directories..."
cd Servers
mv ServerImage $1
cd $1
echo "Starting Server for first time..."
tmux new -s $1 "mono ManicDiggerServer.exe"
