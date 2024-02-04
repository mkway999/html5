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
<title>AdminLoginForm</title>
<style type="text/css">
	#header
	{
	    background-color: cornflowerblue;
	    height: 70px;
	}
	#content
	{
	    margin: auto;
	    text-align: center;
	    height: 600px;
	}
	#footer
	{
	    background-color: violet;
	}
	.loginDiv
	{
	    display: inline-block;
	    vertical-align: middle;
	    height: 50px;
	    margin-top: 250px;
	}
	button#login
	{
	    height: inherit;
	}
	span.inputSpan
	{
	    display: inline-block;
	    width: 250px;
	    text-align: right;
	    margin-bottom: 5px;
	}
	span#findSpan
	{
	    font-size: small;
	    display: block;
	    text-align: left;
	}
	#findLink, #findLink:visited
	{
	    text-decoration: none;
	}       
</style>
</head>

<body>

	<div id="header"><span><a>메인으로 돌아가기</a></span></div>

	<div id="content">
	     <form id="loginForm">
	         <div class="loginDiv" id="accountInput">
	             <span class="inputSpan">아이디 <input type="text" name="userId" id="userId" placeholder="관리자코드"></span><br>
	             <span class="inputSpan">비밀번호 <input type="password" name="userPwd" id="userPwd" placeholder="비밀번호"></span><br>
	             <span id="findSpan"><a href="" id="findLink">아이디/비밀번호 찾기</a></span>
	         </div>
	         <div class="loginDiv">
	             <button type="submit" id="login">Login</button>
	         </div>
	     </form>
	</div>
	
	<div id="footer">하단메뉴들</div>

</body>
</html>