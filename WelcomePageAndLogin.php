<?php

include('final_config.php');

if($_SERVER['REQUEST_METHOD'] == "POST") {
    $fullName = $_POST['fullName'];
    $email = $_POST['email'];
    $_SESSION['fullName'] = $fullName;
    setcookie('fullName', $fullName, time() + (86400 * 30), '/');
}

?>

<h1>Welcome Page</h1>

<form action="" method="post">
    <input type="text" placeholder="Name" name="fullName" />
    <input type="text" placeholder="Email" name="email" />
    <input type="submit" value="Submit!" />
</form>
