<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminHeader</title>
<style type="text/css">
	#content
	{
	    height: 80px;
	    background-color: bisque;
	    text-align: center;
	}
	#mainLogo
	{
	    background-color: aquamarine;
	    display: inline-block;
	    height: 100%;
	    line-height: 80px;
	    margin: 0px 10px;
	}
	div.menuTabs
	{
	    display: inline-block;
	    vertical-align: top;
	}
	div.tab
	{
	    display: inline-block;
	    background-color: gray;
	    height: 50%;
	    line-height: 80px;
	    margin: 0px 20px;
	    width: 150px;
	}
	a, a:visited
	{
		display: inline-block;
		text-decoration: none;
		color: white;
		background-color: black;
		height: 50px;
		vertical-align: middle;
		line-height: 50px;
	}
	a:hover
	{
		background-color: white;
		color: black;
	}
</style>
</head>
<body>

    <div id="content">
        
        <div class="menuTabs">
            <div class="tab" id="adminAccount"><a href="03_AdminAccountList.jsp">관리자 계정관리</a></div>
            <div class="tab" id="memberAccount"><a href="04_MemberAccountList.jsp">회원 계정관리</a></div>
        </div>
        <div id="mainLogo"><a href="05_AdminMain.jsp">여기는 로고가 들어갈거예요...</a></div>
        <div class="menuTabs">
            <div class="tab" id="announcement">공지사항 관리</div>
            <div class="tab" id="faq">FAQ 관리</div>
            <div class="tab" id="qna"> 1:1문의 관리</div>
            <div class="tab" id="report">신고내역 관리</div>
        </div>
    </div>

</body>
</html>