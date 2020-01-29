<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
</head>
<body>
	<h1>GET PAGE</h1>
	<h3>TITLE : <c:out value="${party.title}" /></h3>
	<h3>CONTENT : <c:out value="${party.content}" /></h3>
	
	<form id="operForm" action="/board/modify" method="get">
		<input type="hidden" name="p_no" value="${party.p_no}" />
		
		<!-- 책에서 data-oper 사용하여 수정/삭제 나눈 것처럼 -->
		<button data-oper="addSchedule">SCHEDULE 등록</button>
		<button type="submit">수정</button>
	</form>
</body>
</html>