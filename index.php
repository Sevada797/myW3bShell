<?php 
session_start();
error_reporting(0);

$password = "youStrongPa88word"; // Customizeable
// NOTE: after typing the password correct and submitting reload the page, I will try fixing this but currently have no idea why is this happening


if (isset($_SESSION["status"]) && $_SESSION["status"]==="loggedin") {
  die(header('Location: w3bshell.php'));
}

if ($_SERVER['REQUEST_METHOD']=="POST") {
if ($_POST["pwd"]===$password) {
$_SESSION["status"]="loggedin";
}
}

?>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<form action="index.php" method=POST>
<input input type="password" name="pwd">
<input type="submit">
</form>
</body>

</html>
