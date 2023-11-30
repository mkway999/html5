var calc = "";
var num1;
// 클릭하는 숫자 텍스트창에 입력
function inputNum(obj)
{
    // 소수점은 한 번만!
    if(obj.value==".")
    {
        var arr = document.getElementById("txtNum").value.split("");
        for(var i=0; i<arr.length; i++)
        {
            if(arr[i]==".")
                return;
        }
    }
    document.getElementById("txtNum").value+=obj.value;
}

// 사칙연산 기호 저장하기~@.@
function actionCal(obj)
{
    calc=obj.value;
    num1=document.getElementById("txtNum").value;
    document.getElementById("txtNum").value="";
}

// 두 개의 숫자, 하나의 사칙연산 기호가 모이면 계산 시작!
function actionResult()
{
    var a = Number(num1);
    var b = Number(document.getElementById("txtNum").value);
    var result = "";
    if(calc=="+")
        result=a+b;
    else if(calc=="-")
        result=a-b;
    else if(calc=="*")
        result=a*b;
    else if(calc=="/")
        result=a/b;
    // 계산 결과 출력
    document.getElementById("txtNum").value=result;
    // 계산 기록 출력(누적)
    document.getElementById("history").value+=a + " " + calc + " " + b + " = " + result + "\n";
}

// 한 글자씩 지우기
function actionDel()
{
    var str = document.getElementById("txtNum").value;
    document.getElementById("txtNum").value=str.substring(0,str.length-1);
}
