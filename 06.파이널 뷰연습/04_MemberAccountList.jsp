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
<title>MemberAccountList.jsp</title>
<style type="text/css">

	div#memberList
	{
		margin: auto;
		text-align: center;
	}
	
	span.title
	{
		background-color: gray;
		height: 30px;
		vertical-align: top;
		line-height: 30px;
		margin-bottom: 5px;
	}
	
	span.memberNum
	{
		display: inline-block;
		width: 50px;
		text-align: center;
	}
	span.memberCode
	{
		display: inline-block;
		width: 80px;
		text-align: center;
	}
	span.memberName, span.memberGroup, span.suspensionBtn
	{
		display: inline-block;
		width: 100px;
		text-align: center;
	}
	span.memberTel, span.memberBirth
	{
		display: inline-block;
		width: 150px;
		text-align: center;
	}
	span.memberEmail
	{
		display: inline-block;
		width: 200px;
		text-align: center;
	}

</style>
</head>
<body>

<div id="header">
	<c:import url="02_AdminHeader.jsp"></c:import>
</div>

<div id="mainContent">
	<div id="title">
		<h1>회원 계정 목록</h1>
	</div>
	
	<div id="memberList">
		<div id="menuTitle">
			<span class="title memberNum">번호</span>
			<span class="title memberCode">코드</span>
			<span class="title memberName">이름</span>
			<span class="title memberTel">전화번호</span>
			<span class="title memberEmail">이메일</span>
			<span class="title memberBirth">생년월일</span>
			<span class="title memberGroup">가입 그룹 수</span>
			<span class="title suspensionBtn">회원정지</span>
		</div>
		<div class="memberInfo">
			<span class="memberNum">1</span>
			<span class="memberCode">MC001</span>
			<span class="memberName">김낑태</span>
			<span class="memberTel">010-1111-1111</span>
			<span class="memberEmail">kkt@test.com</span>
			<span class="memberBirth">1999-01-01</span>
			<span class="memberGroup">1</span>
			<span class="suspensionBtn"><button type="button">계정정지</button></span>
		</div>
		<div class="memberInfo">
			<span class="memberNum">2</span>
			<span class="memberCode">MC002</span>
			<span class="memberName">김밍지</span>
			<span class="memberTel">010-2222-2222</span>
			<span class="memberEmail">kmz@test.com</span>
			<span class="memberBirth">1998-05-05</span>
			<span class="memberGroup">0</span>
			<span class="suspensionBtn"><button type="button">계정정지</button></span>
		</div>
	</div>
	
</div>

<div id="footer">
	하단 메뉴가 들어갈 거에용...
</div>


</body>
</html>