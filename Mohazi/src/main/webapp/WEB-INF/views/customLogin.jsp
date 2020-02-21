<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
	<title>list</title>
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
	<!-- jQuery UI -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
	<!-- bxslider -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"> 
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<!-- 폰트어썸 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<!-- 데이트피커 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-datetimepicker/2.7.1/css/bootstrap-material-datetimepicker.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">	
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-datetimepicker/2.7.1/js/bootstrap-material-datetimepicker.min.js"></script>
	<!-- 📝 If change language, add language file » https://cdnjs.com/libraries/moment.js  -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/locale/ja.js"></script>
	<!-- FAQ accordion -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<!-- 구글폰트  -->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">


 <style>
 	*{
			font-family: 'Nanum Gothic Coding', monospace;
		}
      	#main{
		 	width:280px;
	 		margin:auto;
	 		padding:30px;
	 		padding-left:50px !important;
	 	}
	 	#main img{
	 		width:100%;
	 	}
    #userId,
    #userPw {
      width: 310px;
      height: 40px;
    }

    .userId1,
    .userId2 {
      height: 40px;
      float: left;
      border: 1px solid #bbbbbb;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .userId1 {
      width: 40px;
      border-right: none;
      background: rgb(248, 252, 250);
    }

    .userId2 {
      width: 260px;
    }


    #userPw {
      width: 310px;
      height: 40px;
    }

    .userPw1,
    .userPw2,
    .userPw3 {
      height: 40px;
      float: left;
      border: 1px solid #bbbbbb;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .userPw1 {
      width: 40px;
      border-right: none;
      background: rgb(248, 252, 250);
    }

    .userPw2 {
      width: 220px;
      border-right: none;
    }

    .userPw3 {
      width: 40px;
      border-left: none;
      cursor: pointer;
    }
    
    input::placeholder{
           font-size: 13px; 
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
      margin-top:20px;
      height: 20px;
      font-size: 12px;
      display: flex;
      align-items: center;
    }
	#logMsg{
		width: 310px;
		margin-top:-10px;		
	}


    .loginBtn {
    background-color:#e9faf2;
	border-radius:5px;
	font-weight:bold;
	padding:7px;
	width:300px;
	color:#66a385;
	font-size:14px;
    border:0px;
    margin-top:10px;
    text-align:center;
    }

    .signUpBtn {
    background-color:#e9faf2;
	border-radius:5px;
	font-weight:bold;
	padding:7px;
	width:300px;
	color:#66a385;
	font-size:14px;
    border:0px;
    text-align:center;d0gie-r
    }
    .signUpBtn:hover{
    	text-decoration: none;
    	color:#66a385;
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
</head>

<body>
 <div class="container" id="contents">
 	<!-- 화면영역 시작 -->
    <div id="main"> <a href="index"><img src="resources/img/logoImg.png" ></a> </div>


    <form method="post" action="/login">
    	<!--userId 영역시작------------------------------------------------------------>
    
	    <div id="userId">
	      <div class="userId1">
	        <span><img src="resources/img/user.png" width="30"></span>
	      </div>
	      <div class="userId2">
	        <input type="text" placeholder="아이디" name="username">
	      </div>
	    </div>
		<!--userId 영역 끝---------------->

      	<!--userPw 영역시작------------------------------------------------------------>
	    <p />
	    <div id="userPw">
	        <div class="userPw1"> <span><img src="resources/img/userPw.png" width="30"></span> </div>
	        <div class="userPw2"> <input type="password" placeholder="비밀번호" name="password"> </div>
	        <div class="userPw3">
	            <span class="material-icons"> visibility </span>
	            
	        </div>
	    </div>
    
		<!--userPw 영역 끝---------------->
      
     	<!--자동로그인,로그인,회원가입버튼 영역시작------------------------------------------------------------>
      	<p />
        <div>
          <div id="autoCheck"> <input type="checkbox" name="remember-me">자동로그인</div>
        </div><br>
		<div id="logMsg" style="text-align:center; font-weight:bold;">
			<c:out value="${error}" />
            <c:out value="${logout}" />
            <c:out value="${successSignup }" />
		</div>
        <p />
        <button type="submit" class="loginBtn" >로그인</button>
        
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
    
    <div>
      <hr style="width:310px;border:none;border-bottom:1px solid #EBEBEB">
    </div>
   
    <p />
    <!-- <button type="submit" class="signUpBtn">회원가입</button> -->
    <a href="/signup" class="signUpBtn" type="button">회원가입</a>
    

    
      

  </div><!-- 화면영역 끝 -->
<!-- 스크립트 영역 -->
	<script>
		$(document).ready(function(){
			
			
			// 비밀번호 보이기, 안보이기, 클릭시 전환
			$(".userPw3").on("click",function(){
				$(".userPw2 input").toggleClass("active");
				 if($(".userPw2 input").hasClass("active")){
		            $(".userPw2 input").attr("type","text");
		        }else{
		            $(".userPw2 input").attr("type","password");
		        }
			});
		});
	</script>
<c:if test="${param.logout != null }">
	<script>
		$(document).ready(function(){
			if(history.state){
				return;
			}
			//$("#logout").click(function(){
				/* alert("로그아웃하였습니다."); */
				swal("Notice","로그아웃하였습니다.");
				
				history.replaceState({},null,null);	
			//});
			
		});
	</script>
</c:if>

<!-- 스크립트 영역 끝-->