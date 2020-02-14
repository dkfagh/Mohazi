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

#header {
	background-color: #fcfcfd;
}


#sub-header {
	width: 100%;
	height: 130px;
	margin: 0 auto;
	border-bottom:#EBEBEB solid 1px;
}

#logo{
    margin-top: 28px;
    float: left;
    padding-left:5%;
}

#btnLogin{
	margin-top:43px;
    float: right;
    margin-right:7%;
	background-color:#e9faf2;
	border-radius:5px;
	font-weight:bold;
	padding:7px;
	width:75px;
	color:#66a385;
	font-size:14px;
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

.input-group{
	width:450px;
	padding-top:40px;
	margin:auto;
}

#keyword{
    float: right;
	border:0px;
	border-radius:15px;
	background-color:#e9faf2;
	font-size:14px;
	text-color:#3a5d4c;
	padding-top:15px;
	padding-bottom:15px;
	height:40px;
	position:relative;
}

#searchIcon{
   padding-left:3px;
   margin-left:-1px;
   width:32px;
}

#btnSearch{
	border:2px solid;
	border-color:white;
	background:white;
	margin-left:-2px;
	border-radius:1px;
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
                <a href="/index"><img src="/resources/img/logoImg.png" id="logoImg" name="logoImg" width="200px"></a>
            </div>
 
            <!-- 시큐리티 영역 -->
            <sec:authorize access="isAuthenticated()">
            	<div id="logBox">
            		<form id="logoutForm" action="/customLogout" method="post">
            			<input id="logInId" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            			
            		</form>
            			<!-- 로그인 시 id 값 갖고 있기 -->
            			<input type="hidden" name="id" value="<sec:authentication var='principal' property ='principal' />" readonly />
            			<!-- 로그인 시 id 값 갖고 있기 -->
	            		<div id="logoutBox">
							<button id="logout" class="btn">로그아웃</button>
						</div>
					
					<div id="myPage">
                		<a href="/mypage/myMeeting" class="btn">내정보</a>
            		</div>
           		</div>
            </sec:authorize>
            <sec:authorize access="isAnonymous()">
            	<a href="/customLogin">
            	<button id="btnLogin" class="btn">
                  	로그인
               	</button>
               	</a>
            </sec:authorize>
            <!-- 시큐리티 영역 끝 -------------------------------------->
            
            <!-- search form--------------------------------- ---->
            <form  id="searchForm" action="/board/searchResult" method="get">
                <div class="input-group">
                    <input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword}" />' id="keyword" class="form-control" size="20"  placeholder="검색어를 입력하세요">
                    <input type="hidden" name="pageNum" value='<c:out value="1" />'>
                    <input type="hidden" name="amount" value='<c:out value="16" />'>
                    <button id="btnSearch">
                      <img src="/resources/img/searchIcon.png" id="searchIcon" name="searchIcon">
                	</button>	
                </div>
            </form>
            <!-- search form--->            
        </div>
    </div>
    <!-- 헤더--->

<!-- 스크립트 영역 -->
<script>
	$(document).ready(function(){

		// 로그아웃 버튼 클릭시
		$("#logout").click(function(){
			if(confirm("로그아웃하시겠습니까?")){
				$("#logoutForm").submit();
			}
		});
		
		var searchForm=$("#searchForm");
		
		$("#searchForm button").on("click",function(e){
			
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하세요.");
				return false;
			}
			
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			searchForm.submit();
		});
		
	});
</script>
<!-- 스크립트 영역 -->