<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>COURSES LIST</title>
<style type="text/css">
body {
	background: #E3F4FC;
	font: normal 14px/30px Helvetica, Arial, sans-serif;
	color: #2b2b2b;
}
a {
	color:#898989;
	font-size:14px;
	font-weight:bold;
	text-decoration:none;
}
a:hover {
	color:#CC0033;
}

h1 {
	font: bold 14px Helvetica, Arial, sans-serif;
	color: #CC0033;
}
h2 {
	font: bold 14px Helvetica, Arial, sans-serif;
	color: #898989;
}
#container {
	background: #CCC;
	margin: 100px auto;
	width: 945px;
}
#form 			{padding: 20px 150px;}
#form input     {margin-bottom: 20px;}
</style>
</head>
<body>
<div id="container">
<div id="form">

<?php

include "connection.php"; //Connect to Database

$deleterecords = "SELECT * from COURSES"; //empty the table of its current records
$result=mysql_query($deleterecords);


if ($result) {
    // output data of each row
    echo "<br>" ;
    while($row = mysql_fetch_assoc($result)) {
        echo "NAME: " . $row["NAME"]. " - DURATION: " . $row["DURATION"]. " " . $row["FEE"]. "<br>";
    }
} else {
    echo "0 results";
}


?>

</div>
</div>
</body>
</html>
