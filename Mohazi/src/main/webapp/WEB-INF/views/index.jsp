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
                 width: 19%;  height: 50px; text-align: center;  box-sizing:border-box;}
.submenu { display:none; position:absolute; top:50px; left:0; width: 100%;}
.main-menu > li:hover ul.submenu { display:block; }
.submenu > li { display:inline-block; float: left;  width: 100%; padding: 1px; height: 50px; text-align: center; box-sizing:border-box;}
.menu button, .submenu button{ 
    width: 100%; 
    height: 100%;
    text-align: left;
    font-size: 14px;  
    font-family: 'Sunflower', sans-serif;
    background-color:  #7bd4ac;
    color: white;
}
.menu button:hover, .submenu button:hover{
     color: rgb(161, 159, 159);
}
#go{
    background-color: rgb(22, 145, 118);
    text-align: center;
    color: white;
    font-size: 14px;  
    font-family: 'Sunflower', sans-serif;
}
#go:hover{ background-color: rgb(60, 189, 157);}
#where{ display:none; position:absolute; top:50px; left:-150%; width: 400%;}
.main-menu > li:hover #where{display: block;}
#where-box{  
    display: inline;      
}
#where-box button{
    width:23%;
    margin:1px;
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
                    <div id="menu-container" >
                        <ul class="main-menu">
                            <li class="menu"><button class="btn  btn-large">타입</button>
                                <ul class="submenu">
                                    <li><button class="btn  btn-large">클래스</button></li>
                                    <li><button class="btn  btn-large">소모임</button></li>                            
                                </ul>
                            </li>
                            <li class="menu"><button class="btn  btn-large">언제</button>
                                <ul class="submenu" id="when">                                    
                                    <li>
                                        <div id="when-box"> 
                                            <div class="class-date">
                                                <input class="result" type="text" id="date" placeholder="날짜 선택">
                                            </div>                                           
                                        </div> 
                                    </li>  
                                </ul> 
                            </li>                                             
                            
                            <li class="menu"><button class="btn  btn-large">어디서</button>
                                <ul class="submenu" id="where">                                    
                                    <li>
                                        <div id="where-box" >   
                                            <button class="btn  btn-large" style="margin-top: 50px;">서울</button>
                                            <button class="btn  btn-large" style="margin-top: 50px;">경기</button>
                                            <button class="btn  btn-large" style="margin-top: 50px;">인천</button>
                                            <button class="btn  btn-large" style="margin-top: 50px;">강원</button>
                                            <button class="btn  btn-large">충북</button>
                                            <button class="btn  btn-large">충남</button>
                                            <button class="btn  btn-large">대전</button>
                                            <button class="btn  btn-large">경북</button>
                                            <button class="btn  btn-large">경남</button>
                                            <button class="btn  btn-large">대구</button>
                                            <button class="btn  btn-large">울산</button>
                                            <button class="btn  btn-large">부산</button>
                                            <button class="btn  btn-large">광주</button>
                                            <button class="btn  btn-large">전북</button>
                                            <button class="btn  btn-large">전남</button>
                                            <button class="btn  btn-large">제주</button>                                           
                                        </div> 
                                    </li>                                   
                                </ul>   
                            </li>
                            <li class="menu"><button class="btn  btn-large">카테고리</button>
                                <ul class="submenu">
                                    <li><button class="btn  btn-large">카테고리1</button></li>
                                    <li><button class="btn  btn-large">카테고리2</button></li> 
                                    <li><button class="btn  btn-large">카테고리3</button></li>
                                    <li><button class="btn  btn-large">카테고리4</button></li> 
                                    <li><button class="btn  btn-large">카테고리5</button></li>
                                    <li><button class="btn  btn-large">카테고리6</button></li> 
                                    <li><button class="btn  btn-large">카테고리7</button></li>
                                    <li><button class="btn  btn-large">카테고리8</button></li>                            
                                </ul>
                            </li>
                            <li class="menu"><button class="btn btn-large" id="go">Go!</button></li>      
                        </ul>
                    </div>                 
                </div> 				
			</div>			
			<div class="col-sm-4" >
				<div class="main-image">
					<img src="images/camera.jpg">
				</div>
            </div>
        </div>       
        <div class="row">

		</div> 
    </div> 	

<%@ include file="./includes/footer.jsp" %>