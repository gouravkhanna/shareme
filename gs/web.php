<html>
<head>
	<title>Share ME</title>
	<link rel='stylesheet' type='text/css' href='style.css'>
	
</head>
<body>	
	<!-- File for the PC or Web user to Download a File From the Server
	-->
<div id='shareme'> Share Me

<a href='index.php' id="linkUpload" class='floatl'>UPLOAD</a>
<a href='web.php' id="linkUpload" class='floatr' >REFRESH</a></div>

<br/><br/>
List of Files :<br/>
<?php
/*Listing all the files of the server*/
$arr = opendir ( "c:/wamp/www/gs/uploads/" );
while ( ($file = readdir ( $arr )) !== false ) {
	if ($file != "." && $file != "..") { 
		echo "<a href='http://192.168.1.170/gs/download.php?file=$file'>$file</a><br/>";
		//will forward the link to download.php to force the file to download on click
	}
}
closedir ( $arr ); 

?>		

</body>
</html>