<?php 
session_start();
error_reporting(0);
if ($_SERVER['REQUEST_METHOD']=="POST") {
if ($_POST["pwd"]==="mySecr3tPa88word31415926535_isThis_F###2long") {
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
