var selSize=0;
var flaCount=0;
function choiceSize()
{
    var arrSize = document.getElementsByName("selectSize");
    var msg = "사이즈를 선택하세요.";
    for(var i=0; i<arrSize.length; i++)
    {
        if (arrSize[i].checked)
        {
            msg = "선택한 사이즈는 " + arrSize[i].value + "개의 맛을 선택하실 수 있습니다.";
            selSize = Number(arrSize[i].value);
            break;
        }
    }
    alert(msg);
}

function choiceFlavor(val)
{
    if(val.checked)
        flaCount++;
    else
        flaCount--;
    if(flaCount>selSize)
    {
        alert("선택 가능 갯수를 초과했습니다.");
        val.checked=false;
        flaCount--;
    }
}
