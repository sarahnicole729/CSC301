<?php

include('final_config.php');

?>

<?php if(isset($_SESSION['fullName'])) : ?>
    <h1>Hello, <?php echo $_SESSION['fullName'] ?></h1>
<?php else : ?>
    <p>We're sorry we haven't me yet but you can give us your name and email <a href="WelcomePageAndLogin.php">here</a></p>
<?php endif; ?>