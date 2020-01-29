<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEETING LIST</title>
</head>
<body>
<h1>MEETING LIST !</h1>
<ul>
	<c:forEach var="party" items="${list}">
		<li><c:out value="${party.title}" /></li>
	</c:forEach>
</ul>

</body>
</html>