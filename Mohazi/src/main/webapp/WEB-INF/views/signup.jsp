<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./includes/header.jsp" %>
<%@ include file="./includes/navigation.jsp" %>

    <style>
        #userId,
        #userPw,
        #userPwCheck,
        #userEmail,
        #userName,
        #userNickName,
        #userPhone {
            width: 350px;
            height: 50px;
        }

        #userId1,
        #userId2,
        #userEmail1,
        #userEmail2,
        #userName1,
        #userName2,
        #userNickName1,
        #userNickName2,
        #userPhone1,
        #userPhone2 {
            height: 40px;
            float: left;
            border: 1px solid #bbbbbb;
            display: flex;
            justify-content: center;
            align-items: center;
        }
     

        #userId1,
        #userEmail1,
        #userName1,
        #userNickName1,
        #userPhone1 {
            width: 40px;
            border-right: none;
            background: rgb(248, 252, 250);
        }

        #userId2,
        #userEmail2,
        #userName2,
        #userNickName2,
        #userPhone2 {
            width: 260px;
        
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
/* 
        #pwd_in {
            height: 40px;
            float: left;
            border: 1px solid #bbbbbb;
            display: flex;
            justify-content: center;
            align-items: center;
        } */

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

        #signUp {
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
        .signUpBtn {
            width: 310px;
            height: 50px;
            background: rgb(24, 24, 24);
            color: white;
            border: 2px solid #cccccc;
            font-size: 16px;
        }
    </style>

<%-- 
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
 --%>
 
 <form action="/signup" method="post">
    <div id=signUp>
        <div align=center> <img src=logo.png width=200> </div>

        <!--userId 영역시작------------------------------------------------------------>
        <div id=userId>
            <div id=userId1>
                <span><img src=img/user.png width=30 align=center></span>
            </div>
            <div id=userId2 style="font-size: 5px;">
                <input type=text  name="id" placeholder="아이디" >
            </div>
        </div>


        <!--userPw 영역시작------------------------------------------------------------>
        <p>
            <div id=userPw>
                <div id=userPw1> <span><img src=img/userPw.png width=30 align=center></span> </div>
                <div id=userPw2> <input type=password name="pw" placeholder=비밀번호> </div>
                <div id=userPw3 onclick=chg_icon()>
                    <span class=material-icons id=icon3> visibility </span>
                </div>
            </div>
        </p>

        <!--userPwCheck 영역시작------------------------------------------------------------>
        <p>
            <div id=userPwCheck>
                <div id=userPw1> <span><img src=img/userPwCheck.png width=30 align=center></span> </div>
                <div id=userPw2> <input type=password placeholder="비밀번호 확인"> </div>
                <div id=userPw3 onclick=chg_icon()>
                    <span class=material-icons id=icon3> visibility </span>
                </div>
            </div>
        </p>

        <!--userEmail 영역시작------------------------------------------------------------>
        <p>
            <div id=userEmail>
                <div id=userEmail1>
                    <span><img src=img/userEmail.png width=30 align=center></span>
                </div>
                <div id=userEmail2>
                    <input type=text name="email" placeholder="이메일">
                </div>
            </div>
        </p>

        <!--userName 영역시작------------------------------------------------------------>
        <p>
            <div id=userName>
                <div id=userName1>
                    <span><img src=img/user.png width=30 align=center></span>
                </div>
                <div id=userName2>
                    <input type=text name="name" placeholder="이름">
                </div>
            </div>
        </p>

        <!--userNickName 영역시작------------------------------------------------------------>
        <p>
            <div id=userNickName>
                <div id=userNickName1>
                    <span><img src=img/userNickName.png width=30 align=center></span>
                </div>
                <div id=userNickName2>
                    <input type=text name="nickname" placeholder="닉네임">
                </div>
            </div>
        </p>

        <!--userPhone 영역시작------------------------------------------------------------>
        <p>
            <div id=userPhone>
                <div id=userPhone1>
                    <span><img src=img/userPhone.png width=30 align=center></span>
                </div>
                <div id=userPhone2>
                    <input type=text name="phone" placeholder="휴대폰 번호">
                </div>
            </div>
        </p>

        <!--userPhone 영역시작------------------------------------------------------------>



        <div id=userPhone>
            <div id=userPhone1>
                <span><img src=img/user.png width=30 align=center></span>
            </div>
            <div id=userPhone2>
                <script type="text/javascript">
                    var today = new Date();
                    var toyear = parseInt(today.getFullYear ());
                    var start = toyear;
                    var end = toyear - 75;
    
                    document.write("<select name=birth1> ");
                    document.write("<option value='2015' selected>");
                    for (i=start;i>=end;i--) document.write("<option>"+i);
                    document.write("</select>년  ");
    
                    document.write("<select name=birth2>");
                    document.write("<option value='' selected>");
                    for (i=1;i<=12;i++) document.write("<option>"+i);
                    document.write("</select>월  ");
    
                    document.write("<select name=birth3>");
                    document.write("<option value='' selected>");
                    for (i=1;i<=31;i++) document.write("<option>"+i);
                    document.write("</select>일  </font>");
                    </script>  
            </div>
        </div>

        <!--회원가입버튼 영역시작------------------------------------------------------------>
        <div>
            <hr style="width:310px;border:none;border-bottom:1px solid #111111">
        </div>
        <p>
            <button type="submit" class="signUpBtn">회원가입</button>
        </p>

		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>

    </div>
    
<%@ include file="./includes/footer.jsp" %>