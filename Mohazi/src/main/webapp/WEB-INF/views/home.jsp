<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>INDEX</title>
</head>
<body>
<h1>
	INDEX PAGE
</h1>

<P>  The time on the server is ${serverTime}. </P>

<form action="/board/list" method="get">
	<select name="type">
		<option value="M" selected>소모임</option>
		<option value="C">클래스</option>
	</select>
	<br />
	
	<h3>관심사</h3>
	<input type="checkbox" name="categoryArr" value="운동"> 운동 <br />
	<input type="checkbox" name="categoryArr" value="실무"> 실무 <br />
	
	<h3>지역</h3>
	<input type="checkbox" name="regionArr" value="서울"> 서울 <br />
	<input type="checkbox" name="regionArr" value="경기"> 경기 <br />
	
	<input type="submit" value="GO LIST" />
</form>

</body>
</html>
