$(document).ready(function(){
	// viết sự kiện cho nút lưu
	$('#send').click(function(){
		//tạo biến để lấy giá trị
		var mssv = $('#mssv').val();
		var status = $('#status').val();
		//ajax để gửi đến trang check.php
		$.get("http://localhost:80/nnnnn/login/checkhs.php",{mssv:mssv,status:status},function (data) {
			if (data== 1)
			{
				$("#thongbao").html(`<div class='text bg-blue'>Điểm danh thành công!!!</div>`);
			} else {
				$("#thongbao").html(`<div class='text bg-blue'>Điểm danh không thành công!!!</div>`);
				}
		})
	});
})
