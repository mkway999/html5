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
<title>GroupMeetingList.jsp</title>

<link rel="stylesheet" type="text/css" href="<%=cp %>/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<style type="text/css">

	div.content-column {background-color: #ff8000; padding: 7px 10px; color: white; font-weight: bold; text-align: center;}
	select.column-filter {background-color: #ff8a3d; border: none; text-align: center; color: white; border-radius: 30px; padding: 5px;}
	select.column-filter:hover {background-color: #ff6f0f;}
	option {background: white; text-align: center; color: black;}
	.content-column-name {margin: 0px 40px;}
	.content-list {border: 1px solid black;}
	div.content-search {margin: 10px 0px;}
	button.btn-search {background-color: #ff8000; border-radius: 30px; width: 50px; border: none;}
	button.btn-search:hover {background-color: #FF6F0F;}
	i.bi-search {color: white; font-size: 12pt;}
	.search-bar {height: 25px;}
</style>

</head>
<body>

<!-- 2024-02-11 노은하 -->
<!-- 각 그룹별 모임 목록 페이지 -->

<!-- 헤더 영역 -->
<div class="header">
	<c:import url="MemberHeader.jsp"></c:import>
</div>

<!-- 상단메뉴 영역 -->
<div class="menuList">
	이런메뉴... 저런메뉴... 조런메뉴...
</div>

<!-- 주요 콘텐츠 영역 -->
<div class="container">

	<!-- 좌측 고정메뉴 영역 -->
	<div class="leftMenu"></div>
	
	<!-- 중앙 주요 컨텐츠 영역 -->
	<div class="centerContent">
	
		<!-- 게시판 정보 영역 -->
		<div class="board-info">
			<h1>약속해조의 모임 게시판</h1>
			새글 23 / 500
		</div>
		
		<!-- 게시글 검색 영역 -->
		<div class="content-search">
			<form action="" class="search-form">
				<select name="searchCategory" id="" class="search-category">
					<option value="">제목</option>
					<option value="">발의자</option>
					<option value="">모임일</option>
				</select>
				<input type="text" name="searchContent" class="search-bar" />
				<button type="submit" class="btn-search"><i class="bi bi-search"></i></button>
			</form>
		</div>
		
		<!-- 게시글 컬럼명 영역 -->
		<div class="content-column">
			<form action="" class="filter-form">
				<span class="content-column-name">번호</span>

				<!-- 전체보기 / 정기모임 / 번개모임 -->
				<select class="content-column-name column-filter" name="meeting-category" id="">
					<option selected="selected">모임종류</option>
					<option value="regular">정기모임</option>
					<option value="irregular">번개모임</option>
				</select>
				
				<span class="content-column-name">제목</span>
				<span class="content-column-name">발의자</span>
				<span class="content-column-name">발의일</span>
				
				<!-- 전체보기 / 빠른순 / 느린순 -->
				<select name="meeting-date" id="" class="content-column-name column-filter">
					<option selected="selected">모임일시</option>
					<option value="">빠른순</option>
					<option value="">느린순</option>
				</select>
			
				<!-- 전체보기 / 참석여부 확인중 / 확정된 모임 / 철회된 모임 -->
				<select class="content-column-name column-filter" name="meeting-state" id="">
					<option selected="selected">모임상태</option>
					<option value="">참석여부 확인중</option>
					<option value="">확정된 모임</option>
					<option value="">철회된 모임</option>
				</select>			
			</form>
		</div><!-- div.content-column -->
		
		
		<!-- 게시글 목록 영역 -->
		<div class="content-list">
			1번~ 정기모임 @@@이 발의한 1번째 정기모임입니다. @@@ 2024-02-12 2024-02-29 참석여부 확인중<br>
			1번~ 정기모임 @@@이 발의한 1번째 정기모임입니다. @@@ 2024-02-12 2024-02-29 참석여부 확인중<br>
			1번~ 정기모임 @@@이 발의한 1번째 정기모임입니다. @@@ 2024-02-12 2024-02-29 참석여부 확인중<br>
			1번~ 정기모임 @@@이 발의한 1번째 정기모임입니다. @@@ 2024-02-12 2024-02-29 참석여부 확인중<br>
			1번~ 정기모임 @@@이 발의한 1번째 정기모임입니다. @@@ 2024-02-12 2024-02-29 참석여부 확인중<br>
			1번~ 정기모임 @@@이 발의한 1번째 정기모임입니다. @@@ 2024-02-12 2024-02-29 참석여부 확인중<br>
		</div>
		
		<!-- 페이징 처리 영억 -->
		<div class="paging" align="center">
			1 2 3 ... 9
		</div>
		
	</div>
	
	<!-- 우측 고정메뉴 영역 -->
	<div class="rightMenu"></div>
</div>

<!-- 푸터 영역 -->
<div class="footer"></div>

</body>
</html>