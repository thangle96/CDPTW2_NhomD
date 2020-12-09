$(document).ready(function() {
    $('#send').click(function(e) {
        var isValid = true;
        $('#mssv').each(function() {
            if ($.trim($(this).val()) == '') {
                isValid = false;
                document.getElementById("notification").innerHTML = "Xin vui lòng nhập MSSV !!";
            } else {
                var xhttp = new XMLHttpRequest();
                xhttp.open("GET", "http://localhost/training-php/checkInput.php/?mssv=" + $('#mssv').val(), true);
                xhttp.send();
                document.getElementById("notification").innerHTML = "Điểm danh thành công";
                $("#notification").css({
                    "color": "black",
                });
            }
        });
        if (isValid == false)
            e.preventDefault();
    });
});