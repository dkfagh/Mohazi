<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form id="registerForm" action="/board/register" method="post" >
	<select name="cat_main">
		<option value="운동">운동</option>
		<option value="요리">요리</option>
		<option value="실무">실무</option>
	</select>
	<select name="cat_sub">
		<option value="러닝">러닝</option>
		<option value="헬스">헬스</option>
		<option value="IT">IT</option>
	</select>
	<select name="region">
		<option value="서울">서울</option>
		<option value="경기">경기</option>
	</select>

	<input type="text" name="title" placeholder="제목을 입력해주세요" />
	<input type="text" name="content" placeholder="내용을 입력해주세요" />
	<input type="text" name="id" placeholder="ID(나중에 지워)" />
	<input type="text" name="tag" placeholder="tag(API 사용하자)" />
	<input type="text" name="photo" placeholder="첨부파일(나중에 바꿔)" />
	<input type="text" name="price" placeholder="가격(type number)" />
	<input type="submit" />
	
	<input type="hidden" name="type" value="M" />
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>

</body>
</html>