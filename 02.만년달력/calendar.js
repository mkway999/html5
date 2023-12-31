var tableNode;
var tbodyNode=null;

function createTable()
{
    tableNode = document.getElementById("tblCalendar");

    if(tableNode.childNodes[0].nodeType==1)
        tbodyNode = tableNode.childNodes[0];
    else
        tbodyNode = tableNode.childNodes[1];

    for(var i = tbodyNode.childNodes.length-1; i>=0; i--)
        tbodyNode.removeChild(tbodyNode.childNodes[i]);
    
    var trNode = document.createElement("tr");
    var arrWeek = ["일", "월", "화", "수", "목", "금", "토"];

    for(var i=0; i<arrWeek.length; i++)
        trNode.appendChild(createNode(arrWeek[i]));
    tbodyNode.appendChild(trNode);
}

function createNode(val)
{
    var tdNode = document.createElement("td");
    var txtNode = document.createTextNode(val);
    tdNode.appendChild(txtNode);
    return tdNode;
}

function actionCalendar()
{
    
    createTable();
    var trNode = document.createElement("tr");
    var year = Number(document.getElementById("txtYear").value);
    var month = Number(document.getElementById("txtMonth").value);
    if(month>12 || month<1)
    {
        alert("입력한 월을 확인해주세요.");
        onloadSet();
        return;
    }
    var arrDate = [31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    var nalsu = (year-1)*365 + parseInt((year-1)/4) - parseInt((year-1)/100) + parseInt((year-1)/400);
    if(year%4==0 && year%100!=0 || year%400==0)
        arrDate[1] = 29;
    else
        arrDate[1] = 28;

    for(var i=0; i<month-1; i++)
        nalsu += arrDate[i];

    // 월요일은 '0' ~ 일요일은 '6'
    var week = Number(nalsu%7);
    if(week != 6)
    {
        for(var i=0; i<=week; i++)
            trNode.appendChild(createNode(" "));
    }

    for(var i=1; i<=arrDate[month-1];i++)
    {
        trNode.appendChild(createNode(i));
        if((week+1+i)%7==0 || i==arrDate[month-1])
        {
            tbodyNode.appendChild(trNode);
            trNode = document.createElement("tr");
        }
    }
}

function onloadSet()
{
    var date = new Date();
    document.getElementById("txtYear").value = date.getFullYear();
    document.getElementById("txtMonth").value = date.getMonth()+1;
    actionCalendar();
}

function actionYearChange(val)
{
    if(val=="+")
    {
        document.getElementById("txtYear").value = 
        Number(document.getElementById("txtYear").value)+1;
    }
    else if(val=="-")
    {
        document.getElementById("txtYear").value = 
        Number(document.getElementById("txtYear").value)-1;
    }
    else
    {
        alert("도대체 뭘 누르신 건가요..?");
        return;
    }
    actionCalendar();
}

function actionMonthChange(val)
{
    if(val=="+")
    {
        if(document.getElementById("txtMonth").value=="12")
        {
            alert("1월 이상 12월 이하의 달력만 조회가 가능합니다.");
            return;
        }
        document.getElementById("txtMonth").value = 
        Number(document.getElementById("txtMonth").value)+1;
    }
    else if(val=="-")
    {
        if(document.getElementById("txtMonth").value=="1")
        {
            alert("1월 이상 12월 이하의 달력만 조회가 가능합니다.");
            return;
        }
        document.getElementById("txtMonth").value = 
        Number(document.getElementById("txtMonth").value)-1;
    }
    else
    {
        alert("도대체 뭘 누르신 건가요..?");
        return;
    }

    actionCalendar();
}
