var currentMoney = 0;
var totalMoney = 0;

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
    document.getElementById("totalPrice").value = Number(document.getElementById("totalPrice").value) - Number(document.getElementById(objId+"Price").value);
    totalMoney = Number(document.getElementById("totalPrice").value);
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
    document.getElementById("totalPrice").value = Number(document.getElementById("totalPrice").value) + Number(document.getElementById(objId+"Price").value);
    totalMoney = Number(document.getElementById("totalPrice").value);
}

function actionBuying()
{
    if(Number(currentMoney)<Number(totalMoney))
    {
        alert("잔액이 부족합니다.");
        return;
    }
    var money = currentMoney - totalMoney;
    alert("결제가 완료되었습니다.\n잔여 금액은 ["+money+"원] 입니다.");
    currentMoney = money;
    document.getElementById("txt_current").value = money;
    document.forms[0].reset();
}

function resetTotal()
{
    totalMoney = 0;
}