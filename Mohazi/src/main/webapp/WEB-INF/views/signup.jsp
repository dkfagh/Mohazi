<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="/signup" method="post">
		<input type="text" name="id" placeholder="ID" />
		<input type="password" name="pw" placeholder="PW" />
		<input type="text" name="email" placeholder="email" />
		<input type="text" name="name" placeholder="name" />
		<input type="text" name="nickname" placeholder="nickname" />
		<input type="text" name="phone" placeholder="phone" />
		<!-- birth는 직접입력말고 collapsible(?)로 선택하도록 수정 -->
		<input type="text" name="birth" placeholder="birth" />
		<input type="submit">
	
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
</body>
</html>