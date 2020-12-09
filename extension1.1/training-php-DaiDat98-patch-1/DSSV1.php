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
    <title>Popup Danh sách sinh viên</title>
    <link rel="stylesheet" href="./public/css/bootstrap.min.css">
    <script src="./jquery.js"></script>
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
        #btn{
            position:fixed;
            top:150px;
            right:10px;
            width: 100px;
            height: 100px;
        }
        button{
            display: block;
            width: 100px;
            height: 30px;
            margin-bottom:50px;
        }
    </style>
</head>

<body>
  <!-- title -->
        <h1>Danh Sách Sinh Viên</h1>
        <!-- render danh sách -->
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
                <!-- Btn -->
        <!-- <div id="btn">
            <button class="btn btn-success" id="savesv" type="button">Lưu</button>
            <button class="btn btn-warning" id="checksv" type="button">Điểm danh</button>
            <button class="btn btn-primary" id="resetsv" type="button">Reset</button>
        </div> -->
    </div>
    <script src="./poper.js"></script>
    <script src="./bootstrap.js"></script>
    <script src="./bootstrap.min.js"></script>

    <!-- <script>
        $("#checksv").click(function () {
        var arr = document.getElementsByClassName("mssv");
        for(let index=0;index<arr.length;index++)
        {
            var numberInspect = document.getElementById(arr[index].textContent);
            numberInspect.value="5";
        }
        $.get("http://localhost/training-php-DaiDat98-patch-1/DSSV.php", function (data)
          {
            var listSV = JSON.parse(data);
            console.log(listSV);
          listSV.forEach(element => {
              for (let index = 0; index < arr.length; index++)
              {
                var numberInspect = document.getElementById(arr[index].textContent);
                if(arr[index].textContent == element[1])
                {
                    numberInspect.value=" ";
                }  
              }
          });
        });
      });
    </script>
    <script>
        $("#resetsv").click(function(){
          
            var arr = document.getElementsByClassName("mssv");
            for (let index = 0; index < arr.length; index++)
            {
                var numberInspect = document.getElementById(arr[index].textContent)
                numberInspect.value =" ";
            }
      });
    </script>
    <script>
        $("#savesv").click(function(){
            let newWindow = open('http://localhost/training-php-DaiDat98-patch-1/DSSV1.php",height=500,width=650,top=200,left=450')
    newWindow.onload = function() {
    newWindow.close();
    alert(newWindow.closed); // true
};
        })
    </script> -->
</body>

</html>