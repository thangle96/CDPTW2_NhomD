$(document).ready(function(){
	$.get("http://localhost:80/nnnnn/login/checkgv.php",function(data){
		$("#ketqua").html(data);
	});
});