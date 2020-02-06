<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제목없어ㅗ</title>
</head>
<body>
	<h1>로그인 할 수 없습니다.접근허용금지</h1>
	<h2><c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage() }"></c:out></h2>
	<h2><c:out value="${msg }"></c:out></h2>
</body>
</html>