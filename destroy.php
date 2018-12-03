<?php

include('final_config.php'); 

session_destroy();

header('location: WelcomePageAndLogin.php');
die();

?>