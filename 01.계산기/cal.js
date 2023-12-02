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

function actionCal(obj)
{
    if(num1!="")
    {
        num1 = Number(num1);
        var num2=Number(document.getElementById("txtNum").value);
        var result;
        if(calc=="+")
            result=num1+num2;
        else if(calc=="-")
            result=num1-num2;
        else if(calc=="*")
            result=num1*num2;
        else if(calc=="/")
            result=num1/num2;

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
    document.getElementById("txtNum").value=result;
    document.getElementById("txtHis").value="";
    document.getElementById("history").value+=a + " " + calc + " " + b + " = " + result + "\n";
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
