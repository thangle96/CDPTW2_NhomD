
chrome.runtime.onMessage.addListener(
    function (request, sender, sendResponse)
    {
      if(request.message === "check"){
        var arr = document.getElementsByClassName("mssv");
          for (let index = 0; index < arr.length; index++)
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
      }
    }
);
chrome.runtime.onMessage.addListener(
    function (request, sender, sendReponse)
    {
        if (request.message === "reset")
        {
            var arr = document.getElementsByClassName("mssv");
            for (let index = 0; index < arr.length; index++)
            {
                var numberInspect = document.getElementById(arr[index].textContent)
                numberInspect.value = " ";
            }
        }
    }
)

$(document).ready(function () {
  $("#open").click(function () {
    let params = 'height=500,width=650,top=200,left=450,scrollbars=yes';
    var my = window.open("DSSV1.php", 'Popups',params); 
       
    });
})