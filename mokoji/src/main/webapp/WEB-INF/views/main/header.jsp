<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="go.do" class="logo"> MOKOJI </a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<div class="autocomplete">
								<input id="search" type="text" placeholder="Search">
							</div>
							<li><a href="go.do" class="active">홈으로</a></li>
							<li><a href="meetings.html">챌린지</a></li>
							<li><a href="gosocial.do">소셜</a></li>
							<li><a href="goclub.do">커뮤니티</a></li>
							<li><a href="goGiftshop.do">기프티콘</a></li>
							<li class="has-sub"><a href="javascript:void(0)">모임</a>
								<ul class="sub-menu">
									
									<li><a href="gocreateClub.do">모임생성</a></li>
									<li><a href="meeting-details.html">모임참가</a></li>
								</ul>
							</li>
							<c:if test="${name != null}">
								<li><a>${name}님</a>
								<li><a id="gnb_logout_button">로그아웃</a></li>
							</li>
							</c:if>
						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->
</body>
</html>