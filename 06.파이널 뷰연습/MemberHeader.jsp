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
<title>MemberHeader.jsp</title>

<link rel="stylesheet" type="text/css" href="<%=cp %>/css/bootstrap.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<script type="text/javascript" src="<%=cp%>/js/bootstrap.bundle.min.js"></script>

<style type="text/css">

	/* 공통 css */
	.nav, .navbar {background-color: white !important;}
	.nav-item {margin-top: 2px; margin-right: 15px;}
	.icon {display: inline-block; border-radius: 50px; padding: 1px 12px;}
	.bi {font-size: 20pt; color: #ff8000;}
	.btn {--bs-btn-padding-x: none; --bs-btn-padding-y: none;}
	.btn.show {border: none;}
	.hover-text {display: none; border: 1px solid black; position: absolute; padding: 2px 5px; font-size: 9pt;}
	.icon-main:hover + .hover-text {display: block;}
	.icon:hover + .hover-text {display: block;}
	
	@media screen and (min-width: 625px)
	{
		.header-menu {margin: 2px 150px;}
		.small-menu {display: none;}
	
	}
	
	@media screen and (max-width: 625px)
	{
		.header-menu {margin: 2px 10px;}
		.default-menu {display: none;}
		.dropdown-toggle::after {display: none;}
		.dropdown-item {--bs-dropdown-link-active-bg : #ff8000;}
		
	}
</style>
</head>
<body>

<!-- 로그인 성공한 회원들 페이지에 띄워주는 헤더 메뉴들 -->
<!-- 2023-02-09 노은하 -->

<div class="header-menu row">
	<nav class="navbar bg-body-tertiary">
	
		<div>
			<a class="icon-main"><img alt="logo" src="<%=cp%>/images/로고5_80-40.png"></a>
			<div class="hover-text">메인 홈페이지로 이동</div>
		</div>
		
		<div>
			<ul class="nav justify-content-end">
			
				<li class="nav-item">
					<div class="icon"><i class="bi bi-bell-fill"></i></div>
					<div class="hover-text">알림 보기</div>
				</li>
				
				<!-- 웹 브라우저가 625 이상 일때 보여지는 메뉴들 -->
				<li class="nav-item default-menu">
					<div class="icon"><i class="bi bi-person-circle"></i></div>
					<div class="hover-text">정보 수정</div>
				</li>
				<li class="nav-item default-menu">
					<div class="icon"><i class="bi bi-door-open-fill"></i></div>
					<div class="hover-text">로그아웃</div>
				</li>
				
				<!-- 웹 브라우저가 625 이하 일때 보여지는 메뉴 -->
				<li class="nav-item small-menu">
					<div class="icon dropdown">
						<button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
							<i class="bi bi-list"></i>
						</button>
						<ul class="dropdown-menu dropdown-menu-end dropdown-menu-start">
							<li><a href="" class="dropdown-item">정보수정</a></li>
							<li><a href="" class="dropdown-item">로그아웃</a></li>
						</ul>
					</div>
				</li>
				
			</ul>
		</div>
	</nav>
</div>


</body>
</html>