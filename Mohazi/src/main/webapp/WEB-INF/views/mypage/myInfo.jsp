<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>

    <style>
        /* reset */
        *{
            margin:0;
            padding: 0;
        }

		/* content 부분 시작 */
        .container{
            
            position: relative;
            max-width: 100%;
            width:100%;
            margin-left:0;
            margin-right:0;
            padding-left: 0;
            padding-right: 0;
            margin-top: 20px;
            display: inline-block;
            
            border: 1px olive solid;
            
            height:100%;
            
        }

        .row{
            position: relative;
            width:80%;
            margin-left:10%;
            box-sizing: border-box;
            border: 1px orange solid;
            height: 100%;
            display:inline-block;
            padding:0;
        }
        /* content 부분 끝 */

        /* mypage 네비 시작 */
        #myNav{
            
            float: left;
            border: black solid 1px;
            
            max-width: 161.64px;
            height:400px;
            padding: 0;
            
        }
        #myNav a{
            display: block;
        }
        .myNavHome{
            background-color: #aaf0d1;
            height: 40px;
            width:100%;
            text-align: center;
            border-bottom: black solid 1px;
            margin:0;
        }
        .myNavItem{
            padding:10px;
            margin:0;
        }
        /* mypage 네비 끝 */
        
        #pages{
            position:relative;
            float: right;
            background: wheat;
            
            width:100%;
            height: 500px;
            padding:30px;
            
            border:solid blue 1px;
        }


        .pw-equal{
            text-align: center;
            width:100%;
            height:100%;
        }
        .pw-equal h2{
            margin-top: 120px;
        }
        .pw-equal input{
            margin-top: 30px;
            width:200px;
        }
        .pw-equal button{
            width:80px;
            margin-top:20px;
        }
        

    </style>

        <div class="container">
            
        <div class="row"> <!-- 내정보 네비, 페이지 분할 -->
            <!-- 네비 시작 -->
            <div id="myNav"class="col-sm-3" >
                
                    <div class="myNavHome">
                        <a href="/mypage/myMeeting">
                            <h4>내정보</h4>
                        </a>
                    </div>
                    <div class="myNavItem">
                        <a href="/mypage/myMeeting">내 모임</a>
                        <a href="/mypage/myClass">내 클래스</a>
                        <a href="/mypage/myInfo">내정보 변경</a>                
                    </div>
                
            </div>
            
            <!-- 네비 끝 -->
            
            <!-- 페이지 바디 시작 -->
            <div id="pages" class="col-sm-9">
                <div class="pw-equal">
                    <h2>정보를 확인하려면 비밀번호를 입력해주세요</h2>
                    <input type="text" name="pw" placeholder="비밀번호를 입력하세요"><br>
                    <button type="submit">확인</button>
                </div>
            </div>
            <!-- 페이지 바디 끝 -->
        </div><!-- 내정보 네비, 페이지 분할 -->
        <!-- to top button ------------------------------------------>
        <div id="top-btn">
            <button class="btn btn-outline-secondary">
                <a href="#" class="top"><i class="fas fa-arrow-up"></i></a>
            </button>
        </div>
         <!-- to top button --->
    </div>

<%@ include file="../includes/footer.jsp" %>