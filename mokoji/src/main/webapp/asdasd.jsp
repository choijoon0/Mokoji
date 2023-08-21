<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="collapse" id="reply_card1">
    <section class="modal-section">
        <div class="card card-body">
            <!-- 댓글 목록 -->
            <div class="reply-list reply-list1">
                <!-- 댓글이 목록이 들어가는 곳 -->
            </div>
            <!-- 댓글 작성 => 로그인한 상태여야만 댓글작성 칸이 나온다. -->
            
                <div class="row reply_write">
                    <div class="col-1">
                        <a href="other_profile.do?other_nick=">
                            <img id="write_reply_profileImage"
                                src="./upload/profile/" />
                        </a>
                    </div>
                    <div class="col-8" class="input_reply_div">
                        <input class="w-100 form-control" id="input_reply2"
                            type="text" placeholder="댓글입력...">
                    </div>
                    <div class="col-3 ">
                        <button type="button" idx="2"
                            class="btn btn-success mb-1 write_reply">댓글&nbsp;달기</button>
                    </div>
                </div>
            
        </div>
    </section>
</div>
</body>
</html>