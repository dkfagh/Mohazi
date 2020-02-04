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
        #userPhone,
        #birthDate {
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
        #userPhone2,
        #birthDate1,
        #birthDate2 {
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
        #userPhone1,
        #birthDate1 {
            width: 40px;
            border-right: none;
            background: rgb(248, 252, 250);
        }

        #userId2,
        #userEmail2,
        #userName2,
        #userNickName2,
        #userPhone2,
        #birthDate2 {
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
            float: left;
        }

        .signUpBtn {
            width: 310px;
            height: 50px;
            background: rgb(24, 24, 24);
            color: white;
            border: 2px solid #cccccc;
            font-size: 16px;
        }
        
        .text-center{
            border-top:  1px solid #7bd4ac ;
            border-bottom: 1px solid #7bd4ac ;
        }
    </style>

 <!-- 컨텐츠 영역 시작 ------------------------------------------------------->
  <div class="container" id="contents">
        <div align="center"> <img src="logo.png" width="200" /> </div>

        <form id = "operForm" role="form" action="/signup" method="post">

	        <!--userId 영역시작------------------------------------------------------------>
	        <div id="userId">
	            <div id="userId1">
	                <span><img src="resources/img/user.png" width="30"></span>
	            </div>
	            <div id="userId2" style="font-size: 5px;">
	                <input type="text" placeholder="아이디" name="id">
	            </div>
	        </div><!--userId 영역 끝------>
	
	        <!--userPw 영역시작------------------------------------------------------------>
	        <p />
	        <div id="userPw">
	            <div id="userPw1"> <span><img src="resources/img/userPw.png" width="30"></span> </div>
	            <div id="userPw2"> <input id ="pw" type="password" placeholder="비밀번호" name="pw"> </div>
	            <div id="userPw3" onclick="chg_icon()">
	                <span class="material-icons" id="icon3"> visibility </span>
	            </div>
	        </div><!--userPw 영역 끝---->
			
	        <!--userPwCheck 영역시작------------------------------------------------------------>
	        <p />
	        <div id="userPwCheck">
	            <div id="userPw1"> <span><img src="resources/img/userPwCheck.png" width="30"></span> </div>
	            <div id="userPw2"> <input id ="pwEqual" type="password" placeholder="비밀번호 확인" > </div>
	            <div id="userPw3" onclick="chg_icon()">
	                <span class="material-icons" id="icon3"> visibility </span>
	            </div>
	        </div><!--userPwCheck 영역 끝-->
	        
	
	        <!--userEmail 영역시작------------------------------------------------------------>
	        <p />
	        <div id="userEmail">
	            <div id="userEmail1">
	                <span><img src="resources/img/userEmail.png" width="30"></span>
	            </div>
	            <div id="userEmail2">
	                <input type="text" placeholder="이메일" name="email">
	            </div>
	        </div><!--userEmail 영역 끝-->
	        
	
	        <!--userName 영역시작------------------------------------------------------------>
	        <p />
	        <div id="userName">
	            <div id="userName1">
	                <span><img src="resources/img/user.png" width="30"></span>
	            </div>
	            <div id="userName2">
	                <input type="text" placeholder="이름" name="name">
	            </div>
	        </div><!--userName 영역 끝 -->
	        
	
	        <!--userNickName 영역시작--------------------->
	        <p />
	        <div id="userNickName">
	            <div id="userNickName1">
	                <span><img src="resources/img/userNickName.png" width="30"></span>
	            </div>
	            <div id="userNickName2">
	                <input type="text" placeholder="닉네임" name="nickname">
	            </div>
	        </div> <!--userNickName 영역끝-->
	        
	
	        <!--userPhone 영역시작------------------------->
	        <p />
	        <div id="userPhone">
	            <div id="userPhone1">
	                <span><img src="resources/img/userPhone.png" width="30"></span>
	            </div>
	            <div id="userPhone2">
	                <input type="text" placeholder="휴대폰 번호" name="phone">
	            </div>
	        </div><!--userPhone 영역 끝-->
	        
	        <!--DatePicker 영역시작------------------------->
			<p />
	        <div id="birthDate">
	            <div id="birthDate1">
	                <span><img src="resources/img/user.png" width="30" ></span>
	            </div>
	            <div id="birthDate2">
	                <input id="date" type="date" name="birth" style="font-size:11px">
	            </div>
	        </div><!--DatePicker 영역 끝--->
			
	
		 	<!-- enable 활동상태 -->
		<!-- 	<input type="hidden" name="enabled" value="true" /> -->
	      
	      
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
 <!-- 컨텐츠 영역 끝 ------------------------------------------------------->
<%@ include file="./includes/footer.jsp" %>

<!-- 스크립트 영역 -------------------------------------->
<script>
$(document).ready(function(){
	var formObj = $("form[role='form']");
	console.log("hello signup");
	   $("button[type='submit']").on("click",function(e){
		  e.preventDefault();
		  
		  var pw=$("#pw").val();
		  var pwEqual=$("#pwEqual").val();
		  var date =$("#date").val();
		  console.log("submit clicked");
		  console.log("date : "+date);
		  // 비밀번호 비교 /////////////////////////////
		  if(pw != pwEqual){
			  alert("비밀번호가 같지 않습니다.");
			  return;
		  }
		  if(pw == ""){
			  alert("비밀번호를 입력해주세요.");
			  return;
		  }
		  ///비밀번호 비교 끝 //////////////////////////////
		  
		  
		  formObj.submit();
		  
	   });
});
</script>
<!-- 스크립트 영역 끝 -------------------------------------->