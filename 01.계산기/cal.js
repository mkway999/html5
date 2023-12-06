var calc="";
var num1="";

function inputNum(obj)
{
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

function calculate(number)
{
    num1 = Number(num1);
    var num2 = Number(number);
    var result = 0;
    if(calc=="+")
            result=num1+num2;
        else if(calc=="-")
            result=num1-num2;
        else if(calc=="*")
            result=num1*num2;
        else if(calc=="/")
            result=num1/num2;
    return result;
}

function actionCal(obj)
{
    if(num1!="")
    {
        var num2 = Number(document.getElementById("txtNum").value);
        var result = calculate(num2);
        document.getElementById("history").value+=num1 + " " + calc + " " + num2 + " = " + result + "\n";
        num1 = result;
        calc = obj.value;
        document.getElementById("txtHis").value = result + " " + calc;
        document.getElementById("txtNum").value = "";
    }
    else
    {
        calc=obj.value;
        num1=document.getElementById("txtNum").value;
        document.getElementById("txtHis").value=num1 + " " + calc;
        document.getElementById("txtNum").value="";
    }
}

function actionResult()
{
    var num2 = Number(document.getElementById("txtNum").value);
    var result = calculate(num2);
    document.getElementById("txtNum").value=result;
    document.getElementById("txtHis").value="";
    document.getElementById("history").value+=num1 + " " + calc + " " + num2 + " = " + result + "\n";
    actionReset();
}

function actionDel()
{
    var str = document.getElementById("txtNum").value;
    document.getElementById("txtNum").value=str.substring(0,str.length-1);
}

function actionReset()
{
    calc="";
    num1="";
}
