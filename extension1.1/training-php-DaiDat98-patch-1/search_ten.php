<?php
    session_start();

include('functions.php');
$results = [];
$item_per_page = 3; 
$current_page = !empty($_GET['page']) ?$_GET['page']:1;
$offset = ($current_page -1) * $item_per_page;
//tim kiem 

if(isset($_GET['search'])&& $_GET['search']!="")
	{
        $query='SELECT * from users where username like "%'.$_GET['search'].'%"';
        $results = mysqli_query($conn, $query);
	}
	else{
        if (isAdmin()) {
            $query = "SELECT * FROM users LIMIT $item_per_page OFFSET $offset";
            $results = mysqli_query($conn, $query);
            $allUser = "SELECT * FROM users";
            $totalRecord = mysqli_query($conn, $allUser);
            $totalRecord = $totalRecord->num_rows;
            $totalPage = ceil($totalRecord / $item_per_page);
        }
}
 //ma hoa + xóa:
 if (isset($_GET['list']))
 {
    $id = $_GET['list'];
    $md_id = base64_decode(base64_decode(base64_decode($id)));
    if (isAdmin()) {
        $query = "DELETE FROM users WHERE users.`id` = $md_id";
        $results = mysqli_query($conn, $query);
        header("location: list.php"); 
        return $results;
    }
}
//chi tiet
if(isset($_POST['id']))
{
    $id= $_POST['id'];
    $sql = "SELECT * FROM users WHERE id=".$id;
    $results = mysqli_query($conn, $query);
}
?>


<html>
    <head>
        <title>Register</title>
        
        <link rel="stylesheet" href="public/css/bootstrap.min.css">
        <link rel="stylesheet" href="public/css/font-awesome.min.css">
		<link rel="stylesheet" href="public/css/styles.css">
    </head>
    <body>
		<div class="container">
        <div class="header">
            <h2>List User</h2>
            <form method="get">
            <input type="text" name="search" class="form-control" placeholder="Tìm kiếm theo tên...">
            <select id="ngonngu" name="ngonngu" onchange="location=options[selectedIndex].value;">
                <option hidden="">--Chọn--</option>
                <option value="search_ten.php">theo tên</option>
                <option value="search_fullname.php">theo fullname</option>
                <option value="search_email.php">theo email</option>
            </select>
            </form>
        </div>
        <form >
            <?php echo display_error(); ?>	

            <table class="table">
            <?php
                 $date = new DateTime('now', new DateTimeZone('Asia/Ho_Chi_Minh'));
                 echo $date->format('d-m-Y H:i:s');
                ?>
                <thead>
					<tr>
                    <th scope="col">File</th>
                        <th scope="col">Avata</th>
                        <th scope="col">ID</th>
						<th scope="col">Username</th>
						<th scope="col">Full name</th>
						<th scope="col">Email</th>
						<th scope="col">Action</th>
					</tr>
                </thead>
                <tbody>
                    <?php foreach ($results as $result): ?>
                    <tr scope="row">
                    <td><a href="./public/file/<?php echo $result['file'] ;?>"></a></td> 
                        <td><img src="./public/uploads/<?php echo $result['avata'] ;?>" alt="" style="width:60px;height:60px"></td>
                        <td><?php echo $result['id']; ?></td>   
                        <td><?php echo $result['username']; ?></td>   
                        <td><?php echo $result['fullname']; ?></td>   
                        <td><?php echo $result['email']; ?></td> 
						
                      
                        <td> <a class="btn btn-cancel" href="list.php?list=<?php echo base64_encode(base64_encode(base64_encode($result['id'])))?>" onclick="return confirm('Bạn có muốn xóa thông tin thành viên này không')">Xóa</a>
						</td>
                        <td> 
                        <a class="btn btn-primary" href="edit.php?edit=<?php echo $result['id'];?>">Sửa</a>
						</td>
                        <td> <a class="btn btn-primary" href="details.php?id=<?php echo $result['id'];?>">Chi tiết</a>
						</td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
            
            <?php 
            if(isset($_GET['search'])&& $_GET['search']!="")
            {
            }else{
                include('pagination.php');   
            }
                              
            ?>
        </form>
        <div class="back" style="text-align: center">
		<button type="button" class="btn btn-info" onClick="javascript:history.go(-1)">Back</button>
          
        </div>
        </div>
                        
    </body>
</html>