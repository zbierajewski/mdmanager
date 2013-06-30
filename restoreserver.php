<?php
require_once('functions.php');
$stop = shell_exec('bash stopserver.sh ' . $argv[1]);
echo $stop;
echo "Waiting for server to stop...\n";
sleep(15);
if($argv[2]=='full'){
	echo "Deleting data/ ...";
	if(rmdir_recursive('servers/' . $argv[1] . '/data')){
		echo "ok\n";
	}
	echo "Deleting Mods/ ...";
	if(rmdir_recursive('servers/' . $argv[1] . '/Mods')){
		echo "ok\n";
	}
	echo "Deleting UserData/Saves/default.mddbs ...";
	if(unlink('servers/' . $argv[1] . '/UserData/Saves/default.mddbs')){
		echo "ok\n";
	}
}
?>
