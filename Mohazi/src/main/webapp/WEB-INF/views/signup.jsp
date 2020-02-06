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

 
  <div class="container" id="contents">
        <div align="center"> <img src="logo.png" width="200"> </div>

        <form role="form" action="/signup" method="post">

	        <!--userId 영역시작------------------------------------------------------------>
	        <div id="userId">
	            <div id="userId1">
	                <span><img src="resources/img/user.png" width="30"></span>
	            </div>
	            <div id="userId2" style="font-size: 5px;">
	                <input type="text" placeholder="아이디" name="id">
	            </div>
	        </div>
			<!--userId 영역 끝----------------->
	
	        <!--userPw 영역시작------------------------------------------------------------>
	        <p />
	        <div id="userPw">
	            <div id="userPw1"> <span><img src="resources/img/userPw.png" width="30"></span> </div>
	            <div id="userPw2"> <input id ="pw" type="password" placeholder="비밀번호" name="pw"> </div>
	            <div id="userPw3" onclick="chg_icon()">
	                <span class="material-icons" id="icon3"> visibility </span>
	            </div>
	        </div>
	        
			<!--userPw 영역 끝---------------->
			
	        <!--userPwCheck 영역시작------------------------------------------------------------>
	        <p />
	        <div id="userPwCheck">
	            <div id="userPw1"> <span><img src="resources/img/userPwCheck.png" width="30"></span> </div>
	            <div id="userPw2"> <input id="pwEqual" type="password" placeholder="비밀번호 확인"> </div>
	            <div id="userPw3" onclick="chg_icon()">
	                <span class="material-icons" id="icon3"> visibility </span>
	            </div>
	        </div>
	        
	
	        <!--userEmail 영역시작------------------------------------------------------------>
	        <p />
	        <div id="userEmail">
	            <div id="userEmail1">
	                <span><img src="resources/img/userEmail.png" width="30"></span>
	            </div>
	            <div id="userEmail2">
	                <input id ="email" type="text" placeholder="이메일" name="email">
	            </div>
	        </div>
	        
	
	        <!--userName 영역시작------------------------------------------------------------>
	        <p />
	        <div id="userName">
	            <div id="userName1">
	                <span><img src="resources/img/user.png" width="30"></span>
	            </div>
	            <div id="userName2">
	                <input type="text" placeholder="이름" name="name">
	            </div>
	        </div>
	        
	
	        <!--userNickName 영역시작------------------------------------------------------------>
	        <p />
	        <div id="userNickName">
	            <div id="userNickName1">
	                <span><img src="resources/img/userNickName.png" width="30"></span>
	            </div>
	            <div id="userNickName2">
	                <input type="text" placeholder="닉네임" name="nickname">
	            </div>
	        </div>
	        
	
	        <!--userPhone 영역시작------------------------------------------------------------>
	        <p />
	        <div id="userPhone">
	            <div id="userPhone1">
	                <span><img src="resources/img/userPhone.png" width="30"></span>
	            </div>
	            <div id="userPhone2">
	                <input id="phone" type="text" placeholder="휴대폰 번호" name="phone">
	            </div>
	        </div>
	        
	
	
	        <!--userPhone 영역시작------------------------------------------------------------>
	
	
			<p />
	        <div id="birthDate">
	            <div id="birthDate1">
	                <span><img src="resources/img/user.png" width="30" ></span>
	            </div>
	            <div id="birthDate2">

	                <input id="date" type="text" name="birth" style="font-size:11px">

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
 <!-- 컨텐츠 영역 끝 ------------------------------------------------------->


<!-- 스크립트 영역 -------------------------------------->
<script>
$(document).ready(function(){
	
	// datePicker
	$("#date").datepicker({
		dateFormat: "yy/mm/dd", // 포맷형식
		
		monthNames: ["1 월","2 월","3 월","4 월","5 월","6 월","7 월","8 월","9 월","10 월","11 월","12 월"], // 개월 텍스트 설정
	    monthNamesShort: ["1 월","2 월","3 월","4 월","5 월","6 월","7 월","8 월","9 월","10 월","11 월","12 월"], // 개월 텍스트 설정
	    dayNames: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"], // 요일 텍스트 설정
	    dayNamesShort: ["일","월","화","수","목","금","토"], // 요일 텍스트 축약 설정&nbsp;   
		dayNamesMin: ["일","월","화","수","목","금","토"], // 요일 최소 축약 텍스트 설정
		changeYear: true, // 연도 변경 가능설정
		changeMonth: true, // 월 변경 가능설정
		
		showMonthAfterYear: true, // 연도, 월 순서로 표시
		maxDate: "0d" // 금일 날짜 이후는 선택할 수 없음. 금일로부터 y, m , d 형식으로 변경 선택가능날짜 지정가능
		
		
		
	});
	$("#date").datepicker("setDate", "1990/01/01");
	
	
	
	var formObj = $("form[role='form']");
	console.log("hello signup");
	  
	$("button[type='submit']").on("click",function(e){
		  e.preventDefault();

		  
		  var pw=$("#pw").val();
		  var pwEqual=$("#pwEqual").val();
		  var phone=$("#phone").val();
		  
		  var email=$("#email").val();
		  // phone 정규식 : 
		  var regNumber = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		  // email 정규식 : 
		  var regEmail=/^[_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/;
		  
		  if(!regEmail.test(email)) // email 정규식이 맞지 않을 때
		    {
		        alert("잘못된 이메일입니다. 다시 입력해주세요.");
		        console.log("email: "+email);
		        
		        
		        $("#email").val("");
		        return;
		    }
		  
		  else if(!regNumber.test(phone)) // phone 정규식이 맞지 않을 때
		    {
		        alert("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.");
		        console.log("phone1: "+phone);
		        
		        
		        $("#phone").val("");
		        return;
		    }
		  
		  
		  // 비밀번호 비교 /////////////////////////////
		  else if(pw == ""){
			  alert("비밀번호를 입력해주세요.");
			  return;
		  }
	      
	      else if(pw != pwEqual){
			  alert("비밀번호가 같지 않습니다.");
			  return;
		  }
		  
		  ///비밀번호 비교 끝 //////////////////////////////
		  
		  else{
		  	formObj.submit();
		  }
	   });
});
</script>
<!-- 스크립트 영역 끝 -------------------------------------->
<%@ include file="./includes/footer.jsp" %>