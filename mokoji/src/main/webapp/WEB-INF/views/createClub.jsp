<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Template Mo">
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

<title>Education - List of Meetings</title>


<!-- Bootstrap core CSS -->
<link href="././resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="././resources/style/fontawesome.css">
<link rel="stylesheet" href="././resources/style/owl.css">
<link rel="stylesheet" href="././resources/style/lightbox.css">
<link rel="stylesheet" href="././resources/style/createClub.css">
<link rel="stylesheet" href="././resources/style/templatemo-edu-meeting.css">
<!--

TemplateMo 569 Edu Meeting

https://templatemo.com/tm-569-edu-meeting

-->
</head>

<body>



	<!-- Sub Header -->
	<div class="sub-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-sm-8">
					<div class="left-content">
						<p>
							This is an educational <em>HTML CSS</em> template by TemplateMo
							website.
						</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-4">
					<div class="right-icons">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-behance"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="index.html" class="logo"> Edu Meeting </a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li><a href="index.html">Home</a></li>
							<li><a href="meetings.html" class="active">Meetings</a></li>
							<li><a href="index.html">Apply Now</a></li>
							<li class="has-sub"><a href="javascript:void(0)">Pages</a>
								<ul class="sub-menu">
									<li><a href="meetings.html">Upcoming Meetings</a></li>
									<li><a href="meeting-details.html">Meeting Details</a></li>
								</ul></li>
							<li><a href="index.html">Courses</a></li>
							<li><a href="index.html">Contact Us</a></li>
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

	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h6>Here are our upcoming meetings</h6>
					<h2>Upcoming Meetings</h2>
				</div>
			</div>
		</div>
	</section>
	<section class="meetings-page" id="meetings">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12">
							<div class="filters">
								<ul>
									<li data-filter=".soon">소셜링</li>
									<li data-filter=".imp">동호회</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="row grid">


								<%-- 소셜링 가입 폼 --%>
								<div class="col-lg-4 templatemo-item-col all att imp">
									<div class="container">
										<div class="row">
											<div class="col-lg-9 align-self-center">
												<div class="row">
													<div class="col-lg-12">
														<form id="contact" action="insertSocialing.do" method="post">
															<div class="row">
																<div class="col-lg-12">
																	<h2>소셜링 생성</h2>
																</div>
																<div class="col-lg-4">
																	<fieldset>
																		<input name="social_name" type="text" id="name" placeholder="소셜링 제목을입력하세요*" required="">
																	</fieldset>
																</div>
																<div class="col-lg-4">
																	<fieldset>
																		<input name="email" type="time" id="email" placeholder="" required="">
																	</fieldset>
																</div>
																<div class="col-lg-4">
																	<fieldset>
																		<input name="subject" type="date" id="subject" placeholder="SUBJECT...*" required="">
																	</fieldset>
																</div>
																<div class="col-lg-12">
																	<fieldset>
																		<textarea name="social_content" type="text" class="form-control" id="message" placeholder="소셜링을 자유롭게 소개해주세요*" required=""></textarea>
																	</fieldset>
																</div>
																<div>
																	<form>
																		<p>어디서 만날까요?</p>
																		<label id="offline">
																			<input type="radio" name="social_loc" value="오프라인">오프라인
																		</label>
																		<label id="online">
																			<input type="radio" name="social_loc" value="온라인">온라인
																		</label>
																	</form>
																</div>
																<label class="item--DS9">소셜링 주제를 선택해주세요!</label>
																<div class="line-50-t2V"></div>
																<form class="category1">
																	<select name="category1">
																		<option value="none">=== 선택 ===</option>
																		<option value="ca">문화</option>
																		<option value="ca">액티비티</option>
																	</select>
																</form>
																<form class="category2">
																	<select name="category2">
																		<option value="none">=== 선택 ===</option>
																		<option value="ca">전시</option>
																		<option value="ca">영화</option>
																	</select>
																</form>
																<label class="item">어떻게 멤버를 모집할까요?</label>
																<form>
																	<label id="com">
																		<input type="radio" name="memcom" value="선착순">선착순
																	</label> 
																	<label id="grant">
																		<input type="radio" name="memcom" value="승인제">승인제
																	</label>
																</form>
																<label class="item2">참여 조건</label>
																<div class="line-81-zw3"></div>
																<label class="item--ySH">성별</label>
																<form class="gender">
																	<select name="gender">
																		<option value="none">=== 선택 ===</option>
																		<option value="gender">남자</option>
																		<option value="gender">여자</option>
																	</select>
																</form>
																<img class="free-icon-gender-10283643-1-md3"
																	src="./././resources/free-icon-gender-10283643-1.png" />
																<div class="line-84-Zuj"></div>
																<label class="item3">연령</label>
																<form class="age">
																	<select name="age">
																		<option value="none">=== 선택 ===</option>
																		<option value="age">20대</option>
																		<option value="age">30대</option>
																		<option value="age">40대</option>
																		<option value="age">50대</option>
																		<option value="age">60대</option>
																		<option value="age">600대</option>
																	</select>
																</form>
																<img class="free-icon-calendar-4511116-3-Xk5" src="./././resources/free-icon-calendar-4511116-3.png" />
																<div class="line-85-6em"></div>
																<label class="item4">참여비</label>
																<div class="line-86-7Vs"></div>
																<form>
																	<label id="yes"> <input type="radio" name="socialinfo_chpay" onclick="textActive()" value="있음">있음</label>
																	<label id="no"> <input type="radio" name="socialinfo_chpay" onclick="textDisable()" value="없음">없음</label>
																	<input type="text" name="socialinfo_chpay" id="clubpay" placeholder="금액을 작성해주세요." disabled>
																	<script src="././resources/js/textDisable.js"></script>
																</form>
																<label class="item5">인원 수</label>
																<form class="per">
																	<select name="per" class="list">
																		<option>1명</option>
																		<option>2명</option>
																		<option>3명</option>
																		<option>4명</option>
																		<option>5명</option>
																		<option>6명</option>
																		<option>7명</option>
																		<option>8명</option>
																		<option>9명</option>
																	</select>
																</form>
																<div class="item6">최소 3명, 최대 인원 수는 30명 입니다.</div>
																<img class="free-icon-exclamation-button-87980-3-WXT" src="./././resources/free-icon-exclamation-button-87980-3-Wpy.png" />
																<div class="col-lg-12">
																	<fieldset>
																		<button type="submit" id="form-submit" class="button">소셜링 생성</button>
																	</fieldset>
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>



					<%-- 동호회 가입 폼 --%>
								<div class="col-lg-4 templatemo-item-col all att soon">
									<div class="row">
										<div class="col-lg-9 align-self-center">
											<div class="row">
												<div class="col-lg-12">
													<form id="contact" action="insertClub.do" method="post">
														<div class="row">
															<div class="col-lg-12">
																<h2>동호회 생성</h2>
															</div>
															<div class="col-lg-4">
																<fieldset>
																	<input name="name" type="text" id="name"
																		placeholder="동호회 이름을 입력하세요*" required="">
																</fieldset>
															</div>
															<div class="col-lg-4">
																<fieldset>
																	<input name="email" type="time" id="email" placeholder="" required="">
																</fieldset>
															</div>
															<div class="col-lg-4">
																<fieldset>
																	<input name="subject" type="date" id="subject" placeholder="SUBJECT...*" required="">
																</fieldset>
															</div>
															<div class="col-lg-12">
																<fieldset>
																	<textarea name="message" type="text" class="form-control" id="message" placeholder="소셜링을 자유롭게 소개해주세요*" required=""></textarea>
																</fieldset>
															</div>
															<div>
																<form>
																	<p>어디서 만날까요?</p>

																	<label id="offline">
																		<input type="radio" name="social_loc" value="오프라인">오프라인
																	</label>
																	<label id="online">
																		<input type="radio" name="social_loc" value="온라인">온라인
																	</label>
																</form>
															</div>
															<label class="item--DS9">소셜링 주제를 선택해주세요!</label>
															<div class="line-50-t2V"></div>
															<form class="category1">
																<select name="category1">
																	<option value="none">=== 선택 ===</option>
																	<option value="ca">문화</option>
																	<option value="ca">액티비티</option>
																</select>
															</form>
															<form class="category2">
																<select name="category2">
																	<option value="none">=== 선택 ===</option>
																	<option value="ca">전시</option>
																	<option value="ca">영화</option>
																</select>
															</form>
															<label class="item">어떻게 멤버를 모집할까요?</label>
															<form>
																<label id="com">
																	<input type="radio" name="memcom" value="선착순">선착순
																</label>
																<label id="grant">
																	<input type="radio" name="memcom" value="승인제">승인제
																</label>
															</form>
															<label class="item2">참여 조건</label>
															<div class="line-81-zw3"></div>
															<label class="item--ySH">성별</label>
															<form class="gender">
																<select name="gender">
																	<option value="none">=== 선택 ===</option>
																	<option value="gender">남자</option>
																	<option value="gender">여자</option>
																</select>
															</form>
															<img class="free-icon-gender-10283643-1-md3" src="./././resources/free-icon-gender-10283643-1.png" />
															<div class="line-84-Zuj"></div>
															<label class="item3">연령</label>
															<form class="age">
																<select name="age">
																	<option value="none">=== 선택 ===</option>
																	<option value="age">20대</option>
																	<option value="age">30대</option>
																	<option value="age">40대</option>
																	<option value="age">50대</option>
																	<option value="age">60대</option>
																</select>
															</form>
															<img class="free-icon-calendar-4511116-3-Xk5" src="./././resources/free-icon-calendar-4511116-3.png" />
															<div class="line-85-6em"></div>
															<label class="item4">참여비</label>
															<div class="line-86-7Vs"></div>
															<form>
																<label id="yes">
																	<input type="radio" name="socialinfo_chpay" onclick="textActive()" value="있음">있음
																</label>
																<label id="no">
																	<input type="radio" name="socialinfo_chpay" onclick="textDisable()" value="없음">없음
																</label>
																	<input type="text" name="socialinfo_chpay" id="clubpay" placeholder="금액을 작성해주세요." disabled>
																<script src="././resources/js/textDisable.js"></script>
															</form>
															<label class="item5">인원 수</label>
															<form class="per">
																<select name="per" class="list">
																	<option>1명</option>
																	<option>2명</option>
																	<option>3명</option>
																	<option>4명</option>
																	<option>5명</option>
																	<option>6명</option>
																	<option>7명</option>
																	<option>8명</option>
																	<option>9명</option>
																</select>
															</form>
															<div class="item6">최소 3명, 최대 인원 수는 30명 입니다.</div>
															<img class="free-icon-exclamation-button-87980-3-WXT" src="./././resources/free-icon-exclamation-button-87980-3-Wpy.png" />
															<div class="col-lg-12">
																<fieldset>
																	<button type="submit" id="form-submit" class="button">동호회 생성</button>
																</fieldset>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<p>
				Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved. <br>
				Design: <a href="https://templatemo.com" target="_parent"
					title="free css templates">TemplateMo</a> <br> Distibuted By:
				<a href="https://themewagon.com" target="_blank"
					title="Build Better UI, Faster">ThemeWagon</a>
			</p>
		</div>
	</section>


	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="././resources/vendor/jquery/jquery.min.js"></script>
	<script src="././resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="././resources/js/isotope.min.js"></script>
	<script src="././resources/js/owl-carousel.js"></script>
	<script src="././resources/js/lightbox.js"></script>
	<script src="././resources/js/tabs.js"></script>
	<script src="././resources/js/isotope.js"></script>
	<script src="././resources/js/video.js"></script>
	<script src="././resources/js/slick-slider.js"></script>
	<script src="././resources/js/custom.js"></script>
	<script>
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>
</html>
