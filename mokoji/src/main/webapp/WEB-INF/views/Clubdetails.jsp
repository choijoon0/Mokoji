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
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">


<!-- Bootstrap core CSS -->
<link href="././resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="././resources/style/fontawesome.css">
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
					<h2>${ clist.club_name }</h2>
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
									<c:choose>
										<c:when test="${ memct_code eq 1 }">
											<li data-filter=".joincurrent">승인현황</li>
											<li data-filter=".sang" class="active">상세페이지</li>
											<li data-filter=".pid">모임피드</li>
										</c:when>

										<c:when test="${ memct_code eq 2 }">
											<li data-filter=".sang" class="active">상세페이지</li>
											<li data-filter=".pid">모임피드</li>
										</c:when>

										<c:when test="${ memct_code eq 0 }">
											<li data-filter=".sang" class="active">상세페이지</li>
										</c:when>
									</c:choose>
								</ul>

							</div>
						</div>

						<div class="col-lg-12">
							<div class="row grid">

								<section class="contact-us" method="post">
									<form action="" method="post" enctype="multipart/form-data">
										<div class="templatemo-item-col all joincurrent">
											<div class="row">
												<div class="col-lg-9 align-self-center">
													<div class="row">
														<div class="col-lg-12">
															<div id="contact">
																<div class="row">
																	<div class="col-lg-12">
																		<h2>승인현황</h2>
																	</div>
																	<table class="table">
																		<thead>
																			<tr>
																				<th scope="col"></th>
																				<th scope="col">아이디</th>
																				<th scope="col">성별</th>
																				<th scope="col">나이</th>
																				<th scope="col">승인</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<th scope="row">1</th>
																				<td>Mark</td>
																				<td>Otto</td>
																				<td>28</td>
																				<td><button id="grant" type="submit" value="승인">승인</button>
																					<button id="grant" type="submit" value="거절">거절</button>
																			</tr>
																			<tr>
																				<th scope="row">2</th>
																				<td>Jacob</td>
																				<td>Thornton</td>
																				<td>25</td>
																				<td><button id="grant" type="submit" value="승인">승인</button>
																					<button id="grant" type="submit" value="거절">거절</button>
																			</tr>
																			<tr>
																				<th scope="row">3</th>
																				<td>Bird</td>
																				<td>Bob</td>
																				<td>27</td>
																				<td><button id="grant" type="submit" value="승인">승인</button>
																					<button id="grant" type="submit" value="거절">거절</button>
																			</tr>

																		</tbody>
																	</table>
									</form>
							</div>
						</div>
					</div>
				</div>
	</section>






	<form method="post" action="insertSocialing.do" enctype="multipart/form-data">
		<section class="contact-us" id="contact">
			<div class="templatemo-item-col all pid">
				<div class="row">
					<div class="col-lg-9 align-self-center">
						<div class="row">
							<div class="col-lg-12">
								<div id="contact" action="">
									<div class="row">
										<div class="col-lg-12">
											<h2>글쓴이</h2>

											<img src="././resources/images/헬스2.jpg">

											<table class="table">
												<thead>
													<tr>
														<th scope="col">댓글</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Mark</td>
														<td>Otto</td>
													</tr>
													<tr>
														<td>Jacob</td>
														<td>Thornton</td>
													</tr>
													<tr>
														<td>Bird</td>
														<td>Bob</td>
													</tr>

												</tbody>
											</table>


											<fieldset>
												<input name="" type="text" id="" placeholder="댓글을 입력하세요." required autocomplete="off">
												<button class="datinsert" type="submit">댓글입력</button>
											</fieldset>

	</form>

											<!-- Button trigger modal -->
											<button id="newpid" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">새 피드 작성</button>

											<!-- Modal -->
											<form action="insertClubPane.do" method="post" enctype="multipart/form-data">
											<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none;" aria-hidden="true">
												<div class="modal-dialog modal-lg">
													<div class="modal-content">
														<div class="modal-header">
															<h1 class="modal-title fs-5" id="exampleModalLabel">게시글 작성</h1>
														</div>
														<div class="modal-body">
															<fieldset>
																<input name="cp_name" type="text" id="cp_name" placeholder="게시글 제목을 입력하세요*" required autocomplete="off">
															</fieldset>
															<label class="rectangle-232-vNM">
																<div id="socialimage_container"></div>
																<input name="clubpanefile" type="file" id="clubpanefile" accept="image/*" onchange="setThumbnail(event);" placeholder="이미지를 선택해주세요"/>
															 <script src="././resources/js/socialuploadimg.js"></script>
															</label>
															<div class="col-lg-12">
																<fieldset>
																	<textarea name="cp_content" type="text" class="form-control" id="cp_content" placeholder="게시글을 써주세요." required autocomplete="off"></textarea>
																</fieldset>
															</div>

														</div>
														<div class="modal-footer">
															<button type="submit" class="btn btn-primary">새 게시글 작성</button>
															<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
														</div>
													</div>
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
	</section>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

	<section class="contact-us">
		<form action="insertSocialing.do" enctype="multipart/form-data">
			<div class="templatemo-item-col all sang">
				<div class="row">
					<div class="col-lg-9 align-self-center">
						<div class="row">
							<div class="col-lg-12">
								<div id="contact" method="post">
									<div class="row">
										<c:forEach items="${ oneClubList }" var="clist">
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
													src="././resources/images/${ clist.club_rpic }"></a>
											</div>
											<div class="down-content">
												<h4>${ clist.club_name }</h4>
												<img id="person"
													src="././resources/images/free-icon-group-2911099.png">
												<p class="per">${ clist.club_memtot }</p>
												<p class="description">${ clist.club_intro }</p>
												<div class="col-lg-12"></div>
												<div class="row">
													<div class="col-lg-4">
		</form>

		</div>
		</div>
		<form action="joinClub.do">
			<div class="col-lg-12">
				<input type="hidden" name="club_code" value="${clist.club_code }">
				<input type="hidden" name="mem_code" value="${ code }"> <input
					type="hidden" name="club_signtype" value="${ clist.club_signtype }">
				<br>

				<h2 class="bun">번개모임</h2>

				<table class="table">
					<thead>
						<tr>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ instant }" var="instantt">
							<tr>
								<th scope="row">${ instantt.CINST_NAME }</th>
								<td scope="colspan="2">${ instantt.CINST_CONTENT }</td>
								<td><button id="grant" type="button">자세히</button>
									<button id="grant" type="submit">신청하기</button>
							</tr>
						</c:forEach>

					</tbody>
				</table>
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
	<script src="././resources/js/Category.js"></script>
	<script src="././resources/js/socialloadimg.js"></script>
	<script src="././resources/js/pidwrite.js"></script>
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
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  </body>

</body>

</html>