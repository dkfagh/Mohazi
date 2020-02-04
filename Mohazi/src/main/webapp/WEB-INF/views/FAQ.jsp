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
        .FAQ-h{
            
            width: 80%;
            
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



        #category button{
            width:160px;
        }
        
        #category ul li{
        	list-style:none;
        }
        
        #category li{        	
        	float:left;
        	margin-left:20px;
        	color:black;
        }
    
        
        .FAQsearch input{
            height: 35px;
        }
        .accordion {
            position: relative;
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
            z-index: 4;
        }

        .active, .accordion:hover {
            background-color: #ccc;
        }

        .panel {
            padding: 0 18px;
            background-color: white;
            max-height: 0;
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
                        
                        <input class="textsearch" type="text" placeholder="검색">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </div>
                    
                    
                    <!-- <div id="category" class="dropdown">
                        <button type="button" class="btn btn-outline-dark dropdown-toggle" data-toggle="dropdown">
                       		 카테고리
                        </button>
                        <div class="dropdown-menu">
	                        <a class="dropdown-item" href="#">전체</a>
	                        <a class="dropdown-item" href="#">참여자</a>
	                        <a class="dropdown-item" href="#">개설자</a>
	                        <a class="dropdown-item" href="#">이용 안내</a>
	                        <a class="dropdown-item" href="#">회원 정보</a>
	                        <a class="dropdown-item" href="#">결제/환불</a>
                        </div>
                    </div>               -->
                    <div id="category">
                        <ul>
                        	<li><a href="#">전체</a></li>
                        	<li><a href="#">참여자</a></li>
                        	<li><a href="#">개설자</a></li>
                        	<li><a href="#">이용 안내</a></li>
                        	<li><a href="#">회원 정보</a></li>
                        	<li><a href="#">결제/환불</a></li>
                        </ul>
                    </div>              
                </div>
                    <!-- form tag end-->

                <div class="FAQ-b">
                    <!-- <button class="accordion">쿼리들어갈부분</button>
                    <div class="panel">
                    	<p>컨텐츠쿼리 들어갈부분</p>
                    </div> -->
                    <div id="accordion">
                    	<c:forEach items="${FAQ}" var="list">
                    		<h3><c:out value="${list.title}" /></h3>
                    		<div>
                    			<p><c:out value="${list.content}" /></p>
                    		</div>
                    	</c:forEach>
                    	<h3>FAQ 제목</h3>
                    	<div>
                    		<p> FAQ 내용 </p>
                    	</div>
                    </div>
                </div>
                <!-- FAQ 페이지 끝 -->
            </div><!-- 내정보 네비, 페이지 분할 -->
            <!-- to top button ------------------------------------------>
            <div id="top-btn">
                <button class="btn btn-outline-secondary">
                    <a href="#" class="top"><i class="fas fa-arrow-up"></i></a>
                </button>
            </div>
        </div>
         <!-- to top button --->
    </div>
    <!-- 바디 부분 끝 ----------------------------------------------------------------->
    
    
        <!-- <script>
        var acc = document.getElementsByClassName("accordion");
        var i;
        
        for (i = 0; i < acc.length; i++) {
          acc[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var panel = this.nextElementSibling;
            if (panel.style.maxHeight) {
              panel.style.maxHeight = null;
            } else {
              panel.style.maxHeight = panel.scrollHeight + "px";
            } 
          });
        }
    </script> -->

<%@ include file="./includes/footer.jsp" %>