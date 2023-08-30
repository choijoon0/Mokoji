<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="applyClubInst.do">
<c:forEach items="${ thisClubInst }" var="thisci">
<h1>번개장 : ${thisci.MEM_NAME }</h1>
<h1>번개 이름 : ${thisci.CINST_NAME }</h1>
<input type="hidden" name="cinst_code" value="${thisci.CINST_CODE }"/>
<h1>번개 날짜 : ${thisci.CINST_DATE }</h1>
<h1>번개내용 : ${thisci.CINST_CONTENT }</h1>
<h1>번개 정원: ${thisci.CINST_MEMTOT }</h1>
<h1>번개비용 : ${thisci.CINST_COST }</h1>
</c:forEach>

<c:forEach items="${ applyMember }" var="applyMem">
<h1>${applyMem.MEM_NAME }</h1>
<h1>${applyMem.MEM_REALFNAME }</h1>

</c:forEach>
<button type="submit">번개 신청하기!</button>
</form>
</body>
</html>