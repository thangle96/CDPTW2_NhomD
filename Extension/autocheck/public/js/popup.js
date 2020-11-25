$(document).ready(function () {
	$('#save').click(function () {
		$.get("http://localhost:80/nnnnn/login/saved.php",function(data){
		$("#ketqua").html(data);
		});
	})
	$.get("http://localhost:80/nnnnn/login/checkgv.php",function(data){
		$("#ketqua").html(data);
	});
	
});