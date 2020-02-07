<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./includes/header.jsp" %>
<%@ include file="./includes/navigation.jsp" %>

 <style>

    #contents {
      width: 300px;
      margin: auto;
    }

    #loginBtn {
      width: 310px;
      height: 50px;
      background: rgb(3, 3, 3);
      color: rgb(250, 246, 246);
      border: 2px solid #cccccc;
      font-size: 16px;
      text-align:center;
      margin:auto;
      line-height:40px;
    }
    #loginBtn:hover{
    	text-decoration: none;
    	color:#fff;
    }

    loginBtn{
      width:310px;
      height:40px;
      border: 0px;
      margin: 0px;
      margin-top: 10px;
    }

    .logImg{
      width:290px;
      height:38px;
      border: 0px;
      margin: 0px;
      background-color: white;
    }

    
  
  </style>

 <div class="container" id="contents">
 	<!-- 화면영역 시작 -->
    <div align="center"> <img src="resources/img/logoImg.png" width="200"> </div>
	<h1>로그아웃 완료!</h1>
	<a id="loginBtn" type="button" href="/customLogin">로그인하기</a>
</div><!-- 화면영역 끝 -->

  
<%@ include file="./includes/footer.jsp" %>