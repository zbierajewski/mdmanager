if echo "php checkport.php $1" | grep -q "yes"
  then echo "Server is running..."
  else echo "Server is not running..."
fi
