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
<link rel="stylesheet" href="././resources/style/clubdetails.css">


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
									<li data-filter=".joincurrent">승인현황</li>
									<li data-filter=".sang" class="active">상세페이지</li>
									<li data-filter=".pid">모임피드</li>
								</ul>
							</div>
						</div>

						<div class="col-lg-12">
							<div class="row grid">

								<section class="contact-us">
									<form action="insertSocialing.do" enctype="multipart/form-data">
										<div class="templatemo-item-col all sang">
											<div class="row">
												<div class="col-lg-9 align-self-center">
													<div class="row">
														<div class="col-lg-12">
															<div id="contact" method
															="post">
																<div class="row">
																	<c:forEach items="${ oneClubList }" var="clist">
																		<div class="meeting-single-item all sang">
																			<div class="thumb">
																				<div class="price">
																					<span>${ clist.club_signtype }</span>
																				</div>
																				<div class="date">
																					<h6>
																						활동지역 <span>${ clist.club_loc }</span>
																					</h6>
																				</div>
																				<a href="meeting-details.html"><img
																					src="${ clist.club_rpic }"></a>
																			</div>
																			<div class="down-content">
																				<a href="meeting-details.html"><h4>${ clist.club_name }</h4></a>
																				<p>${ clist.club_memtot }</p>
																				<p class="description">${ clist.club_intro }</p>
																				<div class="col-lg-12">
																					
																				</div>
																			<div class="row">
															                    <div class="col-lg-4">
															                      <c:forEach items="${ instant }" var="instantt">
															                      <div class="hours">
															                        <h5>${ instantt.CINST_NAME }</h5>
															                        <p>${ instantt.CINST_CONTENT }</p>
															                      </div>
															                      </c:forEach>
																			</div>
																		</div>
																		<form action="joinClub.do">
															                 <div class="col-lg-12">
															                 <input type="hidden" name="club_code" value="${clist.club_code }">
															                 <input type="hidden" name="mem_code" value="${ code }">
															                 <input type="hidden" name="club_signtype" value="${ clist.club_signtype }">
															              <div class="main-button-red">
															                <button type="submit">가입하기</button>
															              </div>
															              </div>
															              </form>
																	</c:forEach>
																</div>
															</div>
</div>
														</div>
													</div>
												</div>
											</div>
									</form>
								</section>

								<section class="contact-us" id="contact">
									<form action="insertSocialing.do" enctype="multipart/form-data">
										<div class="templatemo-item-col all joincurrent">
											<div class="row">
												<div class="col-lg-9 align-self-center">
													<div class="row">
														<div class="col-lg-12">
															<div id="contact" method="post">
																<div class="row">
																	<div class="meeting-single-item joincurrent">
																		<div class="thumb">
																			<div class="price">
																				<span>(승인현황)</span>
																			</div>
																			<div class="date">
																				<h6>
																					활동지역 <span>${ clist.club_loc }</span>
																				</h6>
																			</div>
																			<a href="meeting-details.html"><img
																				src="././resources/images/single-meeting.jpg" alt=""></a>
																		</div>
																		<div class="down-content">
																			<a href="meeting-details.html"><h4>${ clist.club_name }</h4></a>
																			<p>${ clist.club_memtot }</p>
																			<p class="description">${ clist.club_intro }</p>
																			<div class="row">
																				<div class="col-lg-4">
																					<div class="hours">
																						<h5>(번개모임)</h5>
																						<p>(번개모임 내용)</p>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="col-lg-12">
																			<div class="main-button-red">
																				<a href="meetings.html">가입신청</a>
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
									</form>
								</section>

								<section class="contact-us" id="contact">
									<form action="insertSocialing.do" enctype="multipart/form-data">
										<div class="templatemo-item-col all pid">
											<div class="row">
												<div class="col-lg-9 align-self-center">
													<div class="row">
														<div class="col-lg-12">
														<button id="pidwrite">게시글 쓰기</button>	
															<div id="contact" method="post">
																<div class="row">
																	<div class="meeting-single-item  pid">	
																	<div class="cards">

												 <div class="cardpidwrites">

  <div class="cardpidwrite">
    <div class="card__image-holderpidwrite">
      <img class="card__imagepidwrite" src="https://source.unsplash.com/300x225/?wave" alt="wave" />
    </div>
    <div class="card-titlepidwrite">
      <a href="#" class="toggle-info btnpidwrite">
        <span class="leftpidwrite"></span>
        <span class="rightpidwrite"></span>
      </a>
      <h2>
          게시판 제목
          <small>작성자</small>
      </h2>
                좋아요, 조회수
    </div>
    <div class="card-flap flap1pidwrite">
      <div class="card-descriptionpidwrite">
      게시판 내용
      </div>
      <div>
        댓글:ㅇㄴㅇㅁㄴㅇㅁㄴㅁㅇ
      </div>
        
      <div class="card-flap flap2pidwrite">
        <div class="card-actionspidwrite">
          <a href="#" class="btnpidwrite">댓글달기</a>
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
	<script src="././resources/js/Category.js"></script>
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