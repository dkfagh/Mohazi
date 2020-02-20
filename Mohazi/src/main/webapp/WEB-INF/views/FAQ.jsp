<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./includes/header.jsp" %>
<%@ include file="./includes/navigation.jsp" %>

<style>
    /* reset */
    *{
        margin:0;
        padding: 0;
    }
    
    .row{
    	padding: 20px 15px;
    }
    
    .row h2{
    	font-weight:bold;
    }
    ul, li{
    	list-style: none;
    }
    
    li a:hover{
    	text-decoration: none;
    }
    
    
    .FAQ-h{            
        width: 100%;       
        right: 10%;
        height: 180px;
        z-index: 5;
        border-bottom:solid 1.5px #66a385;
    }
    
    .Explanation{            
        height: 80px;
        width: 100%;            
    }
    
    .Explanation p{
    	padding-left:2px;
    }
        
    .FAQsearch{
        width: 100%;
        border-bottom:solid 1.5px #66a385;
        margin-bottom: 20px;
    }
    
    #inputKeyword{
    	width:90%;
        border:none;
    }
    
    #inputKeyword:focus{
    	outline: none; 
    }
    
    .FAQsearch button:focus{
    	outline: none; 
    }
    
    #category{
    	margin:5px;
    	margin-bottom: 20px;
    }
    
    #category ul li{
    	list-style:none;
    }
    
    #category li{        	
    	float:left;
    }
    
    .category{
    	margin-left:30px;
    }
    
    #category a{
    	color:black;
    }
    
    
    
    .FAQ-b{            
        width: 100%;            
        right: 10%;
        z-index: 4;
    }
    
    .accordions {
	     background-color: white;
	     color: black;
	     cursor: pointer;
	     padding: 18px;
	     width: 100%;
	     border: none;
	     text-align: left;
	     outline: none;
	     font-size: 15px;
	     transition: 0.4s;
	     border-bottom:solid lightgray 0.5px;
    }
    
    .accordions:focus{
    	 outline: none; 
    }

    .panel {
	     padding: 0 18px;      
	     background-color: white;
	     overflow: hidden;
	     border: solid gray 0.5px;
	     transition: max-height 0.2s ease-out;
    }
    
</style>
    
    <div class="container">
        <!-- FAQ 페이지 시작 -->
        <!-- 내정보 네비, 페이지 분할 -->
        <div class="row"> 
                <div class="FAQ-h">
                    <div class="Explanation">
                        <h2>FAQ</h2>
                        <p>FAQ에 없는 질문에 관한 문의는 admin@mohazi.com으로 메일 부탁드립니다.</p>
                    </div>
                    
                    <!-------------------------- search form ------------------------------->
                    <div class="FAQsearch">
                        <form id="FAQsearchForm" action="/FAQ" method="get">
                        	<button class="btn btn-lg"><i class="fas fa-search"></i></button>
	                        <input type="text" name="keyword" id="inputKeyword" placeholder="검색어를 입력하세요." />
                        </form>
                    </div>
                    <!----- search form END ----->
                    
                    <div id="category">
                        <ul>
                        	<li>
                        		<a id="total" href="#">전체</a>
                        	</li>
                        	<li>
                        		<a id="info" class="category" href="#">이용 안내</a>
                        	</li>
                        	<li>
                        		<a id="attendee" class="category" href="#">참여자</a>
                        	</li>
                        	<li>
                        		<a id="host" class="category" href="#">개설자</a>
                        	</li>
                        	<li>
                        		<a id="user" class="category" href="#">회원 정보</a>
                        	</li>
                        	<li>
                        		<a id="payment" class="category" href="#">결제/환불</a>
                        	</li>
                        </ul>
                    </div>              
                </div>

                <div class="FAQ-b">
                    <ul id="accordion">
	                    <c:forEach items="${FAQ}" var="list">
		                    <li class="${list.category}" style="display:block">	                    	
	                    		<button class="accordions">${list.title}</button>
	                    		<div class="panel">
	                    			<p>${list.content}</p>
	                    		</div>	                    	
		                    </li>
	                    </c:forEach>
                    </ul>
                </div>
                <!-- FAQ 페이지 끝 -->
          </div>
          <!-- 내정보 네비, 페이지 분할 -->          
    </div>
    <!-- 바디 부분 끝 ----------------------------------------------------------------->
    
<%@ include file="./includes/footer.jsp" %>
    
   	<script>
   	// FAQ accordion start
    $(".panel").hide();
    $(".accordions").click(function(){
        $(this).next().slideToggle();
        $(".accordions").not(this).next().slideUp();
    });    
    
    
    // FAQ category select
    $("#category a").on("click",function(e){
        e.preventDefault();  // 전송을 막아 페이지가 상단으로 이동하는것을 방지
	});
    
    
    // FAQ search start
    var FAQsearchForm = $("#FAQsearchForm");
    
    $("#FAQsearchForm button").on("click", function(e){
    	
    	if(!FAQsearchForm.find("input[name='keyword']").val()){
    		alert("검색어를 입력하세요.");
    		return false;
    	}
    	
    	e.preventDefalut();
    	
    	FAQsearchForm.submit();
    });
    
    
    // FAQ category 선택
    // 전체
    $("#total").on("click",function(){
    	$(".info").css("display","block");
    	$(".attendee").css("display","block");
    	$(".host").css("display","block");
    	$(".user").css("display","block");
    	$(".payment").css("display","block");
    });
    // 이용 안내
    $("#info").on("click",function(){
    	$(".info").css("display","block");
    	$(".attendee").css("display","none");
    	$(".host").css("display","none");
    	$(".user").css("display","none");
    	$(".payment").css("display","none");
    });
    // 참여자
    $("#attendee").on("click",function(){
    	$(".info").css("display","none");
    	$(".attendee").css("display","block");
    	$(".host").css("display","none");
    	$(".user").css("display","none");
    	$(".payment").css("display","none");
    });
    // 개설자
    $("#host").on("click",function(){
    	$(".info").css("display","none");
    	$(".attendee").css("display","none");
    	$(".host").css("display","block");
    	$(".user").css("display","none");
    	$(".payment").css("display","none");
    });
    // 회원 정보
    $("#user").on("click",function(){
    	$(".info").css("display","none");
    	$(".attendee").css("display","none");
    	$(".host").css("display","none");
    	$(".user").css("display","block");
    	$(".payment").css("display","none");
    });
    // 결제/환불
    $("#payment").on("click",function(){
    	$(".info").css("display","none");
    	$(".attendee").css("display","none");
    	$(".host").css("display","none");
    	$(".user").css("display","none");
    	$(".payment").css("display","block");
    });
	</script>

