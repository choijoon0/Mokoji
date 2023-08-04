<%@ page language="java" contentType="text/html; charset=UTF-8"

   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="icon" href="/favicon.ico" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="theme-color" content="#000000" />
  <title>Frame 50</title>
 

<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/images/css/docs.css"
	rel="stylesheet">
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/pricing/">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inter%3A100%2C300%2C400%2C500" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A100%2C300%2C400%2C500%2C700" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Cabin+Condensed%3A400%2C700" />

<link rel="stylesheet" href="././resources/style/createClub.css" />


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



  


  <script>
    function NoMultiChk(chk){
      var obj = document.getElementsByName("box");
        for(var i=0; i<obj.length; i++){
          if(obj[i] !=chk){
            obj[i].checked= false;
          }
        }
    }

  </script>

<script>
  function setThumbnail(event){
    var reader = new FileReader();

    reader.onload=function(event){
      var img = document.createElement("img");
      img.setAttribute("src", event.target.result);
      document.querySelector("div#image_container").appendChild(img);
    };
    reader.readAsDataURL(event.target.files[0]);
  }
</script>
</head>
<body>
  <div class="asd">
<div class="frame-50-18M">

  <div class="rectangle-217-w21">
  </div>
  <label class="item--4gH">
    어떤 형태의 모임을 열어볼까요?
    <br/>
    </label>
    <div class="line-49-wLm">
    </div>

    <p class="item-1--WYH">
      ‘소셜’은 1회성으로 만나 취향 활동을 함께하는 모임입니다.
     <br/>
     장기간 함께 활동을 하는 모임을 원하실 경우 ‘클럽’으로 열어주세요!
     </p>

     <form>
     <label class="item--Bh3">소셜</label>
     <label class="item--UAM">누구나 자유롭게 참여할 수 있는 소셜링을 열어요. <input type="checkbox" name="box" value="소셜" onclick="NoMultiChk(this)"/></label>
     
     <div class="line-45-FYV">
     </div>
    

     <label class="item--QiD">클럽</label>
     <label class="item--hxD">가입하거나 운영하는 클럽에서 소셜링을 열어요. <input type="checkbox" name="box" value="클럽" onclick="NoMultiChk(this)"></label>
     <div class="line-46-tE5">
     </div>
    </form>
</div>
</div>
<div class="frame-47-rrd">
  <div class="rectangle-218-jQd">
  </div>

  <label class="item--DS9">소셜링 주제를 선택해주세요!</label>
  <div class="line-50-t2V">
  </div>


  <form class="category1">
    <select name="category1" >
      <option value="none">=== 선택 ===</option>
      <option value="ca">문화</option>
      <option value="ca">액티비티</option>
    </select>
  </form>
  <form class="category2">
    <select name="category2" >
      <option value="none">=== 선택 ===</option>
      <option value="ca">전시</option>
      <option value="ca">영화</option>
    </select>
  </form>


  
</div>

<div class="frame-48-MMs">
  <div class="rectangle-231-t6u">
  </div>

 
  <div class="item--ojf">소셜링 제목을 작성해주세요!</div>
  <div class="line-52-jFw">
  </div>
  <div class="line-74-9Xw">
  </div>

 
  <div class="item--f9b"> <form>
    <input class="title"   type="text" placeholder="제목을 입력해주세요">
  </form></div>
  <label class="item-0-80-Kjw">
    <span class="item-0-80-Kjw-sub-0">0</span>
    <span class="item-0-80-Kjw-sub-1">/80</span>
  </label>


  <label class="item--rhw">소셜링을 소개해주세요!</label>
  <div class="line-75-5Rb">
  </div>
 
  <form>
  <label class="rectangle-232-vNM">
    <div id="image_container"></div>
    <input type="file" id="img" accept="image/*" onchange="setThumbnail(event);"    name="imgup"/>
  </label>
  <label class="photo">
  <div class="item--dnZ">사진</div>
  <div class="item-0-10-KQV">0/10</div>
</label>
</form>


  <form></form> 
  <div class="item--VTP">
  <textarea cols="50" rows="10"></textarea>
</div>
  </form>
 
</div>



<div class="frame-49-xp9">
  <div class="rectangle-234-rPj">
  </div>
  
 
  <label class="item--SPs">만나는 날짜를 정해주세요!</label>
  <div class="line-76-HNR">
  </div>
 
  <input class="day" type="date" name="date"/><img class="free-icon-calendar-4511116-2-DDb" src="./assets/free-icon-calendar-4511116-2-JTb.png"/>
  <div class="line-56-7H3">
  </div>
  
  <input class="time"type="time"/><img class="free-icon-time-7764301-2-e41" src="./assets/free-icon-time-7764301-2-T3F.png"/>
  <div class="line-57-EsT">
  </div>
  
  
  <img class="rectangle-235-A2M" src="./assets/rectangle-235.png"/>
  <div class="item-6--PQu">최소 6시간 이후로 설정해 주세요.</div>
  <img class="free-icon-exclamation-button-87980-1-eLq" src="./assets/free-icon-exclamation-button-87980-1.png"/>

  <img class="rectangle-331-UHw" src="./assets/rectangle-331.png"/>
  <div class="item-1--9KX">모임 시간 1시간 전, 자동으로 신청이 마감됩니다.</div>
  <img class="free-icon-exclamation-button-87980-2-dc5" src="./assets/free-icon-exclamation-button-87980-2.png"/>
  
  

  <label class="item--7W1">어디서 만날까요?</label>
  <div class="line-77-orZ">
  </div>

  <form>
    <label id="offline">
      <input type="radio" name="social_loc"  value="오프라인">오프라인
    </label>
    <label id="online">
      <input type="radio" name="social_loc" value="온라인">온라인
    </label>
    
  </form>
  
 


  <label class="item--bRB">어떻게 멤버를 모집할까요?</label>
  <div class="line-78-Lbb">
  </div>
  <form>
    <label id="com">
      <input type="radio" name="memcom"  value="선착순">선착순
    </label>
    <label id="grant">
      <input type="radio" name="memcom" value="승인제" >승인제
    </label>
    
  </form>
  






  <label class="item--fvq">소셜링을 신청할 때 제출할 질문을 작성해주세요.</label>
  <div class="line-79-sLd">
  </div>
  <input class="qus"   type="text" placeholder="질문을 입력해주세요">
  <div class="line-80-Zow">
  </div>
  <p class="item-0-80-Ly7">
    <span class="item-0-80-Ly7-sub-0">0</span>
    <span class="item-0-80-Ly7-sub-1">/80</span>
  </p>




  <label class="item--tQq">참여 조건</label>
  <div class="line-81-zw3">
  </div>
  <label class="item--ySH">성별</label>
  <form class="gender">
    <select name="gender" >
      <option value="none">=== 선택 ===</option>
      <option value="gender">남자</option>
      <option value="gender">여자</option>
    </select>
  </form>
  <img class="free-icon-gender-10283643-1-md3" src="./assets/free-icon-gender-10283643-1.png"/>
  <div class="line-84-Zuj">

  </div>
  <label class="item--GgH">연령</label>
  <form class="age">
    <select name="age" >
      <option value="none">=== 선택 ===</option>
      <option value="age">20대</option>
      <option value="age">30대</option>
      <option value="age">40대</option>
      <option value="age">50대</option>
      <option value="age">60대</option>
    </select>
  </form>
  <img class="free-icon-calendar-4511116-3-Xk5" src="./assets/free-icon-calendar-4511116-3.png"/>
  <div class="line-85-6em">
  </div>



  <label class="item--69X">참여비</label>
  <div class="line-86-7Vs">
  </div>
  <form>
    <label id="yes">
      <input type="radio" name="socialinfo_chpay" onclick="textActive()"  value="있음">있음
    </label>
    <label id="no">
      <input type="radio" name="socialinfo_chpay" onclick="textDisable()" value="없음">없음
    </label>
    <input type="text" name="socialinfo_chpay" id="clubpay"placeholder="금액을 작성해주세요." disabled>
    <script src="././resources/js/createClub.js"></script>

  </form>



  <label class="item--PPX">인원 수</label>
  <form class="per"> 
    <select  name="per" >
      <option value="none">=== 선택 ===</option>
      <option value="person">1명</option>
      <option value="person">2명</option>
      <option value="person">3명</option>
      <option value="person">4명</option>
      <option value="person">5명</option>
    </select>
  </form>
 
  <div class="line-87-EKb">
  </div>

 
  <img class="rectangle-339-xMX" src="./assets/rectangle-339.png"/>
  <div class="item-3-30--Tp5">최소 3명, 최대 인원 수는 30명 입니다.</div>
  <img class="free-icon-exclamation-button-87980-3-WXT" src="./assets/free-icon-exclamation-button-87980-3-Wpy.png"/>


  <button type="submit" class="item--Ufs"  href="#">모임 생성</a>
  
  </a>

</div>


</body></body>