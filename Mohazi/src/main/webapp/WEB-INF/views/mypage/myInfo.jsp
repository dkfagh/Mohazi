<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>

  <style>
  		/* reset */
        *{
            margin:0;
            padding: 0;
			font-family: 'Nanum Gothic', sans-serif;
		
        }
        /* content 부분 시작 */
        .container{
            position: relative;
            max-width: 100%;
            width:100%;
            margin-left:0;
            margin-right:0;
            padding-left: 0;
            padding-right: 0;
            margin-top: 10px;
            display: inline-block;
            padding-top:20px;
            padding-bottom:20px;
            height:100%;
        }

        .row{
            position: relative;
            width:100%;
            padding-left:22%;
            box-sizing: border-box;
            height: 100%;
            display:inline-block;
            
        }
        /* content 부분 끝 */

       /* mypage 네비 시작 */
        #myNav{
            border-radius:10px;
            border: #e9faf2 solid 2px;
            margin-right:15px;
            max-width: 161.64px;
            height:630px;
            padding: 0;
            float: left;            
        }
        #myNav a{
            display: block;
            transition: background-color .3s;
		    text-decoration:none;
		    color:black;
        }
        #myNav a:hover{
		    background: #7bd4ac ;
		   	color: white;
        }
        .myNavHome{
            background-color: #e9faf2;
            height: 40px;
            width:100%;
            text-align: center;
            border-bottom: #e9faf2 solid 2px;
            margin:0;
        }
        .myNavHome h5{
        	padding-top:7px;
        	font-weight:bold;
        	color:#66a385;
        }
        .myNavItem{
            padding:15px;
            margin:0;
            font-weight:bold;
        }
        .myNavItem a{
			padding:7px;
        }
        /* mypage 네비 끝 */

         #pages{
            position:relative;
            display:inline-block;
            width:60%;
            min-width:484px;
            height: 630px;
            overflow:hidden;
            border-radius:10px;
            border: #e9faf2 solid 2px;
            
        }
        
  		#inputValue{
  			width:50%;
  			margin-left:30%;
  			padding-top:25px;
        }
        
        #userId,
        #userPw,
        #userPwCheck,
        #userEmail,
        #userName,
        #userNickName,
        #userPhone,
        #birthDate
        {
            width: 300px;
            height: 50px;
			margin-top:10px;
        }
        

        .userId1,
        .userId2,
        .userEmail1,
        .userEmail2,
        .userName1,
        .userName2,
        .userNickName1,
        .userNickName2,
        .userPhone1,
        .userPhone2,
        .birthDate1,
        .birthDate2 {
            height: 40px;
            float: left;
            border: #EBEBEB solid 1px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
     

        .userId1,
        .userEmail1,
        .userName1,
        .userNickName1,
        .userPhone1,
        .birthDate1 {
            width: 40px;
            
            background: rgb(248, 252, 250);
        }

        .userId2,
        .userEmail2,
        .userName2,
        .userNickName2,
        .userPhone2,
        .birthDate2 {
            width: 260px;
        
        }

        .userPw1,
        .userPw2,
        .userPw3 {
            height: 40px;
            float: left;
            border:  #EBEBEB solid 1px;
            display: flex;
            justify-content: center;
            align-items: center;

        }

        .userPw1 {
            width: 40px;
            
            background: rgb(248, 252, 250);
        }

        .userPw2 {
            width: 220px;
            
        }

        .userPw3 {
            width: 40px;
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

        /* #contents {
            width: 300px;
            margin: auto;
           
        } */

        .btnMypageModify {
			background-color:#e9faf2;
			font-family: 'Nanum Gothic Coding', monospace;
   	 		border-radius:5px;
			font-weight:bold;
			padding:7px;
			margin-top:10px;
			width:300px;
			color:#66a385;
			font-size:14px;
      		border:0px;
        }
        
        .text-center{
            border-top:  1px solid #7bd4ac ;
            border-bottom: 1px solid #7bd4ac ;
        }
        
    </style>

 
  <div class="container">
	<div class="row"> <!-- 내정보 네비, 페이지 분할 -->
            <!-- 네비 시작 -->
            <div id="myNav"class="col-sm-3" >
                
                    <div class="myNavHome">
                            <h5>내정보</h5>
                    </div>
                    <div class="myNavItem">
                        <a href="/mypage/myMeeting">내 모임</a>
                        <a href="/mypage/myClass">내 클래스</a>
                        <a href="/mypage/myInfo">내정보 변경</a>                
                    </div>
                
            </div>
            
            <!-- 네비 끝 -->
            
            <!-- 페이지 바디 시작 -->
            <div id="pages" class="col-sm-9">
			        <form role="form" action="/mypage/myInfo" method="post" id="mypageModify">
					<div id="inputValue" class="col-sm-12">
				        <!--userId 영역시작------------------------------------------------------------>
				        <div id="userId">
				            <div class="userId1">
				                <span><img src="../resources/img/user.png" width="30"></span>
				            </div>
				            <div class="userId2" style="font-size: 5px;">
				                <input type="text" placeholder="아이디" name="id" value="${users.id }" readonly>
				            </div>
				        </div>
						<!--userId 영역 끝----------------->
				
				        <!--userPw 영역시작------------------------------------------------------------>
				        <p />
				        <div id="userPw">
				            <div class="userPw1"> <span><img src="../resources/img/userPw.png" width="30"></span> </div>
				            <div class="userPw2"> <input id ="pw" type="password" placeholder="비밀번호" name="pw" value=""> </div>
				            <div class="userPw3" onclick="chg_icon()">
				                <span class="material-icons" id="icon3"> visibility </span>
				            </div>
				        </div>
				        
						<!--userPw 영역 끝---------------->
						
				        <!--userPwCheck 영역시작------------------------------------------------------------>
				        <p />
				        <div id="userPwCheck">
				            <div class="userPw1"> <span><img src="../resources/img/userPwCheck.png" width="30"></span> </div>
				            <div class="userPw2"> <input id="pwEqual" type="password" placeholder="비밀번호 확인"> </div>
				            <div class="userPw3" onclick="chg_icon()">
				                <span class="material-icons" id="icon3"> visibility </span>
				            </div>
				        </div>
				        
				
				        <!--userEmail 영역시작------------------------------------------------------------>
				        <p />
				        <div id="userEmail">
				            <div class="userEmail1">
				                <span><img src="../resources/img/userEmail.png" width="30"></span>
				            </div>
				            <div class="userEmail2">
				                <input id ="email" type="text" placeholder="이메일" name="email" value="${users.email }">
				            </div>
				        </div>
				        
				
				        <!--userName 영역시작------------------------------------------------------------>
				        <p />
				        <div id="userName">
				            <div class="userName1">
				                <span><img src="../resources/img/user.png" width="30"></span>
				            </div>
				            <div class="userName2">
				                <input id ="name" type="text" placeholder="이름" name="name" value="${users.name }" readonly>
				            </div>
				        </div>
				        
				
				        <!--userNickName 영역시작------------------------------------------------------------>
				        <p />
				        <div id="userNickName">
				            <div class="userNickName1">
				                <span><img src="../resources/img/userNickName.png" width="30"></span>
				            </div>
				            <div class="userNickName2">
				                <input id="nickname" type="text" placeholder="닉네임" name="nickname" value="${users.nickname }" >
				            </div>
				        </div>
				        
				
				        <!--userPhone 영역시작------------------------------------------------------------>
				        <p />
				        <div id="userPhone">
				            <div class="userPhone1">
				                <span><img src="../resources/img/userPhone.png" width="30"></span>
				            </div>
				            <div class="userPhone2">
				                <input id="phone" type="text" placeholder="휴대폰 번호" name="phone" value="${users.phone }">
				            </div>
				        </div>
				        
				
				
				        <!--userPhone 영역시작------------------------------------------------------------>
				
				
						<p />
				        <div id="birthDate">
				            <div class="birthDate1">
				                <span><img src="../resources/img/user.png" width="30" ></span>
				            </div>
				            <div class="birthDate2">
			
							<fmt:formatDate value="${users.birth}" pattern="yyyy/MM/dd" />


				                <%-- <input id="date" type="text" name="birth" style="font-size:11px" value="${users.birth}" readonly> --%>
									
				            </div>
				        </div>
						<!-- input id="inputValue 끝 -->
				    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				    	
				        <!--회원정보변경 영역시작------------------------------------------------------------>
				        <button type="submit" class="btnMypageModify">회원정보변경</button>
					    
					</div>
					</form>
			      	</div>
                <!-- 만든 클래스 끝 -->
            </div><!-- 페이지 바디 끝 -->    
        </div><!-- 내정보 네비, 페이지 분할 -->
        
 <!-- 컨텐츠 영역 끝 ------------------------------------------------------->


<!-- 스크립트 영역 -------------------------------------->
<script src="../resources/js/review.js"></script>
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
	
	
	
	var formObj = $("form[role='form']");
	console.log("hello userModify");
	  
	$("button[type='submit']").on("click",function(e){
		  e.preventDefault();

		  
		  var pw=$("#pw").val();
		  var pwEqual=$("#pwEqual").val();
		  var phone=$("#phone").val();
		  
		  var email=$("#email").val();
		  $("#date").attr("type","date");
		   
		  // phone 정규식 : 
		  var regNumber = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		  // email 정규식 : 
		  var regEmail=/^[_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/;
		  
		  if(!regEmail.test(email)) // email 정규식이 맞지 않을 때
		    {
		        /* alert("잘못된 이메일입니다. 다시 입력해주세요."); */
		        swal("Notice","잘못된 이메일입니다. 다시 입력해주세요.");
		        console.log("email: "+email);
		        
		        
		        $("#email").val("");
		        return;
		    }
		  
		  else if(!regNumber.test(phone)) // phone 정규식이 맞지 않을 때
		    {
		        /* alert("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요."); */
		        swal("Notice","잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.");
		        console.log("phone1: "+phone);
		        
		        
		        $("#phone").val("");
		        return;
		    }
		  
		  
		  // 비밀번호 비교 /////////////////////////////
 		  else if(pw == ""){
			  /* alert("비밀번호를 입력해주세요."); */
			  swal("Notice","비밀번호를 입력해주세요.");
			  return;
		  }
	      
	      else if(pw != pwEqual){
			  /* alert("비밀번호가 같지 않습니다."); */
			  swal("Notice","비밀번호가 같지 않습니다.");
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

<%@ include file="../includes/footer.jsp" %>