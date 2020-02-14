<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>

<style>
#contents {
	position: relative;
	margin: 0 auto;
	font-size: 16px;
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
    text-align: center;
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
.checkbox-inputLabel{
    float: left;
    width: 23%;
    height: 50px;
    text-align: center;
/*     font-size: 14px;  
    font-family: 'Sunflower', sans-serif; */
    background-color:  #7bd4ac;
    color: white;
    margin-bottom: 1px;
    margin-right: 1px;
    border-radius: 5px;
    padding: 12px 0;
}
#where-box .checkbox-inputLabel:hover, #category-box .checkbox-inputLabel:hover{
    color: rgb(161, 159, 159);
    cursor: pointer;
}
.checkbox-inputLabel input, .checkbox-inputLabel label {
	cursor: pointer;
}
.menu button .fas{
	float: right;
	padding-top: 4px;
}
/* .checkbox-inputLabel input{
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
} */
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
.list-category-sub {
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
    font-size: 25px;
    padding-top:15px;
    padding-bottom:15px;

}
.list-header{
    border-top: solid 1px#7bd4ac ;
}

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
</style>

<script>
// function for thumbnail
function showThumbnail(p_no){
	var p_noValue = p_no;
	console.log("p_no : " + p_no);
	
	$.getJSON("/board/getAttachList", {p_no:p_noValue},function(arr){
		var str = "";
		
		$(arr).each(function(i,attach){
			var fileCallPath = encodeURIComponent( attach.uploadPath +"/"+ attach.uuid +"_"+ attach.fileName);
			str +="/display?fileName="+fileCallPath; 			
		});

		if(str == "") {return;}
		$("#"+p_noValue).attr("src", str);
		});	//end getjson
	};		//end function
</script>

<div class="container" id="contents">
      <div class="row" >
            <div class="col-sm-12">
                <div class="main-choice">
                    <!-- 메뉴 초이스 부분 form태그--------------------------------------------------------------------->
                    <div id="menu-container" >
                    <form action="/board/list" method="get">
                    	<input type="hidden" name="type" value="${param.type}" />
                            <ul class="main-menu">  
                                <li class="menu"  id="menu-when">
                                	<button type="button" class="btn btn-large">언제</button>
                                    <ul class="submenu" id="when">                                    
                                        <li>
                                            <div id="when-box" > 
                                                <div class="class-date">
                                                    <input type="text" name="startDate" id="startDate" class="datepicker" placeholder="시작일 선택">
                                                    <input type="text" name="endDate" id="endDate" class="datepicker" placeholder="종료일 선택">
                                                </div>                                           
                                            </div> 
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
	                                        <div id="where-box">
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
	                                                <input id="chungcheong" type="checkbox" name="region" value="충청">
	                                            </label>
	                                            <label for="daejeon" class="checkbox-inputLabel">
	                                               	대전
	                                                <input id="daejeon" type="checkbox" name="region" value="대전">
	                                            </label>
	                                            <label for="gyeongsang" class="checkbox-inputLabel">
	                                               	경상
	                                                <input id="gyeongsang" type="checkbox" name="region" value="경상">
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
	                                                <input id="jeolla" type="checkbox" name="region" value="전라">
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
        </div>

        <div class="row">
           <c:forEach var="party" items="${list}">
               <div class="col-sm-3">
                   <div id="list-title-img">
                       <a href='/board/get?p_no=<c:out value="${party.p_no}"/>'>
						<img id='<c:out value="${party.p_no}" />' src="/resources/img/default_thumbnail.png" alt="thumbnail image" />
                      	<script>showThumbnail(${party.p_no});</script>
                   	   </a>
                   </div>
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
            <input type="hidden" name="type" value="${param.type}" />
            <input type="hidden" name="startDate" value="${param.startDate}" />
            <input type="hidden" name="endDate" value="${param.endDate}" />
            <input type="hidden" name="region" value="${param.region}" />
            <input type="hidden" name="category" value="${param.category}" />
            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}" />
            <input type="hidden" name="amount" value="${pageMaker.cri.amount}" />
         </form>

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
	$(document).ready(function(){
		
		// datepicker. start.
        $(function() {
            // datepicker 한국어로 사용하기 위한 언어설정
 			$.datepicker.regional['ko'] = {
		        closeText : '닫기',
		        prevText : '이전달',
		        nextText : '다음달',
		        currentText : '오늘',
		        monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        dayNames : ['일', '월', '화', '수', '목', '금', '토'],
		        dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
		        dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
		        weekHeader : 'Wk',
		        dateFormat : 'yy-mm-dd',
		        firstDay : 0,
		        isRTL : false,
		        showMonthAfterYear : true,
		        yearSuffix : '년'
		    };
			$.datepicker.setDefaults($.datepicker.regional['ko']);

            // 시작일(startDate)은 종료일(endDate) 이후 날짜 선택 불가
            // 종료일(endDate)은 시작일(startDate) 이전 날짜 선택 불가

            // 시작일.
            $("#startDate").datepicker({
                minDate: "0",                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
                onClose: function(selectedDate) {    
                    // 시작일(startDate) datepicker가 닫힐때
                    // 종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                    $("#endDate").datepicker("option", "minDate", selectedDate);
                    // 시작일 선택 후 종료일 선택 datepicker 바로 띄워주기
                    $("#endDate").trigger("click");
                }                
            });

            // 종료일
            $("#endDate").datepicker({
                onClose: function(selectedDate) {
                    // 종료일(endDate) datepicker가 닫힐때
                    // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                    $("#startDate").datepicker("option", "maxDate", selectedDate);
                }                
            });
        });
		// datepicker. end.
		
	   
		var type="${param.type}";
		$("#btnWrite").on("click",function(){
			self.location="/board/register?type="+type;
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