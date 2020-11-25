<?php
require "./functions.php";
$sql = "SELECT * FROM `diemdanh`";
$aaa = mysqli_query($conn, $sql);
$row = mysqli_fetch_all($aaa);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="public/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="public/css/styles.css">
    <script src="public/js/jquery.js"></script>
    <style>
        h3{
          text-align:center;
        }
      h5{
        text-align: center;
      }
      th{
        padding-left: 10px;
        background:rgba(0,0,0,0.5);
        border-right:2px solid white;
      }
      button{
        float: right;
      }
      #wtd-input{
        width:35px;
      }
      tbody{
        background: #fff !important;
      }
    </style>
  </head>
  <body>
    <div class="container"><br>
      <h3>Danh sách học sinh điểm danh</h3>
        <h5><?php
                 $date = new DateTime('now', new DateTimeZone('Asia/Ho_Chi_Minh'));
                 echo 'Ngày'. '  '.$date->format('d-m-Y H:i:s');
                ?></h5>
        <table class="table table-striped">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">User ID</th>
              <th scope="col">Status</th>
              <th scope="col">Day</th>
              <th scope="col">Absent</th>
            </tr>
          </thead>
          <tbody>
              <?php 
              foreach ($row as $key => $value):
              ?>
            <tr>
              <td scope="row"><?php echo $value[0] ?></th>
              <td><?php echo $value[1] ?></td>
              <td><?php echo $value[2] ?></td>
              <td><?php echo $value[3] ?></td>
              <td><input type="text" id="wtd-input" value="<?php if($value[2]=='0')
              {
                echo '5';
              } else {
                echo '0';
              } ?>"></td>
            </tr>
            <?php
            endforeach
            ?>
          </tbody>
        </table>
<button class="btn btn-sucsess" name="saved">Lưu</button>
    </div>
    <script src="public/js/popup.js"></script>
    <script src="public/js/poper.js"></script>
    <script scr="./public/js/popup1.js"></script>
    <script src="public/js/bootstrap.min.js"></script>
  </body>
</html>