<?php 
  $file=$_REQUEST['file'];
    $file_url = 'http://192.168.1.170/gs/uploads/' . $file;
    header('Content-Type: application/octet-stream');
    header("Content-Transfer-Encoding: Binary"); 
    header("Content-disposition: attachment; filename=\"".$file."\""); 
    readfile($file_url);

    ?>