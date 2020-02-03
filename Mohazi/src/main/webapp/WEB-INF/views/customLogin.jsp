<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

    #pwd_in {
      height: 40px;
      float: left;
      border: 1px solid #bbbbbb;
      display: flex;
      justify-content: center;
      align-items: center;
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

    #login {
      width: 300px;
      margin: auto;
    }

    input[type=checkbox] {
      width: 20px;
      height: 20px;
    }

    #autoCheck,
    #txt {
      height: 20px;
      font-size: 12px;
      display: flex;
      align-items: center;
    }

    #autoCheck {
      float: left;
    }

    #txt {
      float: right;
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
    }
    .logbtn{
      width:310px;
      height:40px;
      border: 0px;
      margin: 0px;
    }

    .logimg{
      width:290px;
      height:38px;
      border: 0px;
      margin: 0px;
    }
  
</style>

<!-- 
	<form action="/login" method="post">
		<input type="text" name="username" placeholder="ID" autofocus />
		<input type="password" name="password" placeholder="PW" />
		
		<input type="submit">
		
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
 -->

<!-- div를 container class로 묶어야 하지 않을까요 -->
  <div id=login>
    <div align=center> <img src=logo.png width=200> </div>

    <!--userId 영역시작------------------------------------------------------------>
  	<form action="/login" method="post">
  	
      <div id=userId>
        <div id=userId1>
          <span><img src=img/user.png width=30 align=center></span>
        </div>
        <div id=userId2>
          <input type=text name="username" placeholder="아이디">
        </div>
      </div>


      <!--userPw 영역시작------------------------------------------------------------>
      <p>
        <div id=userPw>
            <div id=userPw1> <span><img src=img/userPw.png width=30 align=center></span> </div>
            <div id=userPw2> <input type=password name="password" placeholder=비밀번호> </div>
            <div id=userPw3 onclick=chg_icon()>
                <span class=material-icons id=icon3> visibility </span>
            </div>
        </div>
    </p>

      
      <!--자동로그인,로그인,회원가입버튼 영역시작------------------------------------------------------------>
      <p>
        <div>
          <div id=autoCheck> <input type=checkbox>자동로그인</div>
        </div>

        <p>
          <button type="submit" class=loginBtn>로그인</button>
        </p>

       <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>

        <button class="logbtn kakaoBtn" align=center type="submit"><img src="img/naverLogin.png" class="logimg" align=center></button>
        <button class="logbtn kakaoBtn" align=center type="submit"><img src="img/kakaoLogin.png" class="logimg" align=center></button>

        <div>
          <hr style="width:310px;border:none;border-bottom:1px solid #cccccc">
        </div>
       
        <p>
          <button type="submit" class="signUpBtn">회원가입</button>
        </p>


  
<%@ include file="./includes/footer.jsp" %>