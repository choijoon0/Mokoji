<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="icon" href="/favicon.ico" />
    <meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="theme-color" content="#000000" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <title>Sign Up</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
  <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/pricing/">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter%3A100%2C400%2C500"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A100%2C400%2C500"/>
  <link rel="stylesheet" href="././resources/style/SignUp.css" type="text/css">
  <link rel="stylesheet" href="././resources/style/index.css" type="text/css"/>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script type="text/javascript" src="././resources/js/local.js"></script>
  <script type="text/javascript" src="././resources/js/SignUpCheck.js"></script>
  
</head>
<body>
<div class="frame-16-WMF">
  <div class="auto-group-g4qr-dgm">
    <div class="logo-removebg-preview-1-1-wxM" style=" cursor: pointer;">
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
     <form action="SignUp.do">
      <input type="submit" class="item--BvZ" id="confirm" value="회원가입" style="border: none; background: transparent;"/>
      </form>
    </div>
  </div>
<div class="frame-45-AcH">
  <div class="rectangle-282-xHF">
  </div>
  <div class="rectangle-312-4LH">
  </div>
  <div class="line-79-nn5">
  </div>
  	<label for="address2" class="MEM_ID">아이디</label> 
	<input type="text" id="MEM_ID" name="MEM_ID" oninput = "checkId()" >
	 <div class="rectangle-436-T4X"></div>
  <input type="button" id="jung" name="jung" style="border: none; background: transparent;" value="중복확인"/>
   <div><span id="result_checkId" style="font-size:12px;"></span></div>
  <div class="line-81-98m">
  </div>
  <div class="line-130-ebK">
  </div>
  <div class="line-131-P37">
  </div>
  <div class="line-132-KSZ">
  </div>
  
  <p class="item--4Q8">회원가입</p>
  <p class="item--4Q9">비밀번호</p>
  <div class="line-106-knm"></div>
  <input type="password" id="pass" name="MEM_PW" style="border: none; background: transparent;"/>
  <p class="item--4oT">본인 확인 이메일(선택)</p>
  <input id="email" type="text" style="border: none; background: transparent;"></input>
  <p class="MEM_TEL">전화 번호</p>
  <input id="first" name="MEM_TEL" style="border: none; background: transparent;"></input>
  <input id="second" name="MEM_TEL" style="border: none; background: transparent;"></input>
  <input id="third" name="MEM_TEL" style="border: none; background: transparent;"></input>
  <p class="MEM_PIC">프로필 사진</p>
  <input type="file" value="+" id="MEM_PIC" name="MEM_PIC"/>
  <p class="MEM_PIC">주소</p>
  <p class="MEM_FAVORITE">관심사</p>
  <select id="MEM_FAVORITE" name="MEM_FAVORITE">
  	<option value="선택">선택</option>
    <option value="축구">축구</option>
    <option value="야구">야구</option>
    <option value="뮤지컬">뮤지컬</option>
    <option value="음악감상">음악감상</option>
    <option value="전시">전시</option>
  </select>

  <div class="line-125-Peh">
  </div>
  <div class="line-126-Vhj">
  </div>
  <div class="item--S7B">-</div>
  <div class="item--S7A">-</div>
  <div class="line-127-uWZ">
  </div>
  <div class="item--pNd">-</div>
  <p class="MEM_JUMIN">주민번호</p>
  <div class="line-102-jumin"></div>
  <input type="text" id="juminA" name="MEM_JUMIN" style="border: none; background: transparent;"/>
  <input type="text" id="juminB" name="MEM_JUMIN" style="border: none; background: transparent;"/>
  <div class="line-102-yoF">
  </div>
  <p class="name">이름</p>
  <div class="line-101-CR7"></div>
  <input type="text" id="name" name="MEM_NAME" style="border: none; background: transparent;"/>
  <p class="item--LGR">비밀번호 재확인</p>
  <input type="password" id="passjea" name="passjea" style="border: none; background: transparent;"/>
  <div class="item--SMP">@</div>
  <select id="email">
  	<option value="선택"></option>
    <option value="naver.com">naver.com</option>
    <option value="gmail.com">gmail.com</option>
    <option value="nate.com">nate.com</option>
  </select>
     
     <table>
        <tr>
            <th>주소</th>
            <td><input type="text" id="MEM_LOCA" name="MEM_LOC" readonly /></td>
        </tr>
        <tr>
            <th>상세 주소</th>
            <td><input type="text" id="MEM_LOCB" name="address_detail" /></td>
        </tr>
    </table>
  <img class="free-icon-search-interface-symbol-54481-1-jtD" src="../img/free-icon-search-interface-symbol-54481-1.png"/>
  <form action="SignIn.do">
  <div class="rectangle-436-T3X"></div>
  <input type="submit" id="join" name="join" style="border: none; background: transparent;" value="회원가입"/>
  </form> 
 
</div>
</div>

</body>
</html>