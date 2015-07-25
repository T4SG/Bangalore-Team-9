<?php
$db = mysql_connect("localhost", "root", "code4good") or die("Could not connect.");

if(!$db) 

	die("no db");

if(!mysql_select_db("pratham",$db))

 	die("No database selected.");
?>
