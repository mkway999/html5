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
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">

	@font-face {
    font-family: '라인Seed';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/LINESeedKR-Bd.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
	}
	div.body {width: 1100px; margin: auto; text-align: center;}
	div.board-info {font-family: 라인Seed;}
	div.board-title {font-size: 23pt; display: flex; align-items: center;}
	span.group-name {color: #ff8000; font-size: 30pt;}
	div.count-article {font-family: 맑은 고딕; display: flex;}
	
	div.content-column {font-size: 12pt; font-weight: bold; font-family: 라인Seed; border-bottom: 1px solid #ff8000; border-top: 1px solid #ff8000; text-align: center;}
	select.column-filter {background-color: #ff8a3d; border: none; text-align: center; color: white; border-radius: 30px; padding: 5px;}
	select.column-filter:hover {background-color: #ff6f0f;}
	option {background: white; text-align: center; color: black; font-family: 맑은 고딕;}
	.content-column-name {padding: 5px 0px;}
	.content-column-name, .article {display: inline-block; margin-top: 5px; margin-bottom: 5px;}
	div.content-search {margin-bottom: 10px; text-align: right;}
	button.btn-search {background-color: #ff8000; border-radius: 30px; width: 50px; border: none;}
	button.btn-search:hover {background-color: #FF6F0F;}
	
	i.bi-search {color: white; font-size: 12pt;}
	.search-bar {height: 25px;}
	
	span.meeting-vote {font-family: 라인Seed; background-color: red; border-radius: 50px; vertical-align: top; color: white;}
	span.meeting-complete {font-family: 라인Seed; background-color: blue; border-radius: 50px; vertical-align: top; color: white;}
	span.meeting-cancel {font-family: 라인Seed; background-color: gray; border-radius: 50px; vertical-align: top; color: white;}
	div.article {border-bottom: 1px solid #ddd; display: block; text-align: center;}
	div.article-element {display: inline-block; font-size: 11pt;}
	div.article-number.article-element {font-size: small; color: gray;}
	
	.content-column-name, .article-element {margin: 2px 5px;}
	.article-number {width: 80px;}
	.meeting-category {width: 100px;}
	.article-title {width: 350px;}
	.write-user {width: 100px;}
	.write-date {width: 120px;}
	.meeting-date {width: 120px;}
	.meeting-status {width: 120px;}
	
	span.meeting-badge {display: inline-block; border-radius: 20px; font-family: 라인Seed; color: white; background: #ff8000; padding: 1px 7px;}
	span.meeting-regular {background-color: #ff8a3d;}
	span.meeting-irregular {background-color: #ffd400;}
	span.meeting-vote {background-color: #d1180b;}
	span.meeting-complete {background-color: #0067a3;}
	span.meeting-cancel {background-color: gray;}
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
<div class="body">

	<!-- 좌측 고정메뉴 영역 -->
	<div class="leftMenu"></div>
	
	<!-- 중앙 주요 컨텐츠 영역 -->
	<div class="centerContent">
	
		<!-- 게시판 정보 영역 -->
		<div class="board-info">
			<div class="board-title">[ <span class="group-name">약속해조</span> ] 모임 게시판</div>
			<div class="count-article">새글 <span id="new-article">23</span> / <span id="total-article">500</span></div>
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
		
		<div class="content-list-div">
			<!-- 게시글 컬럼명 영역 -->
			<div class="content-column">
				<form action="" class="filter-form">
					<div class="content-column-name article-number">글번호</div>
	
					<!-- 전체보기 / 정기모임 / 번개모임 -->
					<div class="content-column-name meeting-category">
						<select class="column-filter" name="meeting-category" id="">
							<option selected="selected">모임종류</option>
							<option value="regular">정기모임</option>
							<option value="irregular">번개모임</option>
						</select>
					</div>
					
					<div class="content-column-name article-title">제목</div>
					<div class="content-column-name write-user">발의자</div>
					<div class="content-column-name write-date">발의일</div>
					
					<!-- 전체보기 / 빠른순 / 느린순 -->
					<div class="content-column-name meeting-date">
						<select name="meeting-date" id="" class="column-filter">
							<option selected="selected">모임일시</option>
							<option value="">빠른순</option>
							<option value="">느린순</option>
						</select>
					</div>
				
					<!-- 전체보기 / 참석여부 확인중 / 확정된 모임 / 철회된 모임 -->
					<div class="content-column-name meeting-status">
						<select class="column-filter" name="meeting-state" id="">
							<option selected="selected">모임상태</option>
							<option value="">참석여부 확인중</option>
							<option value="">확정된 모임</option>
							<option value="">철회된 모임</option>
						</select>			
					</div>
				</form>
			</div><!-- div.content-column -->
			
			
			<!-- 게시글 목록 영역 -->
			<div class="content-list">
				<div class="article">
					<div class="article-number article-element">1</div>
					<div class="meeting-category article-element">
						<span class="meeting-regular meeting-badge">정기모임</span>
					</div>
					<div class="article-title article-element">우리 만날 때 됐다.</div>
					<div class="write-user article-element">노은하</div>
					<div class="write-date article-element">2024-02-13</div>
					<div class="meeting-date article-element">2024-02-14</div>
					<div class="meeting-status article-element">
						<span class="meeting-vote meeting-badge">참석여부 확인중</span>
					</div>
				</div>
				<div class="article">
					<div class="article-number article-element">2</div>
					<div class="meeting-category article-element">
						<span class="meeting-irregular meeting-badge">번개모임</span>
					</div>
					<div class="article-title article-element">정말 시간이 빠른건지 느린건</div>
					<div class="write-user article-element">노금하</div>
					<div class="write-date article-element">2024-02-11</div>
					<div class="meeting-date article-element">2024-02-12</div>
					<div class="meeting-status article-element">
						<span class="meeting-complete meeting-badge">모임확정</span>
					</div>
				</div>
				<div class="article">
					<div class="article-number article-element">3</div>
					<div class="meeting-category article-element">
						<span class="meeting-regular meeting-badge">정기모임</span>
					</div>
					<div class="article-title article-element">삼일절만 기다린다</div>
					<div class="write-user article-element">땡뻘</div>
					<div class="write-date article-element">2024-01-11</div>
					<div class="meeting-date article-element">2024-01-12</div>
					<div class="meeting-status article-element">
						<span class="meeting-cancel meeting-badge">모임철회</span>
					</div>
				</div>
			</div>
		
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