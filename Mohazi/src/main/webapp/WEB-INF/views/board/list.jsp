<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>



<style>   
#sub-header {
background-color: #fcfcfd;
border-bottom: 1px solid #dde1e6;
}

#header {
position: relative;
width: 100%;
height: 120px;
margin: 0 auto;
border-bottom:#7bd4ac  solid 1px;
}
#logo{
    padding-top: 35px;
    float: left;
    padding-left:5%;
}
#login{
    padding-top: 45px;
    float: right;
    padding-right:5%;
}
#login button{
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
width:200px !important;
float: right;
}
.input-group button{
    background-color: #7bd4ac ;
    color: white;
}

.navbar{ 
    height: 50px;   
    margin-top: 2px;
    background-color: white;   
    border-bottom: solid 1px  #7bd4ac ;
    opacity: 0.9;
}
.navbar-nav{
    padding-left:19%;
}
.nav-item{
    margin-right: 15px;
}
.nav-link{
    color: black;
}
.nav-link:hover{
    color: rgb(161, 159, 159);
}


#contents {
position: relative;
margin: 0 auto;
}
.col-sm-12{           
box-sizing:content-box ;
padding:20px !important;
/* overflow: hidden; */
}
.col-sm-4{
box-sizing: border-box !important;
overflow: hidden;
}
.main-choice{
    box-sizing: border-box;
}
#main-choice-title{
    margin-top: 20px;
    text-align: center;
}
.main-choice-text01{
    display: inline;
}
#menu-container{
    /* width: 100%;  
    height: auto; */
    height: 100%;
    margin-top: 50px; 
    /* margin-left: 30px;   */
    text-align: center;  
    box-sizing: border-box;   
}
#menu-container ul, ol, li {
list-style:none; margin:0; padding:0; 
} 
.main-menu{
    text-align: center;
}
.main-menu > li { position:relative;  float: left; display: inline; padding: 1px; 
                 width: 19%;  height: 50px; text-align: center;  box-sizing:border-box;}
.submenu { display:none; position:absolute; top:50px; left:0; width: 100%;}
.main-menu > li:hover ul.submenu { display:block; }
.submenu > li { display:inline-block; float: left;  width: 100%; padding: 1px; height: 50px; text-align: center; }
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

.col-sm-3{   
    height: 350px;
    z-index: -10;
    padding-bottom: 10px;
}

#list-title-img{
position: relative;
border-radius: 10px 10px 0 0;
overflow: hidden;
height: 50%;
background-color: #ebebeb;


}
#list-title-img img{
    width: 100%;
    height: auto;
}
	
.list-title-text {
position: relative;
border-radius: 0 0 10px 10px;
border: 1px solid #d5dadf;
border-top: 0 none;
padding: 25px 30px 40px;
height: 50%;
}
.list-title-course {
font-size: 16px;
margin-bottom: 2px;
color: #6a82ec;
float: left;
padding-right: 5px;
}
.list-title-type {
font-size: 16px;
margin-bottom: 2px;
color: #96969d;
}
.list-header h2{
    margin: 5px;
    font-family: 'Sunflower', sans-serif;
    font-size: 25px

}
.list-header{
    border-top: solid 1px#7bd4ac ;
}

.text-center{
    border-top:  1px solid #7bd4ac ;
    border-bottom: 1px solid #7bd4ac ;
}

#top-btn {    
    position: fixed;
    right: 15%;
    bottom: 70px;
    display: none;
    }

</style>

<%-- <h1>MEETING LIST !</h1>
<ul>
	<c:forEach var="party" items="${list}">
		<li><c:out value="${party.title}" /></li>
	</c:forEach>
</ul> --%>

	<div class="container" id="contents">
		<div class="row" >
            <div class="col-sm-12">
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
                            <li class="menu" id="menu-type"><button class="btn  btn-large">타입</button>
                                <ul class="submenu">
                                    <li><button class="btn  btn-large">클래스</button></li>
                                    <li><button class="btn btn-large">소모임</button></li>                            
                                </ul>
                            </li>
                            <li class="menu"  id="menu-when"><button class="btn   btn-large">언제</button>
                                <ul class="submenu" id="when">                                    
                                    <li>
                                        <div id="when-box" > 
                                            <div class="class-date" >
                                                <input class="result" type="text" id="date" placeholder="날짜 선택">
                                            </div>                                           
                                        </div> 
                                    </li>  
                                </ul> 
                            </li>                                             
                            
                            <li class="menu"  id="menu-where"><button class="btn   btn-large">어디서</button>
                                <ul class="submenu" id="where">                                    
                                    <li>
                                        <div id="where-box" >   
                                            <button class="btn   btn-large" style="margin-top: 50px;">서울</button>
                                            <button class="btn   btn-large" style="margin-top: 50px;">경기</button>
                                            <button class="btn   btn-large" style="margin-top: 50px;">인천</button>
                                            <button class="btn   btn-large" style="margin-top: 50px;">강원</button>
                                            <button class="btn   btn-large">충북</button>
                                            <button class="btn   btn-large">충남</button>
                                            <button class="btn   btn-large">대전</button>
                                            <button class="btn   btn-large">경북</button>
                                            <button class="btn   btn-large">경남</button>
                                            <button class="btn   btn-large">대구</button>
                                            <button class="btn   btn-large">울산</button>
                                            <button class="btn   btn-large">부산</button>
                                            <button class="btn   btn-large">광주</button>
                                            <button class="btn   btn-large">전북</button>
                                            <button class="btn   btn-large">전남</button>
                                            <button class="btn   btn-large">제주</button>                                           
                                        </div> 
                                    </li>                                   
                                </ul>   
                            </li>
                            <li class="menu"  id="menu-category"><button class="btn btn-large">카테고리</button>
                                <ul class="submenu">
                                    <li><button class="btn   btn-large">카테고리1</button></li>
                                    <li><button class="btn   btn-large">카테고리2</button></li> 
                                    <li><button class="btn   btn-large">카테고리3</button></li>
                                    <li><button class="btn   btn-large">카테고리4</button></li> 
                                    <li><button class="btn   btn-large">카테고리5</button></li>
                                    <li><button class="btn   btn-large">카테고리6</button></li> 
                                    <li><button class="btn   btn-large">카테고리7</button></li>
                                    <li><button class="btn   btn-large">카테고리8</button></li>                            
                                </ul>
                            </li>
                            <li class="menu"  id="menu-go"><button class="btn btn-large" id="go">Go!</button></li>      
                        </ul>
                    </div>                 
                </div> 				
			</div>			
		
        </div> 
        
        <div class="list-header">
            <h2>
            	<c:set var="type" value="${param.type}" />
            	<c:choose>
            		<c:when test="${type eq 'M'}">
            			모임
            		</c:when>
            		<c:when test="${type eq 'C'}">
            			클래스
            		</c:when>
            	</c:choose>
			</h2>
        </div>

        <div class="row">
	        <c:forEach var="party" items="${list}">
	            <div class="col-sm-3">
	                <div id="list-title-img">					
						<li><img src="images/itzy.jpg" /></li>					
					</div>
					<div class="list-title-text">
	<!-- 					<div class="list-title-course">
							[원데이]
						</div> -->
						<div class="list-title-type">
							 
							<!-- <span class="badge badge-default">3,000원 추가할인</span>	 -->					
						</div>
						<div class="list-title-subject">
							<c:out value="${party.title}" />
						</div>
					</div>
	            </div>
			</c:forEach>
			
        </div> 

<%@ include file="../includes/footer.jsp" %>