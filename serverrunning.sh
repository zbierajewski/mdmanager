if tmux ls | grep -q $1
  then echo "Server is running..."
  else echo "Server is not running..."
  bash stopserver.sh $1
  sleep 10
  bash startserver.sh $1
fi

