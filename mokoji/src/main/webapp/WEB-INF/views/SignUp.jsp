<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 회원가입</title>
<link rel="stylesheet" href="././resources/style/SignUp.css">
<link
	href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</head>

<body>

	<div class="form">

		<ul class="tab-group">
			<li class="tab active"><a href="#signup">회원가입</a></li>
			<li class="tab"><a href="#login">로그인</a></li>
		</ul>

		<div class="tab-content">
			<div id="signup">

				<form action="insertMember.do" method="post" enctype="multipart/form-data">

					<div class="top-row">

						<div class="field-wrap">
							<label> 아이디<span class="req">*최소 4자리를 입력해주세요!</span>
							</label> <input type="text" name="mem_id" required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> 비밀번호<span class="req">*최소 6자리를 입력해주세요!</span>
							</label> <input type="password" name="mem_pw" required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> 비밀번호 재확인<span class="req"></span>
							</label> <input type="password" required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> 이름<span class="req">*</span>
							</label> <input type="text" name="mem_name" required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> 주민번호<span class="req"></span>
							</label> <input type="text" name="mem_jumin" required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> 전화번호<span class="req">*-없이 적어주세요!</span>
							</label> <input type="text" name="mem_tel" required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> 관심사<span class="req"></span>
							</label> 
							<select id="mem_favorite" name="mem_favorite">
								<option value="선택" selected>====</option>
								<option value="축구">축구</option>
								<option value="야구">야구</option>
								<option value="농구">농구</option>
							</select>
						</div>

						<div class="field-wrap">
							<label> 관심지역<span class="req"></span>
							</label> 
							<select id="mem_loc" name="mem_loc">
								<option value="선택" selected>====</option>
								<option value="경기">경기</option>
								<option value="부산">부산</option>
								<option value="서울">서울</option>
							</select>
						</div>

						<div class="field-wrap">
							<label> <span class="req"></span>
							</label> <input type="file" maxlength="60" size="40" name='file'>
						</div>

						<div class="field-wrap">
							<label> <span class="req"></span>
							</label> <input value="주소" type="text" id="MEM_LOCA" name="mem_addr" readonly required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label> <span class="req"></span>
							</label> <input value="상세주소" type="text" id="MEM_LOCB" name="mem_addrdetail" />
						</div>

						<button type="submit" class="button button-block" />
						Register
						</button>


					</div>

				</form>

			</div>

			<div id="login">

				<form action="checkMember.do" method="post">

					<div class="field-wrap">
						<label> 아이디<span class="req"></span>
						</label> <input type="text" name="mem_id" required autocomplete="off" />
					</div>

					<div class="field-wrap">
						<label> 비밀번호<span class="req"></span>
						</label> <input type="password" name="mem_pw" required autocomplete="off" />
					</div>

					<p class="forgot">
						<a href="#">Forgot Password?</a>
					</p>
					<p class="forgot">
						<a href="#">Forgot Email?</a>
					</p>

					<button type="submit" class="button button-block" />
					로그인
					</button>

				</form>

			</div>

		</div>
		<!-- tab-content -->

	</div>
	<!-- /form -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script type="text/javascript" src="././resources/js/SignUp.js"></script>

</body>
</html>