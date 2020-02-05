<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./includes/header.jsp" %>

<style>
#contents {
position: relative;
margin: 0 auto;
}
.col-sm-8{  

box-sizing: border-box !important;
margin-top: 100px;
padding:20px !important;
overflow: hidden;
}
.col-sm-4{
padding:20px !important;
margin-top: 100px;
box-sizing: border-box !important;
overflow: hidden;
}
#main-choice-title{
    margin-top: 20px;
    text-align: center;
}
.main-choice-text01{
    display: inline;
}
.main-image{
width: 100%;
height: 600px;
overflow: hidden;
text-align: center;
margin: auto;
border-radius: 5px;
}
.main-image img{
width: auto;
height: 100%;
}
#menu-container{
    /* width: 100%;  
    height: auto; */
    margin-top: 50px; 
    margin-left: 30px;  
    text-align: center;    
}
#menu-container ul, ol, li {
list-style:none; margin:0; padding:0; 
} 
.main-menu > li { position:relative;  float: left; display: inline; padding: 1px; 
                 width: 24%;  height: 50px; text-align: center;  box-sizing:border-box;}
.sub-menu { display:none; position:absolute; top:50px; left:0; width: 100%;}
.main-menu > li:hover ul.sub-menu { display:block; }
.sub-menu > li { display:inline-block; float: left;  width: 100%; padding: 1px; height: 50px; text-align: center; box-sizing:border-box;}
.menu button, .sub-menu input[type="button"]{ 
    width: 100%; 
    height: 100%;
    text-align: left;
    font-size: 14px;  
    font-family: 'Sunflower', sans-serif;
    background-color:  #7bd4ac;
    color: white;
}
.menu button:hover, .sub-menu input[type="button"]:hover{
     color: rgb(161, 159, 159);
}
#goList{
    width: 100%; 
    height: 100%;
    background-color: rgb(22, 145, 118);
    text-align: center;
    color: white;
    font-size: 14px;  
    font-family: 'Sunflower', sans-serif;
}
#goList:hover{ background-color: rgb(60, 189, 157);}
#where{ display:none; position:absolute; top:50px; left:-85%; width: 400%;}
#category{ display:none; position:absolute; top:50px; left:-185%; width: 400%;}
.main-menu > li:hover #where, .main-menu > li:hover #category{display: block;}
#where-box, #category-box{  
    width: 100%;  
    box-sizing: border-box; 
}
#where-box .checkbox-inputLabel, #category-box .checkbox-inputLabel{
    float: left;
    width: 23%; 
    height: 50px;
    text-align: center;   
    font-size: 14px;  
    font-family: 'Sunflower', sans-serif;
    background-color:  #7bd4ac;
    color: white;   
    margin-bottom: 1px;
    margin-right: 1px;
    border-radius: 5px;      
}
#where-box .checkbox-inputLabel:hover, #category-box .checkbox-inputLabel:hover{
    color: rgb(161, 159, 159);
    cursor: pointer;
}
.checkbox-inputLabel input{
    margin-top: 12%;
    margin-right: 12%;
   float: right;
   cursor: pointer;
        
}
.checkbox-inputLabel label{
    margin-top: 9%;
    margin-left: 12%;
   float: left;
   cursor: pointer;
}
.class-date input{
    width: 100%; 
    height: 50px;
    text-align: center;
    border-radius: 3px;
    cursor: pointer;   
}

</style>
<!--
<form action="/board/list" method="get">
	<select name="type">
		<option value="M" selected>소모임</option>
		<option value="C">클래스</option>
	</select>
	<br />
	
	<h3>관심사</h3>
	<input type="checkbox" name="category" value="운동"> 운동 <br />
	<input type="checkbox" name="category" value="실무"> 실무 <br />
	
	<h3>지역</h3>
	<input type="checkbox" name="region" value="서울"> 서울 <br />
	<input type="checkbox" name="region" value="경기"> 경기 <br />
	
	<input type="submit" value="GO LIST" />
</form>
-->

 <!-- 윗 부분이름 맞춰서 아랫부분 수정할것 -->
 
	<div class="container" id="contents">
		<div class="row">
            <div class="col-sm-8">
                <div class="main-choice">
                    <div id="main-choice-title">
                        <h1 class="main-choice-text01">모</h1>
                        <span class="maint-choice-text02">두의</span>
                        <h1 class="main-choice-text01">하</h1>
                        <span class="maint-choice-text02">비</span>                    
                        <span class="maint-choice-text02">선택</span>
                        <h1 class="main-choice-text01">지</h1>
                    </div>
 <!-- 메뉴 초이스 부분 form태그--------------------------------------------------------------------->
                    <div id="menu-container" >
                    <form>
                        <ul class="main-menu">
                            <li class="menu"><button class="btn  btn-large">타입</button>
                                <ul class="sub-menu">
                                    <li><input type=button class="btn  btn-large" value="클래스"></li>
                                    <li><input type=button class="btn  btn-large" value="소모임"></li>                            
                                </ul>
                            </li>                                               
                            
                            <li class="menu"><button class="btn  btn-large">어디서</button>
                                <ul class="sub-menu" id="where">                                    
                                    <li>
                                        <div id="where-box" >   
                                            <div class="checkbox-inputLabel" >
                                                <label for="check-test-box"> <span></span>서울</label>
                                                <input type="checkbox" name="region" value="서울">                                                
                                            </div>
                                            <div class="checkbox-inputLabel">                                                 
                                                <label for="check-test-box"> <span></span>경기</label>
                                                <input type="checkbox" name="region" value="경기">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>인천</label>
                                                <input type="checkbox" name="region" value="인천">
                                            </div>
                                            <div class="checkbox-inputLabel">
                                                <label for="check-test-box"> <span></span>강원</label>
                                                <input type="checkbox" name="region" value="강원">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>충북</label>
                                                <input type="checkbox" name="region" value="충북">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>충남</label>
                                                <input type="checkbox" name="region" value="충남">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>대전</label>
                                                <input type="checkbox" name="region" value="대전">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>경북</label>
                                                <input type="checkbox" name="region" value="경북">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>경남</label>
                                                <input type="checkbox" name="region" value="경남">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>대구</label>
                                                <input type="checkbox" name="region" value="경남">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>울산</label>
                                                <input type="checkbox" name="region" value="울산">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>부산</label>
                                                <input type="checkbox" name="region" value="부산">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>광주</label>
                                                <input type="checkbox" name="region" value="광주">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>전북</label>
                                                <input type="checkbox" name="region" value="전북">
                                            </div>
                                            <div class="checkbox-inputLabel">                                                
                                                <label for="check-test-box"> <span></span>전남</label>
                                                <input type="checkbox" name="region" value="전남">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>제주</label>
                                                <input type="checkbox" name="region" value="제주"> 
                                            </div>                             
                                        </div> 
                                    </li>                                   
                                </ul>   
                            </li>
                            <li class="menu"><button class="btn  btn-large">카테고리</button>
                                <ul class="sub-menu" id="category">
                                    <li>
                                        <div id="category-box" >   
                                            <div class="checkbox-inputLabel" >
                                                <label for="check-test-box"> <span></span>카테고리1</label>
                                                <input type="checkbox" name="category" value="카테고리1">                                                
                                            </div>
                                            <div class="checkbox-inputLabel">                                                 
                                                <label for="check-test-box"> <span></span>카테고리2</label>
                                                <input type="checkbox" name="category" value="카테고리2">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>카테고리3</label>
                                                <input type="checkbox" name="category" value="카테고리3">
                                            </div>
                                            <div class="checkbox-inputLabel">
                                                <label for="check-test-box"> <span></span>카테고리4</label>
                                                <input type="checkbox" name="category" value="카테고리4">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>카테고리5</label>
                                                <input type="checkbox" name="category" value="카테고리5">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>카테고리6</label>
                                                <input type="checkbox" name="category" value="카테고리6">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>카테고리7</label>
                                                <input type="checkbox" name="category" value="카테고리7">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>카테고리8</label>
                                                <input type="checkbox" name="category" value="카테고리8">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>카테고리9</label>
                                                <input type="checkbox" name="category" value="카테고리9">
                                            </div>
                                            <div class="checkbox-inputLabel">                                               
                                                <label for="check-test-box"> <span></span>카테고리10</label>
                                                <input type="checkbox" name="category" value="카테고리10">
                                            </div>                                                                    
                                        </div> 
                                    </li>                              
                                </ul>
                            </li>
                            <li class="menu"><input type="submit" class="btn btn-large" id="goList" value="Go! List"></li>      
                        </ul>
                    </form>
                    </div> 
        <!-- 메뉴 초이스 부분 form태그--->                
                </div> 				
			</div>			
			<div class="col-sm-4" >
				<div class="main-image">
					<img src="images/camera.jpg">
				</div>
            </div>
        </div>     
       
    </div>


<%@ include file="./includes/footer.jsp" %>


<!-- 
<script>

	$(document).ready(function(){
		console.log("HELLO");
		
		$(".submenu button").on("click", function(e){
			e.preventDefault();
			console.log("!! SUB MENU BUTTON CLICK !!!");
			
			var clickedValue = $(this).text();
			console.log("클릭 : " + clickedValue);
			
			var inputMenu = $(this).closest(".menu").children("input");
	
			console.log("부모 버튼 : " + inputMenu.val());
			
			inputMenu.text(clickedValue);
			
		});
	
	});

</script>
 -->