<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./includes/header.jsp" %>
<%@ include file="./includes/navigation.jsp" %>

	<form action="/login" method="post">
		<input type="text" name="username" placeholder="ID" autofocus />
		<input type="password" name="password" placeholder="PW" />
		
		<input type="submit">
		
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>


<%@ include file="./includes/footer.jsp" %>