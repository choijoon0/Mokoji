<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div class="auto-group-g4qr-dgm">
    <div class="logo-removebg-preview-1-1-wxM" style=" cursor: pointer;" onclick="location.href="index.jsp;">
    </div>
    <div class="auto-group-1wzf-EgZ">
      <nav class="navbar" id="search">
        <div class="container-fluid">
          <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn" type="submit">검색</button>
          </form>
        </div>
      </nav>
      <nav class="navbar navbar-expand-lg" id="menu_bar">
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="#"><h4>소개</h4></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><h4>챌린지</h4></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><h4>소셜</h4></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><h4>커뮤니티</h4></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><h4>기프티콘</h4></a>
              </li>
              <li class="nav-item dropdown" id="drop">
                <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <h4>모임▼</h4>
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">모임 생성</a></li>
                  <li><a class="dropdown-item" href="#">모임 검색</a></li>
                  <li><a class="dropdown-item" href="#">모임 참가</a></li>
                </ul>
              </li>
            </ul>
          </div>
      </nav>
      <form action="SignIn.do">
      <input type="submit" class="item--V29" value="로그인" style="border: none; background: transparent;"/>
     </form>
     <form action="goSign.do">
      <input type="submit" class="item--BvZ" value="회원가입" style="border: none; background: transparent;"/>
      </form>
    </div>
</body>
</html>