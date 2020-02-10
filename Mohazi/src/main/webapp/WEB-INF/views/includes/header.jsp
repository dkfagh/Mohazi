<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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


<style>

#header {
background-color: #fcfcfd;
}


#sub-header {
position: relative;
width: 100%;
height: 130px;
margin: 0 auto;
border-bottom:#7bd4ac solid 2px;
}

#logo{
    padding-top: 25px;
    float: left;
    padding-left:5%;
}

#login{
    padding-top: 45px;
    float: right;
    padding-right:5%;
display:block;
}

#logBox{
display:none;	
}
#login a{
    background-color: #7bd4ac ;
    color: white;
}

#logoutBox{
    padding-top: 45px;
    float: right;
    padding-right:5%;
	 
}
#logoutBox button{
    background-color: #7bd4ac ;
    color: white;
}
#myPage{
	padding-top: 45px;
    float: right;
    margin-right:0;
    
}
#myPage a{
    background-color: #7bd4ac ;
    color: white;
}


.logo {
    display: inline;    
    border: solid 1px black;
}

.form-inline{
    padding-top: 45px;
    padding-right: 12%;
    float: right;
}




#search{
   width:330px !important;
   float: right;
   border-radius:10px;
   border-color:#e9faf2;
   background-color:#e9faf2;
}

#searchIcon{
   padding-top:3px;
   padding-left:4px;
   margin-top: 2px;
   margin-left:2px;
   width:32px;
}

/* placeholder color change

 input::-ms-input-placeholder { color: white; }
// Internet Explorer 10 이상에 적용

input::-webkit-input-placeholder { color: white; }
//  Webkit, Blink, Edge에 적용

input::-moz-placeholder { color: white; }
// Mozilla Firefox에 적용 */
</style>


</head>

<body>
   <!-- 헤더--------------------------------- ---->
   <div id="header">
        <div id="sub-header">
            <div id="logo">
                <a href="/index"><img src="resources/img/logoImg.png" id="logoImg" name="logoImg" width="200px"></a>
            </div>
<<<<<<< HEAD
            
            
            <div id="login">
                <a href="/customLogin" class="btn btn-sm">로그인</a>
            </div>
            <!-- 로그인 로그아웃 처리를 위해 묶어놓음 -->
            <div id="logBox">
	            <form action="customLogout" method="post">
	           		<div id="logoutBox">
	                	<button id="logout" class="btn">로그아웃</button>
	                	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	            	</div>
	            </form>
	            <div id="myPage">
	                <a href="/mypage/myMeeting" class="btn">내정보</a>
            	</div>
            </div>
            
            <!-- 시큐리티 테스트 중 -->
            <!-- <sec:authorize access="isAuthenticated()">
            		<div id="logoutBox">
						<button id="logout" class="btn btn-sm">로그아웃</button>
					</div>
=======
 
            <!-- 시큐리티 영역 -->
            <sec:authorize access="isAuthenticated()">
            	<div id="logBox">
            		<form id="logoutForm" action="/customLogout" method="post">
            			<input id="logInId" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            			
            		</form>
            			<!-- 로그인 시 id 값 갖고 있기 -->
            			<input type="hidden" name="id" value="<sec:authentication property ='principal.username' />" readonly />
            			<!-- 로그인 시 id 값 갖고 있기 -->
	            		<div id="logoutBox">
							<button id="logout" class="btn btn-sm">로그아웃</button>
						</div>
					
>>>>>>> branch 'master' of https://github.com/dkfagh/Mohazi
					<div id="myPage">
                		<a href="/mypage/myMeeting" class="btn btn-sm">내정보</a>
            		</div>
            </sec:authorize>
            <sec:authorize access="isAnonymous()">
                  	<a href="/customLogin" class="btn btn-sm">로그인</a>
<<<<<<< HEAD
            </sec:authorize> -->
            <!-- 시큐리티 테스트 중 -------------------------------------->
=======
               	</div>
            </sec:authorize>
            <!-- 시큐리티 영역 끝 -------------------------------------->
>>>>>>> branch 'master' of https://github.com/dkfagh/Mohazi
            
            <!-- search form--------------------------------- ---->
            <form class="form-inline" action="search.jsp" >
                <div class="input-group">
                    <input id="search" type="text" class="form-control" size="20"  placeholder="검색어를 입력하세요">
                      <a href="#"><img src="resources/img/searchIcon.png" id="searchIcon" name="searchIcon"></a>
                    
                </div>
            </form>
            <!-- search form--->            
        </div>
    </div>
    <!-- 헤더--->

<!-- 스크립트 영역 -->
<script>
	$(document).ready(function(){
		
		// 로그인 버튼 클릭시
		$("#login").click(function(){
			$("#login").css("display","none");
			$("#logBox").css("display","block");
		});
		
		// 로그아웃 버튼 클릭시
		$("#logout").click(function(){
			$("#login").css("display","block");
			$("#logBox").css("display","none");
		});
		
	});
</script>