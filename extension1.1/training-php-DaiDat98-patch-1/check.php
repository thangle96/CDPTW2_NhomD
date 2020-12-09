<?php
require "./functions.php";

$query = "SELECT * FROM `diemdanh`";
$results = mysqli_query($conn, $query);
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./public/css/bootstrap.min.css">
    <style>
    body{
        background:#CCFFFF;
    }
        h1 {
            text-align: center;
            margin: 50px 0px;
        }

        #list_danhsach {
            width: 80%;
            position: relative;
            left: 10%;

        }

        .for {
            text-align: center;
            width: 20%;
            border-radius: 5px;
            border: none;
            background: #efc2c2;
        }
        h1{
            background:#CCCCFF;
            color:black;
            padding-top:50px;
            padding-bottom:50px;
        }
    </style>
</head>

<body>
    <div class="top_container">
        <h1>Danh Sách Sinh Viên</h1>
        <table id="list_danhsach" class="table table-striped table-hover">
        <tr class="table-success">
                <th scope="col" >STT</th>
                <th scope="col">Tên sinh viên</th>
                <th scope="col">MSSV</th>
                <th scope="col">Thời gian điểm danh</th>
                <th scope="col">Số tiết vắng</th>
            </tr>
            <?php $i = 0;
            foreach($results as $value)
            {
                ?>
            <tr>

                <th><?php echo ++$i ?></th>
                <th><?php echo $value['name'] ?></th>
                <th class="mssv"><?php echo $value['user_id'] ?></th>
                <th><?php echo $value['datetime'] ?></th>
                <th><input class="for" type="text" id="<?php echo $value['user_id'] ?>"></th>
            </tr>
            <?php }?>
        </table>
    </div>
</body>

</html>