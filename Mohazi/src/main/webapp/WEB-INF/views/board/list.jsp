<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>



<style>
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
    margin-top: 50px; 
    margin-left: 30px;  
    text-align: center;  
    height: 240px;  
}
#menu-container ul, ol, li {
list-style:none; margin:0; padding:0; 
} 
.main-menu > li { position:relative;  float: left; display: inline; padding: 1px; 
                 width: 24%;  height: 50px; text-align: center;  box-sizing:border-box;}
.submenu {display: none;  position:absolute; top:50px; left:0; width: 100%; opacity: 0; transition: all, 2s;}
.main-menu > li:hover ul.submenu {display: block; opacity: 1; }
.submenu > li { display:inline-block; float: left;  width: 100%; padding: 1px; height: 50px; text-align: center; box-sizing:border-box;}
.menu button, .submenu input[type="button"]{ 
    width: 100%; 
    height: 100%;
    text-align: left;
    font-size: 14px;  
    font-family: 'Sunflower', sans-serif;
    background-color:  #7bd4ac;
    color: white;
}
.menu button:hover, .submenu input[type="button"]:hover{
     color: rgb(161, 159, 159);
}
#go{
    width: 100%; 
    height: 100%;
    background-color: rgb(22, 145, 118);
    text-align: center;
    color: white;
    font-size: 14px;  
    font-family: 'Sunflower', sans-serif;
}
#go:hover{ background-color: rgb(60, 189, 157);}
#where{ display:none; position:absolute; top:50px; left:-85%; width: 400%; transition: 5s;}
#category{ display:none; position:absolute; top:50px; left:-185%; width: 400%; transition: 5s;}
.main-menu > li:hover #where, .main-menu > li:hover #category{display: block;}
#where-box, #category-box, #when-box{  
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
    margin-top: 9%;
    margin-right: 12%;
   float: right;
   cursor: pointer;
        
}
.checkbox-inputLabel label{
    margin-top: 8%;
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

.col-sm-3{   
    height: 350px;
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
<<<<<<< HEAD
.list-title-course {
font-size: 16px;
margin-bottom: 2px;
color: #6a82ec;
float: left;
padding-right: 5px;
=======
.list-category-sub {
   font-size: 16px;
   margin-bottom: 2px;
   color: #6a82ec;
   float: left;
   padding-right: 5px;
>>>>>>> branch 'master' of https://github.com/dkfagh/Mohazi
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
<<<<<<< HEAD
=======

#top-btn {    
    position: fixed;
    right: 15%;
    bottom: 70px;
    display: none;
}
    
#btnWrite{
   background-color:#7bd4ac;
   color:white;
}

.pagination{
	display:block;
	margin:0 auto;
	width:70%;
	text-align:center;
   padding-top:25px;
   padding-bottom:35px;
   clear:both;
}

.pagination a{
   border-radius: 5px;
   transition: background-color .3s;
   text-decoration:none;
   color:black !important;
   padding: 6px 12px !important;
   
}

.pagination a.active {
    background-color: #7bd4ac ;
   color: white !important;
}

.pagination a:hover:not(.active) {
   background-color: #e9faf2;
}

.list-title-subject a{
   text-decoration:none;
   color:black;
}

>>>>>>> branch 'master' of https://github.com/dkfagh/Mohazi
</style>

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
                    <!-- 메뉴 초이스 부분 form태그--------------------------------------------------------------------->
                    <div id="menu-container" >
                        <form>
                            <ul class="main-menu">  
                                <li class="menu"  id="menu-when"><button class="btn   btn-large">언제</button>
                                    <ul class="submenu" id="when">                                    
                                        <li>
                                            <div id="when-box" > 
                                                <div class="class-date">
                                                    <input class="result" type="text" name="date" id="date" placeholder="날짜 선택">
                                                </div>                                           
                                            </div> 
                                        </li>  
                                    </ul> 
                                </li>                                                           
                                
                                <li class="menu"><button class="btn  btn-large">어디서</button>
                                    <ul class="submenu" id="where">                                    
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
                                    <ul class="submenu" id="category">
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
                                <li class="menu"><input type="submit" class="btn btn-large" id="go" value="Go! List"></li>      
                            </ul>
                        </form>
                    </div> 
                        <!-- 메뉴 초이스 부분 form태그--->            
                 
                </div>             
         </div>         
      
        </div> 
        
        <div class="list-header">
            <h2>
<<<<<<< HEAD
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
=======
               <c:set var="type" value="${param.type}" />
               <c:choose>
                  <c:when test="${type eq 'M'}">
                     모임
                  </c:when>
                  <c:when test="${type eq 'C'}">
                     클래스
                  </c:when>
               </c:choose>
         <button type="button" class="btn float-right" id="btnWrite">글쓰기</button>
         </h2>
>>>>>>> branch 'master' of https://github.com/dkfagh/Mohazi
        </div>

        <div class="row">
<<<<<<< HEAD
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
=======
           <c:forEach var="party" items="${list}">
               <div class="col-sm-3">
                   <a href='/board/get?p_no=<c:out value="${party.p_no}"/>'>
                      <div id="list-title-img">                  
                  </div>
               </a>
               <div class="list-title-text">
                  <div class="list-category-sub">
                     [<c:out value="${party.cat_main}"/>]
                  </div>
                  <div class="list-title-type">
                     #<c:out value="${party.cat_sub}" />,
                     #<c:out value="${party.tag}" />   
                     <span class="badge badge-default"><c:out value="${party.price}" />원</span>
                  </div>
                  <div class="list-title-subject">
                     <a href='/board/get?p_no=<c:out value="${party.p_no}"/>'><c:out value="${party.title}" /></a>
                  </div>
               </div>
               </div>
         </c:forEach>
      
         <!-- Paging --------------------------------- -->
         
         <form id="actionForm" action="/board/list" method="get">
            <input type="hidden" name="type" value="${param.type}">
                 <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                 <input type="hidden" name="amount" value="${pageMaker.cri.amount}"> 
         </form>
   
	      
>>>>>>> branch 'master' of https://github.com/dkfagh/Mohazi

<<<<<<< HEAD
<%@ include file="../includes/footer.jsp" %>
=======
		</div>
		
		  <div class="pagination">
	           <c:if test="${pageMaker.prev}">
	              <a href="${pageMaker.startPage-1}" class="paginate_button">&laquo;</a>
	           </c:if>
	           <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	                 <a href="${num}" class="paginate_button ${pageMaker.cri.pageNum == num ? 'active' : ''}">${num}</a>
	           </c:forEach>
	           <c:if test="${pageMaker.next}">
	              <a href="${pageMaker.endPage+1}" class="paginate_button" >&raquo;</a>
	           </c:if>
	         </div>	         
	     <!-- 페이징 끝  -->
	         
	         
	         
<%@ include file="../includes/footer.jsp" %>

<script>
   $(document).ready(
         function(){
            var result='<c:out value="${result}"/>';
            $("#btnWrite").on("click",function(){
               self.location="/board/register";
            });
            
            history.replaceState({},null,null);
         
            var actionForm=$("#actionForm");
            
            $(".pagination").on("click","a",function(e){
               
               e.preventDefault();
               
               console.log("click");
               
               actionForm.find("input[name='pageNum']").val($(this).attr("href"));
               actionForm.submit();
               
               log.error();
               
            });
         });

</script>
>>>>>>> branch 'master' of https://github.com/dkfagh/Mohazi
