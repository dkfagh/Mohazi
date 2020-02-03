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
                        <h3>FAQ</h3>
                        <h6>FAQ에 없는 질문에 관한 문의는 abc@def.com으로 메일 부탁드립니다.</h5>
                    </div>
                    <!-- form tag-->

                    <div class="FAQsearch">
                        
                        <input class="textsearch" type="text" placeholder="검색">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </div>
                    
                    
                    <div id="category" class="dropdown">
                        <button type="button" class="btn btn-outline-dark dropdown-toggle" data-toggle="dropdown">
                        카테고리
                        </button>
                        <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">참여자</a>
                        <a class="dropdown-item" href="#">개설자</a>
                        <a class="dropdown-item" href="#">마이페이지</a>
                        <a class="dropdown-item" href="#">결제</a>
                        </div>
                    </div>
                    
                </div>
                    <!-- form tag end-->

                
                <div class="FAQ-b">

                    <button class="accordion">쿼리들어갈부분</button>
                    <div class="panel">
                    <p>컨텐츠쿼리 들어갈부분</p>
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
    
        <script>
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
    </script>

<%@ include file="./includes/footer.jsp" %>