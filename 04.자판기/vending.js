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

function subCount(objId)
{
    var product = document.getElementById(objId);
    if(Number(product.value)<=0)
    {
        alert("최수 주문 수량은 1개 이상입니다.");
        return;
    }
    product.value = Number(product.value)-1;
}

function addCount(objId)
{
    var product = document.getElementById(objId);
    if(Number(product.value)>=99)
    {
        alert("최대 주문 수량은 99개 입니다.");
        return;
    }
    product.value = Number(product.value)+1;
}