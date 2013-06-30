<?php
$server = $argv[1];
$xml = simplexml_load_file('servers/' . $server . '/UserData/Configuration/ServerConfig.txt');
echo $xml->Port;
?>
