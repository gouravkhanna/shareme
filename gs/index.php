<html>
<head>
	<title>Share ME</title>
	<link rel='stylesheet' type='text/css' href='style.css'>
	<script src="jq.js"></script>
</head>
<body>	
<div id='shareme'> Share Me</div>
<div class="header">Upload Files</div>
<?php

/*Updating Application level Configuration*/
ini_set("upload_max_filesize","640M");
ini_set("memory_limit","640M");
ini_set("max_execution_time","3600");
ini_set("max_input_time","36	00");
require 'db_connect.php';
session_start();
?> 
<input type="button" value="ADD" onclick="addUpload()">
<form action="process.php" method="post"
enctype="multipart/form-data">
	<label for="file">Filename:</label>
	<div id="dvfile">
		<input type="file" name="file[]" id="file" multiple><br>
	</div>
	<input type="submit" name="submit" value="Submit" onclick='wait()'>
	<div id='dvwait'></div>
</form>
</body>
</html>
<script type="text/javascript">
var i=1;
/*function to add more than one files*/
function addUpload() {
	i=i+1;
	if(i<25)
	$("#dvfile").append("<input type='file' name='file[]' id='file' ><br/>");
}
/*To show Wait/loading to user while file is uploading*/
function wait(){
	document.getElementById("dvwait").innerHTML="Uploading....Please Wait..!!<br/><a href='http://192.168.1.170/gs/index.php'>for Refresh </a>";
}
</script>