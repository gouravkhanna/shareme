<html>
<head>
    <title>Share ME</title>
    <link rel='stylesheet' type='text/css' href='style.css'>
</head>
<body>  
<div id='shareme'> Share Me</div>
<div id='status' style='font-size:2em;'></div>

<?php
/**
* getFile.php will list the all the file available to download for the mobile user
* It is default/first File for android user.
*/

$fileArray=array();
/*Will list all the files on server*/
$arr = opendir ( "c:/wamp/www/gs/uploads/" );
while ( ($file = readdir ( $arr )) !== false ) {
	if ($file != "." && $file != "..") {
		echo "<input type='button' onclick=download('$file') value='Download'>$file	<br/>";
	}
		
}
closedir ( $arr ); 
?>
</body>
</html>
<script>
/* Initate the download for the Mobile/Android User On Click of Download
*  use of the Phone Gap Api... 
*/
    statusDom = document.querySelector('#status');
   function download(a) { 
        alert(a+" Starting Download..");
   		//create a object for the File Transfer
        var fileTransfer = new FileTransfer();
		var uri = encodeURI("http://192.168.1.170/gs/uploads"+a);
        //Will Show the status or percentage of Completioin of Download(0-200%)
        fileTransfer.onprogress = function(progressEvent) {
        if (progressEvent.lengthComputable) {
            var perc = Math.floor(progressEvent.loaded / progressEvent.total * 100);
            statusDom.innerHTML = perc + "% loaded...";
        } else {
            if(statusDom.innerHTML == "") {
                statusDom.innerHTML = "Loading";
            } else {
                statusDom.innerHTML += ".";
        }
    }
};
		//Will inititate Download and Save on the sdcard of android
    fileTransfer.download(
            "http://192.168.1.170/gs/uploads/"+a,
            "file:///sdcard/"+a,
        function(entry) {
            alert("download complete (Find In): " + entry.fullPath);
        },
        function(error) {
            alert("download error source " + error.source);
            alert("download error target " + error.target);
            alert("upload error code" + error.code);
        });
}
 </script>