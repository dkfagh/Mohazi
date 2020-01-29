<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
</head>

<body>
	<form action="/board/modify" method="post">
	
		<!-- 기존 값 불러와서 SELECTE 주기 -->
		<select name="cat_main">
			<option value="운동">운동</option>
			<option value="요리">요리</option>
		</select>
		<select name="cat_sub">
			<option value="러닝">러닝</option>
			<option value="헬스">헬스</option>
		</select>
		<select name="region">
			<option value="서울">서울</option>
			<option value="경기">경기</option>
		</select>
	
		<input type="text" name="title" value="${party.title}" />
		<input type="text" name="content" value="${party.content}" />
		<input type="text" name="id" value="${party.id}" readonly />
		<input type="text" name="tag" value="${party.tag}" placeholder="tag"/>
		<input type="text" name="photo" value="${party.photo}" placeholder="photo"/>
		<input type="text" name="price" value="${party.price}" placeholder="price"/>
		

		<input type="hidden" name="type" value="${party.type}" />
		
		<button type="submit">수정</button>
		<button data-oper="remove">삭제</button>
		
		<input type="hidden" name="p_no" value="${party.p_no}" />
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
</body>
</html>