<html>

<head>
  <title>Share ME</title>
  <link rel='stylesheet' type='text/css' href='style.css'>
  
</head>
<body>  
<div id='shareme'> Share Me</div>
<div class="header">File Status</div>

<?php
/**
* process.php will process all the Upload request from PC or Android and
* Will Store all the Uploaded file to Server Uploads folder*/

/*Updating Application level Configuration*/
ini_set("upload_max_filesize","640M");
ini_set("memory_limit","640M");
ini_set("max_execution_time","3600");
ini_set("max_input_time","3600");
require 'db_connect.php';
session_start();
$start=time();
$end=time();
$count=count($_FILES['file']['name']);

if(empty($_FILES['file']['name'] ['0'])) {
  echo "Please Specify a File First <br/>";
  die();
}
echo "<br/><br/>Start Time ".date("l jS \of F Y h:i:s A",$start) ."<BR/><Br/>";
for($i=0;$i<$count;$i++) {

  if ($_FILES["file"]["error"]["$i"] > 0)     {
    echo "Return Code: " . $_FILES["file"]["error"]["$i"] . "<br>";
    }
  else     {
     $name=str_replace(' ', '_', $_FILES["file"]["name"]["$i"]);
     $size=$_FILES["file"]["size"]["$i"];

    echo "Upload : " . $_FILES["file"]["name"]["$i"] . "<br>";
    echo "Type : " . $_FILES["file"]["type"]["$i"] . "<br>";
    echo "Size : " . ($_FILES["file"]["size"]["$i"]) . " B<br>";
   

    if (file_exists("uploads/" . $name))
      {
      echo $_FILES["file"]["name"]["$i"] . " already exists. <Br/><Br/>";
      }
    else
      {
      move_uploaded_file($_FILES["file"]["tmp_name"]["$i"],
      "uploads/" . $name);
      echo "Stored in: " . "uploads/" . $name."<Br/><Br/>";
      }
      $end=time();
      //maintaining Log in the Database
      $name=addslashes($name);
      $sql = "insert into log(file_name,size,start_time,end_time,error) values('$name','$size','$start','$end','null');";
      mysql_query($sql) or die("could not crete log entry");
    }

 
}

 echo " <br/> <br/> End Time : " .date("l jS \of F Y h:i:s A",$end);

?>
</body>
</html>