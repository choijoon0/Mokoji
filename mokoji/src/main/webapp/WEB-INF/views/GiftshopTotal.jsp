<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html style="background-color: #f0efe0;">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <title>Mokoji Shop</title>

    <!-- Bootstrap core CSS -->
    <link href="./././resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="./././resources/style/fontawesome.css">
    <link rel="stylesheet" href="./././resources/style/GiftshopTotal.css">
    <link rel="stylesheet" href="./././resources/style/GiftTotal.css">
    <link rel="stylesheet" href="./././resources/style/owl.css">
    <link rel="stylesheet" href="./././resources/style/lightbox.css">
	
	
</head>
<body>
			<%@ include file="main/Giftheader.jsp"%>
		<div class="container" id="giftfont">
		 <h1>기프티콘 구매</h1><br>
	<p>적립된 포인트로 기프티콘을 구매해보세요.</p></div>
		
		
		<div class="row row-cols-1 row-cols-md-3 g-6" id="option" style="grid-row-gap: 20px;">
		
    <h3>카테고리</h3>
  <div class="control-group" style="overflow:auto;" id="scroll">
    <br>
    <label class="control control--radio">교환권
      <input type="radio" name="radio" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">도서 문구 음반
      <input type="radio" name="radio" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">디지털 가전
      <input type="radio" name="radio" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">레저 스포츠
      <input type="radio" name="radio" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">리빙
      <input type="radio" name="radio" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">뷰티
      <input type="radio" name="radio" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">상품권
      <input type="radio" name="radio" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">식품
      <input type="radio" name="radio" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">유아 반려
      <input type="radio" name="radio" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">패션
      <input type="radio" name="radio" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    
  </div>
  
  
  <div class="control-group" style="overflow:auto;" id="scroll" >
    <h3>세부 분류</h3>
    <br>
    <label class="control control--radio">버거,피자
      <input type="radio" name="radio1" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">베이커리,도넛,떡
      <input type="radio" name="radio1"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">분식,죽,도시락
      <input type="radio" name="radio1"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">아이스크림,빙수
      <input type="radio" name="radio1"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">치킨
      <input type="radio" name="radio1"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">카페
      <input type="radio" name="radio1"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">패밀리,호텔뷔페
      <input type="radio" name="radio1"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">편의점
      <input type="radio" name="radio1"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">퓨전
      <input type="radio" name="radio1"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--radio">한식,중식,양식
      <input type="radio" name="radio1"/>
      <div class="control__indicator"></div>
    </label>
  </div>
  <div class="control-group" style="overflow:auto;">
    <h3>가격</h3>
    <br>
    <div class="select">
      <select>
        <option>가격을 선택해주세요.</option>
        <option>500이하</option>
        <option>1000이하</option>
        <option>3000이하</option>
        <option>5000이하</option>
        <option>10000이하</option>
      </select>
      <div class="select__arrow"></div>
      <button type="submit">조회</button>
    </div>
   
  </div>
</div>
</div>
	<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner" id="slider">
    <div class="carousel-item active">
      <img src="./././resources/images/001.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./././resources/images/002.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./././resources/images/003.png" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
	
		
	<div class="container" id="item"> 
	<div class="row row-cols-1 row-cols-md-3 g-6" style="grid-row-gap: 20px;">
  <div class="col">
    <div class="card">
      <img src="./././resources/images/스벅.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><a href="Giftshopdetails.do">Card title</a></h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="./././resources/images/조말론런던 코롱.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><a href="Giftshopdetails.do">Card title</a></h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="./././resources/images/스벅2.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><a href="Giftshopdetails.do">Card title</a></h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="./././resources/images/노티드.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><a href="Giftshopdetails.do">Card title</a></h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="./././resources/images/배라3.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><a href="Giftshopdetails.do">Card title</a></h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="./././resources/images/투썸.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><a href="Giftshopdetails.do">Card title</a></h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="./././resources/images/뚜레주르1.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><a href="Giftshopdetails.do">Card title</a></h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="./././resources/images/아웃백.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><a href="Giftshopdetails.do">Card title</a></h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="./././resources/images/교촌.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><a href="Giftshopdetails.do">Card title</a></h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
</div>
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	   <%@ include file="main/footer.jsp"%>
	<script src="././resources/vendor/jquery/jquery.min.js"></script>
	<script src="././resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	 <script src="././resources/js/jquery-1.9.1.min.js"></script>
	 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	 
</body>
</html>