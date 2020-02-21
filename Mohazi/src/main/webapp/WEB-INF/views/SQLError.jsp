<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
	<!-- jQuery UI -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<!-- 폰트어썸 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<!-- 구글폰트  -->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
    <title>SQL 접근에러</title>
 <style>
	*{
		font-family: 'Nanum Gothic Coding', monospace;
	}
    #contents {
    
      width: 100%;
      margin: auto;
    }

    #loginBtn {
      width: 280px;
      height: 50px;
      background-color:#e9faf2;
      color:#66a385;
      border: 2px solid #cccccc;
      font-size: 16px;
      text-align:center;
      margin:auto;
      line-height:40px;
      display:block;
    
	  border-radius:5px;
	  font-weight:bold;
	  padding:7px;
    }
    #loginBtn:hover{
    	text-decoration: none;
    	color:#000;
    }




    
  
  </style>
</head>

<body>
 <div class="container" id="contents">
 	<!-- 화면영역 시작 -->
    <div align="center"> <img src="/resources/img/logoImg.png" width="200"> </div>
    <h2 align="center">SQL 접근에러!!</h2>
	<h3 align="center">뒤로 돌아가 다시 수행해주세요!</h3>
	<a align="center" id="loginBtn" type="button">로그인하기</a>
</div><!-- 화면영역 끝 -->

  
<%@ include file="./includes/footer.jsp" %>