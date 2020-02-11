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
        
        ul, li{
        	list-style: none;
        }
        
        li a:hover{
        	text-decoration: none;
        }
        
        .FAQ-h{            
            /* width: 80%; */            
            right: 10%;
            height: 240px;
            z-index: 5;
        }
        
        .FAQ-b{            
            width: 100%;            
            right: 10%;
            top:240px;
            z-index: 4;
        }
        
        .Explanation{            
            height: 80px;
            width: 100%;            
        }
        
        .Explanation h6{
            text-align: center;
        }
        
        .FAQsearch{
            width: 100%;
            height: 60px;
        }
        
        .FAQsearch button{            
            font-size: 25px;
            border:none;            
        }
        
        #category ul li{
        	list-style:none;
        }
        
        #category li{        	
        	float:left;
        	margin-left:20px;
        }
        
        #category a{
        	color:black;
        }
            
        .FAQsearch input{
            height: 35px;
        }
        
        .accordions {
	        background-color: #eee;
	        color: #444;
	        cursor: pointer;
	        padding: 18px;
	        width: 100%;
	        border: none;
	        text-align: left;
	        outline: none;
	        font-size: 15px;
	        transition: 0.4s;
        }

        .panel {
	        padding: 0 18px;      
	        background-color: white;
	        overflow: hidden;
	        transition: max-height 0.2s ease-out;
        }
        
    </style>
    
    <div class="container">

            <!-- FAQ 페이지 시작 -->
        <div class="row"> <!-- 내정보 네비, 페이지 분할 -->
                <div class="FAQ-h">
                    <div class="Explanation">
                        <h2>FAQ</h2>
                        <h6>FAQ에 없는 질문에 관한 문의는 admin@mohazi.com으로 메일 부탁드립니다.</h6>
                    </div>
                    <!-- form tag-->

                    <div class="FAQsearch">
                        <form id="FAQsearchForm" action="/FAQ" method="get">
	                        <input type="text" name="keyword" placeholder="검색어를 입력하세요." />
	                        <button><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    
                    <div id="category">
                        <ul>
                        	<li>
                        		<a id="total" href="#">전체</a>
                        	</li>
                        	<li>
                        		<a id="info" href="#">이용 안내</a>
                        	</li>
                        	<li>
                        		<a id="attendee" href="#">참여자</a>
                        	</li>
                        	<li>
                        		<a id="host" href="#">개설자</a>
                        	</li>
                        	<li>
                        		<a id="user" href="#">회원 정보</a>
                        	</li>
                        	<li>
                        		<a id="payment" href="#">결제/환불</a>
                        	</li>
                        </ul>
                    </div>              
                </div>
                    <!-- form tag end-->

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

