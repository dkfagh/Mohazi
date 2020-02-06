<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./includes/header.jsp" %>
<%@ include file="./includes/navigation.jsp" %>

 <style>
    #userId,
    #userPw {
      width: 310px;
      height: 40px;
    }

    #userId1,
    #userId2 {
      height: 40px;
      float: left;
      border: 1px solid #bbbbbb;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    #userId1 {
      width: 40px;
      border-right: none;
      background: rgb(248, 252, 250);
    }

    #userId2 {
      width: 260px;
    }


    #userPw {
      width: 310px;
      height: 40px;
    }

    #userPw1,
    #userPw2,
    #userPw3 {
      height: 40px;
      float: left;
      border: 1px solid #bbbbbb;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    #userPw1 {
      width: 40px;
      border-right: none;
      background: rgb(248, 252, 250);
    }

    #userPw2 {
      width: 220px;
      border-right: none;
    }

    #userPw3 {
      width: 40px;
      border-left: none;
      cursor: pointer;
    }
    
    input::placeholder{
           font-size: 11px; 
        }

    input {
      border: none;
      width: 260px;
      height: 38px;
      font-size: 16px;
      padding-left: 5px;
    }

    .material-icons {
      opacity: 0.2;
    }

    #contents {
      width: 300px;
      margin: auto;
    }

    input[type=checkbox] {
      width: 20px;
      height: 20px;
    }

    #autoCheck {
      height: 20px;
      font-size: 12px;
      display: flex;
      align-items: center;
    }

    #autoCheck {
      float: left;
    }

    .loginBtn {
      width: 310px;
      height: 40px;
      margin-top: 20px;
      background: rgb(248, 246, 246);
      color: rgb(22, 22, 22);
      border: 2px solid #cccccc;
      font-size: 16px;
    }

    .signUpBtn {
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
    .signUpBtn:hover{
    	text-decoration: none;
    	color:#fff;
    }

    .logBtn{
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
    <div align="center"> <img src="logo.png" width="200"> </div>


    <form method="post" action="/login">
    
 	<!--<p>태그 css로 추후에 수정하겠습니다.------------------------------------------------------------>
 
    	<!--userId 영역시작------------------------------------------------------------>
    
	    <div id="userId">
	      <div id="userId1">
	        <span><img src="resources/img/user.png" width="30"></span>
	      </div>
	      <div id="userId2">
	        <input type="text" placeholder="아이디" name="username">
	      </div>
	    </div>
		<!--userId 영역 끝---------------->

      	<!--userPw 영역시작------------------------------------------------------------>
	    <p />
	    <div id="userPw">
	        <div id="userPw1"> <span><img src="resources/img/userPw.png" width="30"></span> </div>
	        <div id="userPw2"> <input type="password" placeholder="비밀번호" name="password"> </div>
	        <div id="userPw3" onclick="chg_icon()">
	            <span class="material-icons" id="icon3"> visibility </span>
	            <c:out value="${error}" />
	            <c:out value="${logout}" />
	        </div>
	    </div>
    
		<!--userPw 영역 끝---------------->
      
     	<!--자동로그인,로그인,회원가입버튼 영역시작------------------------------------------------------------>
      	<p />
        <div>
          <div id="autoCheck"> <input type="checkbox" name="rememberme">자동로그인</div>
        </div>

        <p />
        <button type="submit" class="loginBtn" >로그인</button>
        
		<!--자동로그인,로그인,회원가입버튼 영역 끝 ------>
        
		<br>
        <button class="logBtn" name="naverLog" type="submit"><img src="resources/img/naverLogin.PNG" class="logImg"></button>
        <button class="logBtn" name="kakaoLog" type="submit"><img src="resources/img/kakaoLogin.png" class="logImg"></button>
        
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
    
    <div>
      <hr style="width:310px;border:none;border-bottom:1px solid #cccccc">
    </div>
   
    <p />
    <!-- <button type="submit" class="signUpBtn">회원가입</button> -->
    <a href="/signup" class="signUpBtn" type="button">회원가입</a>
    

    
      

  </div><!-- 화면영역 끝 -->

  
<%@ include file="./includes/footer.jsp" %>