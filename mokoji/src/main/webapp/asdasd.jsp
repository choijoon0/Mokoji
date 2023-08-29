<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Kakao Bot</title>
</head>
<body>
    <h1>Kakao Bot</h1>
    <form action="/webhook" method="post">
        <input type="text" name="message" placeholder="메시지를 입력하세요" />
        <input type="submit" value="전송" />
    </form>
    <div>
        <strong>사용자:</strong> ${userMessage}
    </div>
    <div>
        <strong>봇:</strong> ${botResponse}
    </div>
</body>
</html>