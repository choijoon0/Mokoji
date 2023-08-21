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
    <link rel="stylesheet" href="././resources/style/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="././resources/style/owl.css">
    <link rel="stylesheet" href="././resources/style/lightbox.css">
    <link rel="stylesheet" href="././resources/style/Matching.css">
<!--

TemplateMo 569 Edu Meeting

https://templatemo.com/tm-569-edu-meeting

-->
  </head>

<body>

	 <%@ include file="main/header.jsp" %>

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
                  <li data-filter=".15">축구</li>
                  <li data-filter=".10">야구</li>                
               	  <li data-filter=".28">농구</li>
                </ul>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="row grid">
              <c:forEach items="${ matchList }" var="matchList">
              
                <div class="col-lg-4 templatemo-item-col all ${matchList.CTMID_CODE}">
                  <div class="meeting-item">
                    <div class="thumb">
                      <img src="${matchList.CLUB_RPIC}">
                    </div>
                    <div class="down-content">
                    <form action="joinmatch.do">
                    <input type="hidden" value="${matchList.MAT_CODE}" name="mat_code">
                    <input type="hidden" value="${matchList.CLUB_CODE}" name="club_code">
                    <input type="hidden" value="${memct_code}" name="memct_code">
                      <h4>${ matchList.MAT_NAME }</h4>
                      <div>동호회 명 : ${ matchList.CLUB_NAME }</div>
                      <div>희망 매칭 일자 : ${ matchList.MAT_DATE }</div>
                      <div>희망 매칭 시간 : ${ matchList.MAT_TIME }</div>
                      <c:if test="${ memct_code == 15 and matchList.CTMID_CODE == 15 }">
    				  <button type="submit" class="matching-button-red" onclick="match()">참가하기</button>
					  </c:if>
					  <c:if test="${ memct_code == 10 and matchList.CTMID_CODE == 10 }">
    				  <button type="submit" class="matching-button-red" onclick="match()">참가하기</button>
					  </c:if>
					  <c:if test="${ memct_code == 28 and matchList.CTMID_CODE == 28 }">
    				  <button type="submit" class="matching-button-red" onclick="match()">참가하기</button>
					  </c:if>                    
                    </form>
                    </div>
                  </div>
                </div>        
   				</c:forEach>
          
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  <%@ include file="main/footer.jsp" %>
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
    <script src="././resources/js/Matching.js"></script>

</body>


  </body>

</html>
