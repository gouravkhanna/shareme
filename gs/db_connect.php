<?php

$conn=mysql_connect("localhost","root","root");
if ($conn) {
	mysql_select_db("application") or die("Database not connected");
}