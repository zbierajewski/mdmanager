#!/bin/bash
tmux send-keys -t $1 "/announcement $1" ENTER
