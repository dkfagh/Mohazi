<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./includes/header.jsp" %>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
#contents {
	position: relative;
	margin: 0 auto;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 16px;
}
.row{
	/* padding-top: 150px; */
	margin-bottom: 50px;
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

    margin-left: 30px;  
    text-align: center;    
}
#menu-container ul, ol, li {
	list-style:none; margin:0; padding:0; 
} 
.main-menu > li {
	position:relative;  float: left; display: inline; padding: 1px; 
	width: 24%;  height: 50px; text-align: center;  box-sizing:border-box;
}
.sub-menu {
	display:none; position:absolute; top:50px; left:0; width: 100%;
}
.main-menu > li:hover ul.sub-menu { display:block; }
.sub-menu > li {
	display:block; padding: 1px; float: left;  
	width: 100%; height: 50px; text-align: center; box-sizing:border-box;
}
.menu button, .sub-menu input[type="button"]{ 
    width: 100%; 
    height: 100%;
    text-align: left;
    background-color:  #7bd4ac;
    color: white;
}
.menu button .fas{
	float: right;
	padding-top: 4px;
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
}
#goList:hover{ background-color: rgb(60, 189, 157);}
#where{ display:none; position:absolute; top:50px; left:-85%; width: 400%;}
#category{ display:none; position:absolute; top:50px; left:-185%; width: 400%;}
.main-menu > li:hover #where, .main-menu > li:hover #category{display: block;}
#where-box, #category-box{  
    width: 100%;  
    box-sizing: border-box; 
}
.checkbox-inputLabel{
    float: left;
    width: 23%; 
    height: 50px;
    text-align: center;   
    background-color:  #7bd4ac;
    color: white;   
    margin-bottom: 1px;
    margin-right: 1px;
    border-radius: 5px;
    padding: 12px 0;		/* for vertical align center */
}
.checkbox-inputLabel:hover{
    color: rgb(161, 159, 159);
    cursor: pointer;
}
.checkbox-inputLabel input, .checkbox-inputLabel label {
	cursor: pointer;
}
</style>
	<div class="container-fluid" id="contents">
		<div class="row">
            <div class="col-sm-6" style="padding-top: 100px; padding-bottom: 200px;">
                <div class="main-choice">
                    <div id="main-choice-title">
                        <img src="/resources/img/mohazi_title.png" alt="mohazi logo" style="position: relative; top: 0; width: 500px;"/>
                    </div>
 <!-- 메뉴 초이스 부분 form태그--------------------------------------------------------------------->
                    <div id="menu-container" >
                    <form action="/board/list" method="get">
                        <ul class="main-menu">
                        
                            <li class="menu">
                            	<button type="button" class="btn  btn-large">
                            		모임/클래스
                            		<i class="fas fa-chevron-down"></i>
                            	</button>
                                <ul class="sub-menu">
                                	<li style="margin-bottom: 1px;">
                                		<label for="meeting" class="checkbox-inputLabel" style="width: 100%;">
                                			모임
                                			<input id="meeting" type="radio" name="type" value="M" checked>
                                		</label>
	                                </li>
	                                <li>
	                                	<label for="class" class="checkbox-inputLabel" style="width: 100%;">
	                                		클래스
                                			<input id="class" type="radio" name="type" value="C">
                                		</label>
	                                </li>    
                                </ul>
                            </li>                                               
                            
                            <li class="menu">
                            	<button type="button" class="btn  btn-large">
                            		어디서
                            		<i class="fas fa-chevron-down"></i>
                            	</button>
                                <ul class="sub-menu" id="where">                                    
                                    <li>
                                        <div id="where-box" >
											<label for="seoul" class="checkbox-inputLabel">
                                              	  서울
                                                <input id="seoul" type="checkbox" name="region" value="서울">
                                            </label>
                                            <label for="gyeonggi" class="checkbox-inputLabel">
												경기
                                                <input id="gyeonggi" type="checkbox" name="region" value="경기">
                                            </label>
                                            <label for="incheon" class="checkbox-inputLabel">                                               
                                               	인천
                                                <input id="incheon" type="checkbox" name="region" value="인천">
                                            </label>
                                            <label for="gangwon" class="checkbox-inputLabel">
                                               	강원
                                                <input id="gangwon" type="checkbox" name="region" value="강원">
                                            </label>
                                            <label for="chungcheong" class="checkbox-inputLabel">                                               
                                               	충청
                                                <input id="chungcheong" type="checkbox" name="region" value="충">
                                            </label>
                                            <label for="daejeon" class="checkbox-inputLabel">
                                               	대전
                                                <input id="daejeon" type="checkbox" name="region" value="대전">
                                            </label>
                                            <label for="gyeongsang" class="checkbox-inputLabel">
                                               	경상
                                                <input id="gyeongsang" type="checkbox" name="region" value="경">
                                            </label>
                                            <label for="daegu" class="checkbox-inputLabel">
                                               	대구
                                                <input id="daegu" type="checkbox" name="region" value="대구">
                                            </label>
                                            <label for="ulsan" class="checkbox-inputLabel">
                                               	울산
                                                <input id="ulsan" type="checkbox" name="region" value="울산">
                                            </label>
                                            <label for="busan" class="checkbox-inputLabel">                                               
                                               	부산
                                                <input id="busan" type="checkbox" name="region" value="부산">
                                            </label>
                                            <label for="gwangju" class="checkbox-inputLabel">                                               
                                               	광주
                                                <input id="gwangju" type="checkbox" name="region" value="광주">
                                            </label>
                                            <label for="jeolla" class="checkbox-inputLabel">                                               
                                               	전라
                                                <input id="jeolla" type="checkbox" name="region" value="전">
                                            </label>
                                            <label for="jeju" class="checkbox-inputLabel">                                               
                                               	제주
                                                <input id="jeju" type="checkbox" name="region" value="제주"> 
                                            </label>                             
                                        </div> 
                                    </li>                                   
                                </ul>   
                            </li>
                            
                            <li class="menu">
                            	<button type="button" class="btn  btn-large">
                            		카테고리
                            		<i class="fas fa-chevron-down"></i>
                            	</button>
                                <ul class="sub-menu" id="category">
                                    <li>
                                        <div id="category-box" >   
                                            <label for="culture" class="checkbox-inputLabel" >
                                               	문화
                                                <input id="culture" type="checkbox" name="category" value="문화">                                                
                                            </label>
                                            <label for="IT" class="checkbox-inputLabel">                                                 
                                                IT
                                                <input id="IT" type="checkbox" name="category" value="IT">
                                            </label>
                                            <label for="sports" class="checkbox-inputLabel">                                               
                                               	스포츠
                                                <input id="sports" type="checkbox" name="category" value="스포츠">
                                            </label>
                                            <label for="creation" class="checkbox-inputLabel">
                                               	 창작
                                                <input id="creation" type="checkbox" name="category" value="창작">
                                            </label>
                                            <label for="experience" class="checkbox-inputLabel">                                               
												 체험
                                                <input id="experience" type="checkbox" name="category" value="체험">
                                            </label>                                                                
                                        </div> 
                                    </li>                              
                                </ul>
                            </li>

                            <li class="menu"><input type="submit" class="btn btn-large" id="goList" value="찾기"></li>      
                        
                        </ul>
                    </form>
                    </div> 
        <!-- 메뉴 초이스 부분 form태그--->                
                </div> 				
			</div>			
			<div class="col-sm-6" style="padding-top: 80px;">
				<div class="main-image">
					<img src="/resources/img/indexImage.png" style="max-width: 100%; height: auto;">
				</div>
            </div>
        </div>     
       
<!--     </div> -->


<%@ include file="./includes/footer.jsp" %>

<script>

	$(document).ready(function(){

		// 타입 선택 이벤트
		$("input:radio[name=type]").on("click", function(e){
			console.log("radiobutton is clicked!");
			
			var type = $(this).prop("labels");
			$(this).closest(".menu").children("button").text($(type).text());
			$(this).closest(".menu").children("button").append('<i class="fas fa-chevron-down"></i>');
		});
		
		// 지역 선택 이벤트
		$("input:checkbox[name=region]").on("click", function(e){
			console.log("region checkbox is clicked!");
			console.log($(this).val());
			
			// console.log("=============선택된지역들")
			var region = "";
			$("input:checkbox[name=region]:checked").each(function(){
				//var test = $(this).val();
				region += $(this).val() + " ";
				// console.log(region);
			});
			// console.log("===============");
			
			// console.log(region.length);
			if(region.length > 9){
				region = region.substring(0, 9) + "...";
			} else if(region.length < 1){
				region = "어디서";
			}
			$(this).closest(".menu").children("button").text(region).append('<i class="fas fa-chevron-down"></i>');
			
		});
		
		// 카테고리 선택 이벤트
		$("input:checkbox[name=category]").on("click", function(e){
			// console.log("category checkbox is clicked!");
			// console.log($(this).val());
			
			// console.log("=============선택된카테고리들");
			var category = "";
			$("input:checkbox[name=category]:checked").each(function(){
				category += $(this).val() + " ";
				// console.log(category);
			});
			// console.log("=============");
			
			// console.log(category.length);
			if(category.length > 10){
				category = category.substring(0, 10) + "...";
			} else if(category.lenght < 1){
				category = "카테고리";
			}
			$(this).closest(".menu").children("button").text(category).append('<i class="fas fa-chevron-down"></i>');
		});
	
	});
</script>