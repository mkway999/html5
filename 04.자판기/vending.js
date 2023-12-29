var currentMoney;

function inputMoney()
{
    var money = Number(document.getElementById("txt_input").value);
    var current = document.getElementById("txt_current");
    current.value = Number(current.value)+money;
    currentMoney = current.value;
    document.getElementById("txt_input").value="";
    document.getElementById("txt_input").focus();
}