<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Template Mo">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<title>Education - List of Meetings</title>


<!-- Bootstrap core CSS -->
<link href="././resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="././resources/style/fontawesome.css">
<link rel="stylesheet"
	href="././resources/style/templatemo-edu-meeting.css">
<link rel="stylesheet" href="././resources/style/owl.css">
<link rel="stylesheet" href="././resources/style/lightbox.css">
<link rel="stylesheet" href="././resources/style/createClub.css">


<!--

TemplateMo 569 Edu Meeting

https://templatemo.com/tm-569-edu-meeting

-->
</head>

<body>


	<%@ include file="main/header.jsp"%>

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
									<li data-filter=".chal" class="active">챌린지</li>
									<li data-filter=".social">소셜링</li>
									<li data-filter=".club">모임</li>
									<li>${ code }</li>
								</ul>

							</div>
						</div>

						<div class="col-lg-12">
							<div class="row grid">
							
							
								<form action="challengeinsert.do" enctype="multipart/form-data">
									<section class="contact-us" id="contact">
										<div class="templatemo-item-col all chal">
											<div class="row">
												<div class="col-lg-9 align-self-center">
													<div class="row">
														<div class="col-lg-12">
															<div id="contact" method="post">
																<div class="row">
																	<div class="col-lg-12">
																		<h2>챌린지 생성</h2>
																	</div>
																	<div class="col-lg-4">
																		<input type="hidden" value="${ code }" name="mem_code">
																		<fieldset>
																			<input name="chall_name" type="text" id="chall_name"
																				placeholder="챌린지 제목을입력하세요*" required
																				autocomplete="off">
																		</fieldset>
																	</div>

																	<div class="col-lg-4">
																		<fieldset>
																			<input name="chall_startdate" type="date"
																				id="chall_startdate" required autocomplete="off" />
																		</fieldset>
																	</div>

																	<div class="col-lg-4">
																		<fieldset>
																			<input type="date" name="chall_enddate"
																				id="chall_enddate" required autocomplete="off" />
																		</fieldset>
																	</div>


																	<div>
																		<label class="rectangle-232-vNM">
																			<div id="challimage_container"></div> <input
																			name="challengefile" type="file" id="chall_pic"
																			accept="image/*" onchange="setThumbnail1(event);"
																			placeholder="이미지를 선택해주세요" name="challimgup" /> <script
																				src="././resources/js/socialuploadimg.js"></script>
																	</div>
																	<div class="col-lg-12">
																		<fieldset>
																			<textarea name="chall_content" type="text"
																				class="form-control" id="chall_content"
																				placeholder="챌린지를 자유롭게 소개해주세요*" required
																				autocomplete="off"></textarea>
																		</fieldset>
																	</div>
																	<div>
																		<div>
																			<p>어디서 만날까요?</p>

																			<label id="offline"> <input type="radio"
																				id="radio" name="chall_loc" value="오프라인">오프라인
																			</label> <label id="online"> <input type="radio"
																				id="radio" name="chall_loc" value="온라인">온라인
																			</label>
																		</div>
																	</div>
																	<br> <label class="item--DS9">챌린지 주제를
																		선택해주세요!</label> </br>
																	<div class="line-50-t2V"></div>


																	<div class="field-wrap">
																		<label> 관심사<span class="req"></span></label> <select
																			id="cthigh_name2" name="cthigh_name"
																			onchange="remove2()">
																			<option value="선택" selected>====</option>
																			<c:forEach items="${ catehighList }" var="category">
																				<option value="${ category.cthigh_name }">${ category.cthigh_name }</option>
																			</c:forEach>
																		</select> <select id="mem_favorite4" name="ctmid_code">

																			<option value="선택">====</option>


																		</select>
																	</div>

																	<label class="item">어떻게 멤버를 모집할까요?</label> <label
																		class="item2">참여 조건</label>
																	<div class="line-81-zw3"></div>
																	<label class="item--ySH">성별</label>
																	<div class="gender">
																		<select name="chall_gender">
																			<option value="none">=== 선택 ===</option>

																			<option value="누구나">누구나</option>
																			<option value="남자">남자</option>
																			<option value="여자">여자</option>
																		</select>
																	</div>

																	<div class="line-84-Zuj"></div>
																	<label class="item3">연령</label>
																	<div class="age">
																		<select name="chall_age">
																			<option value="none">=== 선택 ===</option>
																			<option value="20">20대</option>
																			<option value="30">30대</option>
																			<option value="40">40대</option>
																			<option value="50">50대</option>
																			<option value="60">60대</option>
																		</select>
																	</div>
																	<div class="line-85-6em"></div>

																	<label class="item5">인원 수</label>
																	<div class="per">
																		<input name="chall_tot" type="number" min='3' max='30'
																			step='1'>
																	</div>

																	<div class="item6">최소 3, 최대 인원 수는 30 입니다.</div>
																	<div class="col-lg-12">
																		<fieldset>
																			<button type="submit">챌린지 생성</button>

																		</fieldset>
																	</div>
																</div>
															</div>
														</div>
													</div>
									</section>
								</form>
								<form action="insertSocialing.do" method="post"
									enctype="multipart/form-data">
									<section class="contact-us" id="contact">
										<div class="templatemo-item-col all social">
											<div class="row">
												<div class="col-lg-9 align-self-center">
													<div class="row">
														<div class="col-lg-12">
															<div id="contact" action="" method="post">
																<div class="row">
																	<div class="col-lg-12">
																		<h2>소셜링 생성</h2>
																	</div>
																	<div class="col-lg-4">
																		<input type="hidden" value="${ code }" name="mem_code">
																		<fieldset>
																			<input name="social_name" type="text"
																				id="social_title" placeholder="소셜링 제목을입력하세요*"
																				required autocomplete="off">
																		</fieldset>
																	</div>

																	<div class="col-lg-4">
																		<fieldset>
																			<input name="social_date" type="date"
																				id="social_date" required autocomplete="off" />
																		</fieldset>

																	</div>
																	<div>
																		<label class="rectangle-232-vNM">
																			<div id="socialimage_container"></div> <input
																			name="socialingfile" type="file" id="social_pic"
																			accept="image/*" onchange="setThumbnail(event);"
																			placeholder="이미지를 선택해주세요" name="socialimgup" /> <script
																				src="././resources/js/socialuploadimg.js"></script>
																		</label>

																	</div>
																	<div class="col-lg-12">
																		<fieldset>
																			<textarea name="social_content" type="text"
																				class="form-control" id="social_content"
																				placeholder="소셜링을 자유롭게 소개해주세요*" required
																				autocomplete="off"></textarea>
																		</fieldset>
																	</div>
																	<div>
																		<div>
																			<p>어디서 만날까요?</p>

																			<label id="offline"> <input type="radio"
																				name="social_loc" value="오프라인">오프라인
																			</label> <label id="online"> <input type="radio"
																				name="social_loc" value="온라인">온라인
																			</label>
																		</div>
																	</div>
																	<br> <label class="item--DS9">소셜링 주제를
																		선택해주세요!</label> </br>
																	<div class="line-50-t2V"></div>


																	<div class="field-wrap">
																		<label> 관심사<span class="req"></span></label> <select
																			id="cthigh_name" name="cthigh_name"
																			onchange="remove()">
																			<option value="선택" selected>====</option>
																			<c:forEach items="${ catehighList }" var="category">
																				<option value="${ category.cthigh_name }">${ category.cthigh_name }</option>
																			</c:forEach>
																		</select> <select id="mem_favorite2" name="ctmid_code">

																			<option value="선택">====</option>


																		</select>
																	</div>

																	<label class="item">어떻게 멤버를 모집할까요?</label> <label
																		class="item2">참여 조건</label>
																	<div class="line-81-zw3"></div>
																	<label class="item--ySH">성별</label>
																	<div class="gender">
																		<select name="social_gender">
																			<option value="none">=== 선택 ===</option>
																			<option value="남자">남자</option>
																			<option value="여자">여자</option>
																		</select>
																	</div>

																	<div class="line-84-Zuj"></div>
																	<label class="item3">연령</label>
																	<div class="age">
																		<select name="social_maxage">
																			<option value="none">=== 선택 ===</option>
																			<option value="20">20대</option>
																			<option value="30">30대</option>
																			<option value="40">40대</option>
																			<option value="50">50대</option>
																			<option value="60">60대</option>
																		</select>
																	</div>
																	<div class="line-85-6em"></div>



																	<label class="item4">참여비</label>
																	<div class="line-86-7Vs"></div>
																	<div>
																		<label id="yes"> <input type="radio"
																			name="socialinfo_chpay" onclick="textActive()"
																			value="있음">있음
																		</label> <label id="no"> <input type="radio"
																			name="socialinfo_chpay" onclick="textDisable()"
																			value="없음">없음
																		</label> <input type="text" name="social_cost" id="socialpay"
																			placeholder="금액을 작성해주세요." disabled>
																	</div>



																	<label class="item5">인원 수</label>
																	<div class="per">
																		<input name="social_tot" type="number" min='3'
																			max='30' step='1'>
																	</div>

																	<div class="item6">최소 3, 최대 인원 수는 30 입니다.</div>
																	<div class="col-lg-12">
																		<fieldset>
																			<button type="submit" id="form-submit" class="button">소셜링
																				생성</button>
																		</fieldset>
																	</div>
																</div>
															</div>
														</div>
													</div>
								</form>
							</div>
						</div>
	</section>


	<section class="contact-us" id="contact">
		<div class="col-lg-4 templatemo-item-col all club">
			<div class="row">

				<div class="col-lg-9 align-self-center">
					<div class="row">

						<div class="col-lg-12">
							<form id="contact" action="insertClub.do" method="post"
								enctype="multipart/form-data">
								<div class="row">
									<div class="col-lg-12">
										<h2>모임 생성</h2>
									</div>
									<div class="col-lg-4">
										<input type="hidden" value="${ code }" name="mem_code">
										<fieldset>
											<input name="club_name" type="text" id="title"
												placeholder="모임 제목을입력하세요*" required="">
										</fieldset>
									</div>
									<div>
										<label class="rectangle-232-vNM">
											<div id="clubimage_container"></div> <input name="clubfile"
											type="file" id="club_pic" accept="image/*"
											onchange="setThumbnail1(event);" placeholder="이미지를 선택해주세요"
											name="clubimgup" /> <script
												src="././resources/js/socialuploadimg.js"></script>
									</div>
									<div class="col-lg-12">
										<fieldset>
											<textarea name="club_intro" type="text" class="form-control"
												id="message" placeholder="모임을 자유롭게 소개해주세요*" required=""></textarea>
										</fieldset>
									</div>

									<div>
										<div>
											<p>어디서 만날까요?</p>

											<label id="offline"> <input type="radio"
												name="club_loc" value="오프라인">오프라인
											</label> <label id="online"> <input type="radio"
												name="club_loc" value="온라인">온라인
											</label>
										</div>
									</div>
									<label class="item--DS9">모임 주제를 선택해주세요!</label>
									<div class="line-50-t2V"></div>


									<div class="field-wrap">
										<label> 관심사<span class="req"></span></label> <select
											id="cthigh_name1" name="cthigh_name1" onchange="remove1()">
											<option value="선택" selected>====</option>
											<c:forEach items="${ catehighList }" var="category">
												<option value="${ category.cthigh_name }">${ category.cthigh_name }</option>
											</c:forEach>
										</select> <select id="mem_favorite3" name="ctmid_code">

											<option value="선택" selected>====</option>


										</select>
									</div>

									<label class="item">어떻게 멤버를 모집할까요?</label>

									<div>
										<label id="com"> <input type="radio"
											name="club_signtype" value="선착순">선착순
										</label> <label id="grant"> <input type="radio"
											name="club_signtype" value="승인제">승인제
										</label>

									</div>
									<label class="item2">참여 조건</label>
									<div class="line-81-zw3"></div>
									<label class="item--ySH">성별</label>
									<div class="gender">
										<select name="club_gender">
											<option value="none">=== 선택 ===</option>
											<option value="남자">남자</option>
											<option value="여자">여자</option>
											<option value="누구나">누구나</option>
										</select>
									</div>

									<div class="line-84-Zuj"></div>
									<label class="item3">연령</label>
									<div class="age">
										<select name="club_maxage">
											<option value="none">=== 선택 ===</option>
											<option value="20">20대</option>
											<option value="30">30대</option>
											<option value="40">40대</option>
											<option value="50">50대</option>
											<option value="60">60대</option>
										</select>
									</div>

									<div class="line-85-6em"></div>



									<label class="item4">참여비</label>
									<div class="line-86-7Vs"></div>
									<div>
										<label id="yes"> <input type="radio"
											name="clubinfo_chpay" onclick="Active()" value="있음">있음
										</label> <label id="no"> <input type="radio"
											name="clubinfo_chpay" onclick="Disable()" value="없음">없음
										</label> <input type="text" name="club_cost" id="clubpay"
											placeholder="금액을 작성해주세요." disabled>
									</div>



									<label class="item5">인원 수</label>
									<div class="per">
										<input name="club_memtot" type="number" min='3' max='30'
											step='1'>
									</div>




									<div class="item6">최소 3, 최대 인원 수는 30 입니다.</div>




									<div class="col-lg-12">
										<fieldset>
											<button type="submit" id="form-submit1" class="button">모임
												생성</button>
										</fieldset>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>















	</div>
	</div>

	</div>
	</div>
	</div>
	</div>
	<%@ include file="main/footer.jsp"%>
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
	<script src="././resources/js/category.js"></script>
	<script src="././resources/js/socialloadimg.js"></script>
	<script src="././resources/js/socialpay.js"></script>
	<script>
        //according to loftblog tut
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


</body>

</html>