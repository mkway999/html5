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
<title>GroupMeetingArticle.jsp</title>

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
	div.button-div {font-family: 맑은 고딕; margin: 5px 0px; font-weight: bold;}
	button.article-button {background-color: #ff8000; margin: 0px 3px; border: none; color: white;}
	
	
	div.article-title
	{
		font-size: 12pt; font-weight: bold; font-family: 라인Seed; border-bottom: 1px solid #ff8000; border-top: 1px solid #ff8000;
		padding: 5px 0px; text-align: center;
	}
	
	div.article-title>div.meeting-title, div.article-title>div.meeting-category {display: inline-block;}
	span.meeting-badge {display: inline-block; border-radius: 20px; font-family: 라인Seed; color: white; background: #ff8000; padding: 1px 7px;}
	span.meeting-regular {background-color: #ff8a3d;}
	span.meeting-irregular {background-color: #ffd400;}
	
	div.article-content {text-align: center;}
	div.article-detail, div.article-vote {display: inline-block; border: 1px solid #ff8000; vertical-align: top;}
	
	/* 댓글 영역 */
	div.comment-list {border: 0px solid gray;}
	div.commenter-profile, div.comment-info, div.commenter-name, div.comment-create, div.comment-like, div.like-button
	, div.comment-detail, div.recomment-detail {display: inline-block;}
	
	div.commenter-profile {margin-right: 6px;}
	img.profile-img {width: 55px; border-radius: 50px;}
	
	div.comment {border-bottom: 1px solid #ddd; border-top: 1px solid #ddd; padding: 10px 0px; display: flex;}
	div.recomment {display: flex; padding: 10px 0px;}
	div.comment-detail, div.recomment-detail 
	{
		background-color: #ff8000; color: white; padding: 2px 9px; border-radius: 0px 60px 60px 60px; margin: 3px 0px;
		font-size: 13pt;
	}
	div.recomment-detail {background-color: #ffd400;}
	
	span.bg-like {background-color: #ff3399; font-size: 8pt;}
	i.bi-heart, i.bi-heart-fill {font-size: 17pt; color: #ff3399;}
	
	#comment-input {border:none; width: 100%;}
</style>

</head>
<body>

<!-- 2024-02-11 노은하 -->
<!-- 각 모임 게시글 상세내용 페이지 -->

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
			<div class="board-title">[ <span class="group-name">약속해조</span> ] 모임 게시판</div>
			
			<!-- 목록으로 / 이전글 / 다음글 버튼 영역 -->
			<div class="button-div">
				<button type="button" class="article-button article-list">목록으로</button>
				<button type="button" class="article-button pre-article">이전글</button>
				<button type="button" class="article-button next-article">다음글</button>
			</div>
		</div>
		
		<!-- 게시글 영역 -->
		<div class="content">
			
			<!-- 게시글 제목 영역 -->
			<div class="article-title">
				<div class="meeting-category">
					<span class="meeting-regular meeting-badge">정기모임</span>
				</div>
				<div class="meeting-title">
					우리 만날 때 됐다.
				</div>
			</div>
			
			<!-- 게시글 상세정보 영역 -->
			<div class="article-content">
				
				<!-- 게시글 내용 -->
				<div class="article-detail">
					언제<br>
					누가 발의한거고<br>
					여기서...<br>
					방문 장소는<br>
					이~<br>
					만~<br>
					큼~
				</div>
				
				<!-- 모임 투표 영역 -->
				<div class="article-vote">
					여기서<br>
					참석<br>
					불참석<br>
					투표할거고<br>
					투표현황보기
				</div>
			</div>
		</div>
		
		<!-- 댓글 영역 -->
		<div class="comment-list">
			<div class="comment-title">
				댓글 <span>6</span>개
			</div>
			
			<!-- 개별 댓글 영역 -->
			<div class="comment">
				<div class="commenter-profile">
					<img src="<%=cp %>/images/basic-profile.png" alt="profile" class="profile-img" />
				</div>
				
				<div class="comment-info">
					<div class="commenter-info">
						<div class="commenter-name">금하</div>
						<div class="comment-create">2024-02-17</div>
					</div>
					<div class="comment-detail">
						투썸가서 스초생 한판먹장
					</div>
					<div class="comment-like">
						<div class="like-button position-relative">
							<i class="bi bi-heart"></i>
							<span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-like">
								99
							</span>						
						</div>
					</div>
					
					<!-- 댓글별 대댓글 영역 -->
					<div class="recomment">
						<div class="commenter-profile">
							<img src="<%=cp %>/images/basic-profile.png" alt="profile" class="profile-img"/>
						</div>
						
						<div class="comment-info">
							<div class="commenter-info">
								<div class="commenter-name">부적응자</div>
								<div class="comment-create">2024-02-17</div>
							</div>
							<div class="recomment-detail">
								아이스박스 아니면 안 감
							</div>
							<div class="comment-like">
								<div class="like-button position-relative">
									<i class="bi bi-heart"></i>
									
									<!--
									좋아요 없음 
									<span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-like">
										99
									</span>
									 -->
								</div>
							</div>
						</div>
					</div>
					
					<div class="recomment">
						<div class="commenter-profile">
							<img src="<%=cp %>/images/basic-profile.png" alt="profile" class="profile-img"/>
						</div>
						
						<div class="comment-info">
							<div class="commenter-info">
								<div class="commenter-name">금하</div>
								<div class="comment-create">2024-02-17</div>
							</div>
							<div class="recomment-detail">
								걍 오지마
							</div>
							<div class="comment-like">
								<div class="like-button position-relative">
									<i class="bi bi-heart-fill"></i>
									<span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-like">
										5
									</span>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			
			</div>
			
		</div>
		
		<!-- 댓글 입력하기 창 -->
		<div class="write-comment">
		
			<textarea rows="" cols="" id="comment-input" placeholder="타인을 비방하는 내용의 댓글은 블라인드 처리됩니다."></textarea>
			<button type="button">등록</button>
		</div>
		
	</div>
	
	<!-- 우측 고정메뉴 영역 -->
	<div class="rightMenu"></div>
</div>

<!-- 푸터 영역 -->
<div class="footer"></div>

</body>
</html>