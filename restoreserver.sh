#!/bin/bash
bash stopserver.sh $1
sleep 15
if [ "$2" = "full" ]
rm -rf servers/$1/UserData/Saves/default.mddbs
rm -rf servers/$1/data
rm -rf servers/$1/Mods
fi
