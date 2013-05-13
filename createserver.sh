#!/bin/bash
echo "Creating Server $1..."
echo "Unzipping Server Image..."
unzip ServerImage.zip
echo "Making Server Directory..."
mv ServerImage servers
cd servers
mv ServerImage $1
cd $1
echo "Starting Server for first time..."
tmux new  -d -s $1 "mono ManicDiggerServer.exe"
sleep 10
echo "Changing server port to $2..."
cd ../..
php editport.php $1 $2
tmux send-keys -t $1 "/restart" ENTER
sleep 3
echo "Server was created successfully!"
echo "Please open port $2 with sudo ufw allow $2"
