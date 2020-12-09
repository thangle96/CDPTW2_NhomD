<?php 
   require "./functions.php";
   $mssv = $_GET['mssv'];
   $status= $_GET['status'];
   $sql = "SELECT * FROM `autocheck` WHERE mssv =".$mssv;
   $aaa = mysqli_query($conn, $sql);
   $row = mysqli_fetch_all($aaa);
   if (count($row) == 0) {
       $sql = "INSERT INTO `autocheck` (`mssv`,`status`) VALUES ('$mssv','$status')";
       $aaa = mysqli_query($conn, $sql);
       echo 0;
   }
?>