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
<title>FreeBoardList.jsp</title>

<link rel="stylesheet" type="text/css" href="<%=cp %>/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">

	@font-face {
    font-family: '라인Seed';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/LINESeedKR-Bd.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
	}
	div.board-info {font-family: 라인Seed;}
	div.board-title {font-size: 23pt; display: flex; align-items: center;}
	span.group-name {color: #ff8000; font-size: 30pt;}
	div.count-article {font-family: 맑은 고딕; display: flex;}
	
	div.content-column
	{
		font-size: 12pt; font-weight: bold; font-family: 라인Seed; border-bottom: 1px solid #ff8000;
		border-top: 1px solid #ff8000; display: flex; justify-content: space-between; text-align: center;
	}
	.content-column-name {padding: 5px 0px;}
	.content-column-name, .article {display: inline-block; padding: 5px 0px;}
	div.content-search {margin-bottom: 10px; text-align: right;}
	button.btn-search {background-color: #ff8000; border-radius: 30px; width: 50px; border: none;}
	button.btn-search:hover {background-color: #FF6F0F;}
	
	i.bi-search {color: white; font-size: 12pt;}
	.search-bar {height: 25px;}
	
	div.article {border-bottom: 1px solid #ddd; display: flex; text-align: center; justify-content: space-between;}
	div.article-element {display: inline-block; font-size: 11pt;}
	div.article-number.article-element {font-size: small; color: gray;}
	
	.content-column-name, .article-element {margin: 2px 5px;}
	.article-number, .view-count, .like-count {width: 80px;}
	.article-title {width: 450px;}
	.write-user {width: 100px;}
	.write-date {width: 120px;}
	
	@media screen and (max-width: 768px)
	{
		.container {max-width: 720px; width: 720px;}
	}
	
	.article:hover {background-color: #fff2ea;}
</style>

</head>
<body>

<!-- 2024-02-18 노은하 -->
<!-- 그룹내 자유게시판 글목록 페이지 -->

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
			<div class="board-title">[ <span class="group-name">약속해조</span> ] 와글와글 게시판</div>
			<div class="count-article">새글 <span id="new-article">23</span> / <span id="total-article">500</span></div>
		</div>
		
		<!-- 게시글 검색 영역 -->
		<div class="content-search">
			<form action="" class="search-form">
				<select name="searchCategory" id="" class="search-category">
					<option value="">제목</option>
					<option value="">작성자</option>
					<option value="">내용</option>
				</select>
				<input type="text" name="searchContent" class="search-bar" />
				<button type="submit" class="btn-search"><i class="bi bi-search"></i></button>
			</form>
		</div>
		
		<div class="content-list-div">
			<!-- 게시글 컬럼명 영역 -->
			<div class="content-column">
				<div class="content-column-name article-number">글번호</div>
				<div class="content-column-name article-title">제목</div>
				<div class="content-column-name write-user">작성자</div>
				<div class="content-column-name write-date">작성일</div>
				<div class="content-column-name view-count">조회수</div>
				<div class="content-column-name like-count">좋아요</div>
			</div><!-- div.content-column -->
			
			
			<!-- 게시글 목록 영역 -->
			<div class="content-list">
				<div class="article">
					<div class="article-number article-element">1</div>
					<div class="article-title article-element">우리 만날 때 됐다.</div>
					<div class="write-user article-element">노은하</div>
					<div class="write-date article-element">2024-02-13</div>
					<div class="view-count article-element">100</div>
					<div class="like-count article-element">4</div>
				</div>
				
				<div class="article">
					<div class="article-number article-element">2</div>
					<div class="article-title article-element">정말 시간이 빠른건지 느린건</div>
					<div class="write-user article-element">노금하</div>
					<div class="write-date article-element">2024-02-11</div>
					<div class="view-count article-element">35</div>
					<div class="like-count article-element">30</div>
				</div>
				
				<div class="article">
					<div class="article-number article-element">3</div>
					<div class="article-title article-element">삼일절만 기다린다</div>
					<div class="write-user article-element">땡뻘</div>
					<div class="write-date article-element">2024-01-11</div>
					<div class="view-count article-element">1</div>
					<div class="like-count article-element">0</div>
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