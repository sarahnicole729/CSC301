<?php

include('final_functions.php');

$DB_USER = "nottinghas1";
$DB_PASSWORD = "6HAb=bR4";

$database = new 
PDO('mysql:host=csweb.hh.nku.edu;dbname=db_fall18_nottinghas1',$DB_USER,$DB_PASSWORD);

// Connecting to the MySQL database as root instead of my account 
//$user = 'root';
//$password = '';

//$database = new PDO('mysql:host=localhost;dbname=books', $user, $password);


//autoloader
function my_autoloader($class) {
    include('class.' . $class . '.php');
}

spl_autoload_register('my_autoloader');

// start the session
session_start();

<a href="WelcomePageAndLogin.php">WelcomePageAndLogin.php</a>
<a href="WelcomePage2.php">WelcomePage2.php</a>
<a href="destroy.php">Destroy</a>
?>








