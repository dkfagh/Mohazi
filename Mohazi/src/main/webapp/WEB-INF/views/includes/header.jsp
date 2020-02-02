<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>list</title>
	<!-- bxslider -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"> 
	<script src="https://code.jquery.com/jquery-1.11.3.js"></script> 
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
</head>

<body>
     <!-- 헤더--------------------------------- ---->
	<div id="sub-header">
		<div id="header">
            <div id="logo">
                <h1 class="logo">
                    <a href="/">로고</a>
                </h1>
            </div>
            <div id="login">
                <button type="button" class="btn  btn-sm">로그인</button>
             </div>
            <!-- search form--------------------------------- ---->
            <form class="form-inline" action="search.jsp" >
                <div class="input-group">
                    <input id="search" type="text" class="form-control" size="20"  placeholder="검색어를 입력하세요">
                    <div class="input-group-btn">
                    <button class="btn  btn-sm" style="margin-top: 2px; margin-left: 2px;">검색</button>
                    </div>
                </div>
            </form>
            <!-- search form--->
             
		</div>
    </div>
     <!-- 헤더--->

