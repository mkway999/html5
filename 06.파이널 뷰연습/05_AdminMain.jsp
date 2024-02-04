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
<title>AdminMain</title>
</head>
<body>

<div id="header">
	<c:import url="02_AdminHeader.jsp"></c:import>
</div>

<div id="mainContent">
	<div id="title">
		<h1>관리자 메인 페이지</h1>
	</div>
</div>

</body>
</html>