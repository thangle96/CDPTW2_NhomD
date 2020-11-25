<html>
<head>
    <title>Register</title>
  
	<link rel="stylesheet" type="" href="public/css/bootstrap.min.css">
    <link rel="stylesheet" type="" href="public/css/styles.css">
    <link rel="stylesheet" type="" href="public/css/editstyle.css">
    <script src="./block.js"></script>
</head>
<style>
#block_modal{
    background-color: rgba(0, 0, 0, 0.76);
    width: 100%;
    height: 100%;
    z-index: 10;
    top:0;
    left:0;
    position: absolute;  
}
.close_moda{
    width: 100%;
    height: 100%;
    position: absolute;
}
.list_detail{
    text-align: center;
    background: #fff;
    width: 35%;
    animation: 0.5s transiton_add linear;
    border-radius: 10px;
    position: relative;
    top: 20%;
    left: 30%;
    height: 400px;
}
#form_chinh, .content {
	width: 80%;
	margin: 0px auto;
	padding: 20px;
	border: 1px solid #B0C4DE;
	background: white;
	border-radius: 0px 0px 10px 10px;
}
input{
    background: red;
    border-radius: 10px;
}
.back{
    padding-top: 20px;
}
</style>
<body>
<div class="header">
	<h2>Danh sách Điểm danh</h2>
   
</div>
<div id="form_chinh">
<form class="form_search"  method="get" style="border:none; display:inline-flex; width:100%" >
<input type="text" class="form-control" name="search" id="search" style="text-align: center;"<?php if(isset($value_search)){ ?> value = "<?php echo $value_search ?>  " <?php  } ?>   placeholder="Search...">
        <button> search</button>
<!-- <input type="submit" value="Search" class="btn_click" style="margin-left:30px; background:yellowgreen ;"> -->

</form > 
<?php if(isset($id)){ ?>
                                <div class="row">
                                    <div class="col_8">
                                    <img class="images-fiul" src="./public/images/admin_profile.png" alt="">
                                    </div>
                                    <div class="col_4">
                                        <?php if(isset($row)==true){ ?>
                                            <p>
                                            <?php echo $row['id']; ?>
                                            </p>
                                            <p>
                                            <?php echo $row['mssv']; ?>
                                            </p>
                                            <p>
                                            <?php echo $row['status']; ?>
                                            </p>
                                            <p>
                                            <?php echo $row['datetime']; ?>
                                            </p>
                                        <?php } ?>
                                    </div>
                                </div>
                                        <?php } else {?>
<table id="list_danhsach">       
<tr>
    <th>ID</th>
    <th>Mssv</th>
    <th>Status</th>
    <th>Vắng</th>
</tr>
<tr>
<?php if(isset($results))
        { foreach($results as $value): ?>
            <tr>    
                <td><?php echo $value['id']; ?></td>
                <td><?php echo $value['mssv']; ?></td>
                <td ><?php echo $value['status']; ?></td>
                <td ><?php echo $value['datatime']; ?></td>
             </tr>
            <?php endforeach;}
            if(isset($a)){
                foreach($searchrs as $value): ?>
                    <tr>
                        <td><?php echo $value['id']; ?></td>
                        <td><?php echo $value['mssv']; ?></td>
                        <td ><?php echo $value['status']; ?></td>  
                        <td ><?php echo $value['datatime']; ?></td>
                     </tr>
                    <?php endforeach;
            }      
            ?>
             </table> 
        <?php }?>
                    <div class="back" style="text-align: center">
                        <input  style=" border-radius=5px; padding ; backgroud=red;" type="button" value="Back" onClick="javascript:history.go(-1)"/>
                    </div>

        </div >
</body>
</html>