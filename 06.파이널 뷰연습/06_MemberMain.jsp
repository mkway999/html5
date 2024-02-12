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
<title>MemberMain.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/bootstrap.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<script type="text/javascript" src="<%=cp%>/js/bootstrap.bundle.min.js"></script>
<style type="text/css">

	.header, .footer {background-color: gray; padding: 50px 0px;}

</style>
</head>
<body>

<!-- 2024-02-07 노은하 -->
<!-- 회원이 로그인 성공했을 때 보여지는 메인 페이지 -->

<!-- <div class="header">대충 여기 헤더 들어갈거임</div> -->
<c:import url="MemberHeader.jsp"></c:import>

<div class="container content">여기 내용 들어갈거임</div>

<div class="footer">대충 여기 푸터 들어갈거임</div>

</body>
</html>