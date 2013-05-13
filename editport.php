<?php
$server = $argv[1];
$port = $argv[2];
$data = file_get_contents('Servers/' . $server . '/UserData/Configuration/ServerConfig.txt');
$data = str_replace('25565', $port, $data);
file_put_contents('Servers/' . $server . '/UserData/Configuration/ServerConfig.txt', $data);
?>
