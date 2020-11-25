<?php
    require "./functions.php";
    $mssv = $_GET['mssv'];
    $status= $_GET['status'];
    // lấy tất cả thông tin của mssv 
    $sql = "SELECT * FROM `diemdanh` WHERE user_id =".$mssv;
    $aaa = mysqli_query($conn, $sql);
    // trả về dữ liệu cảu $aaa
    $row = mysqli_fetch_all($aaa);
    // đổi trạng thái để đánh số vắng
    $sql = "UPDATE `diemdanh`set `status` = '1' WHERE user_id =".$mssv;
    $aaa = mysqli_query($conn, $sql);
    echo 0;
?>