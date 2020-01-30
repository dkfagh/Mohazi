<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
</head>
<body>
	<form action="/login" method="post">
		<input type="text" name="username" placeholder="ID" autofocus />
		<input type="password" name="password" placeholder="PW" />
		
		<input type="submit">
		
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
</body>
</html>