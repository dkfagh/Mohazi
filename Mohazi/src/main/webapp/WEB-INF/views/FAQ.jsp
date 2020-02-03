<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./includes/header.jsp" %>
<%@ include file="./includes/navigation.jsp" %>

    <style>
        /* reset */
        *{
            margin:0;
            padding: 0;
        }
        .frame-body{
            position: relative;
            margin-top: 20px;
            clear: both;
            margin-left: 5%;
            display: block;
        }
        
        .FAQ-h{
            position: fixed;
            width: 80%;
            
            right: 10%;
            height: 240px;
            z-index: 5;
        }
        .FAQ-b{
            position: relative;
            width: 80%;
            left:5%;
            right: 10%;
            top:240px;
            z-index: 4;
        }
        .Explanation{
            position: relative;
            height: 80px;
            width: 100%;
            top:10px;
        }

        .Explanation h3{
            position: absolute;
            left:20px;
            float:left;
        }
        .Explanation h6{
            position: absolute;
            top:10px;
            left:100px;
            text-align: center;
        }
        .FAQsearch{
            position: relative;
            width: 100%;
            display: block;
            left:20px;
            margin-bottom: 0px;
            height: 60px;
        }
        .FAQsearch i{
            
            font-size: 25px;
            
        }

 

        #category button{
            width:160px;
        }
    
        
        .FAQsearch input{
            
            margin-top: 10px;
            height: 30px;
            
        }
        .accordion {
            
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
    
    <div id="wrap">

        <div class="frame-body">

            <!-- FAQ 페이지 시작 -->
    
            <div class="FAQ-h">
                <div class="Explanation">
                    <h2>FAQ</h2>
                    <h6>FAQ에 없는 질문에 관한 문의는 admin@mohazi.com으로 메일 부탁드립니다.</h6>
                </div>
                <!-- form tag-->

                <div class="FAQsearch">
                    <i class="fa fa-search"></i>
                    <input class="textsearch" type="text" placeholder="검색">
                </div>
                
                
                <!-- <div id="category" class="dropdown">
                    <button type="button" class="btn btn-outline-dark dropdown-toggle" data-toggle="dropdown">
                   		 카테고리
                    </button>
                    <div class="dropdown-menu">
	                    <a class="dropdown-item" href="#">전체</a>
	                    <a class="dropdown-item" href="#">참여자</a>
	                    <a class="dropdown-item" href="#">개설자</a>
	                    <a class="dropdown-item" href="#">이용안내</a>
	                    <a class="dropdown-item" href="#">회원정보</a>
	                    <a class="dropdown-item" href="#">결제</a>
                    </div>
                </div> -->
                
                <div id="category">
                	<ul>
                		<li href="#">전체</li>
                		<li href="#">참여자</li>
                		<li href="#">개설자</li>
                		<li href="#">이용 안내</li>
                		<li href="#">회원 정보</li>
                		<li href="#">결제/환불</li>
                	</ul>
                </div>
                
                
            </div>
                <!-- form tag end-->

            </div>
            <div class="FAQ-b">

                <button class="accordion">쿼리들어갈부분</button>
                <div class="panel">
                  <p>컨텐츠쿼리 들어갈부분</p>
                </div>
                 
            </div>
            <!-- FAQ 페이지 끝 -->
        </div>
        

<%@ include file="./includes/footer.jsp" %>