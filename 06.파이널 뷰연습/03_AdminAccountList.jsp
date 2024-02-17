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
<title>AdminAccountList</title>

<link rel="stylesheet" type="text/css" href="<%=cp %>/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<style type="text/css">
	div#accountMenu
	{
		margin: auto;
		text-align: center;
	}
	div.menuDiv
	{
		display: inline-block;
		width: 150px;
	}
	span.menuSpan
	{
		display: block;
		background-color: green;
		width: inherit;
	}
	span.dataSpan
	{
		display: block;
	}
	
</style>
</head>
<body>

<div id="header">
	<c:import url="AdminHeader.jsp"></c:import>
</div>

<div id="mainContent">
	<div id="title">
		<h1>관리자 계정 목록</h1>
	</div>
	<div id="accountMenu">
		<div class="menuDiv">
			<span class="menuSpan">번호</span>
			<span class="dataSpan">1</span>
			<span class="dataSpan">2</span>
		</div>
		<div class="menuDiv">
			<span class="menuSpan">코드</span>
			<span class="dataSpan">AC000</span>
			<span class="dataSpan">AC001</span>
		</div>
		<div class="menuDiv">
			<span class="menuSpan">이름</span>
			<span class="dataSpan">총관리자</span>
			<span class="dataSpan">노은하</span>
		</div>
		<div class="menuDiv">
			<span class="menuSpan">전화번호</span>		
			<span class="dataSpan">010-000-0000</span>
			<span class="dataSpan">010-1234-5678</span>
		</div>
		<div class="menuDiv">
			<span class="menuSpan">이메일</span>
			<span class="dataSpan">mainAdmin@test.com</span>
			<span class="dataSpan">neh@test.com</span>
		</div>
		<div class="menuDiv">
			<span class="menuSpan">생년월일</span>
			<span class="dataSpan">2024-02-04</span>
			<span class="dataSpan">1999-09-16</span>
		</div>
		<div class="menuDiv">
			<span class="menuSpan">수정</span>
			<span class="dataSpan"><button type="button">수정</button></span>
			<span class="dataSpan"><button type="button">수정</button></span>
		</div>
		<div class="menuDiv">
			<span class="menuSpan">삭제</span>
			<span class="dataSpan"><button type="button">삭제</button></span>
			<span class="dataSpan"><button type="button">삭제</button></span>
		</div>
	</div>
</div>

<div id="footer">
	하단 메뉴가 들어갈 거에용...
</div>

</body>
</html>