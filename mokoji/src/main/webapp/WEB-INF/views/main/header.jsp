<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<header>
   <div class="auto-group-g4qr-dgm">
            <div class="logo-removebg-preview-1-1-wxM" style="cursor: pointer;"
               onclick="location.href="index.jsp;"></div>
            <div class="auto-group-1wzf-EgZ">
               <nav class="navbar" id="search1">
                  <div class="container-fluid">
                     <form class="d-flex" autocomplete="off">
                  
                     <select id="searchBox">
                           <option value="선택" selected>====</option>
                           <option value="동호회" selected>동호회</option>
                           <option value="제목" selected>제목</option>
                           <option value="솰랄라라" selected>솨랄라</option>
                           </select>
                        <div class="autocomplete">              
                           <input id="search" type="text" placeholder="Search">
                        </div>

                        <button class="btn" type="submit">검색</button>
                     </form>
                  </div>
               </nav>
               <nav class="navbar navbar-expand-lg" id="menu_bar">
                  <div class="collapse navbar-collapse" id="navbarNavDropdown">
                     <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link"
                           aria-current="page" href="#"><h4>소개</h4></a></li>
                        <li class="nav-item"><a class="nav-link" href="#"><h4>챌린지</h4></a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#"><h4>소셜</h4></a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#"><h4>커뮤니티</h4></a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#"><h4>기프티콘</h4></a>
                        </li>
                        <li class="nav-item dropdown" id="drop"><a class="nav-link"
                           href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                        </a></li>
                     </ul>
                     
                  </div>
               </nav>
               <form action="category.do">
                  <input type="submit" class="item--V29" value="로그인"
                     style="border: none; background: transparent;" />
               </form>
               <form action="goSign.do">
                  <input type="submit" class="item--BvZ" value="회원가입"
                     style="border: none; background: transparent;" />
               </form>
            </div>


            <script type="text/javascript" src="././resources/js/test.js"></script>


         </div>
         
         <div class="home" style="   padding: 10px;
                           height: 200px;
                           width: 150px; 
                           position:fixed; 
                           right: 200px; 
                           margin-top: 20%;">
       <ul>
            <li><a class="home">고정바</a></li>
            <li><a href="createClub.do">모임생성</a></li>
            <li><a href="#">모임참가</a></li>
            <li><a href="clubTotal.do">모임검색</a></li>
        </ul>
        </div>
    </header>
    
</body>
</html>