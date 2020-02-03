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

        #wrap{
            
            margin-left: 5%;
            width:90%;
            height: 100%;
        }

        .frame-body{
            position: relative;
            margin-top: 20px;
            
            width: 100%;
            display: inline-block;
            
            border: 1px red solid;
            
            height:100%;
            
        }
        .nav{
            
            float: left;
            
            display: block;
            border: black solid 1px;
            width:15%;
            max-width: 161.64px;
            height:400px;
        }
        .nav a{
            display: block;
        }
        .nav-text{
            background-color: #aaf0d1;
            height: 40px;
            text-align: center;
            border-bottom: black solid 1px;
        }
        .nav-item{
            padding:10px;
        }
        
        #pages{
            
            float: left;
            background: white;
            margin-left:5%;
            width:80%;
            height: 500px;
            padding:30px;
            border:solid black 1px;
            
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

        <div class="frame-body">

            <!-- 네비 시작 -->
    
            <div class="nav">
               <div class="nav-text"><h4>내정보</h4></div>
               <div class="nav-item">
                    <a href="#">내정보 홈</a>
                    <a href="#">내정보변경</a>
                    <a href="#">최근 본 페이지</a>
                    <a href="#">내가 만든 페이지</a>
                    <a href="#">내가 참여한 페이지</a>
               </div>
            </div>
            <!-- 네비 끝 -->
            
            <!-- 페이지 바디 시작 -->
            <div id="pages" >
                <div class="pw-equal">
                    <h2>정보를 확인하려면 비밀번호를 입력해주세요</h2>
                    <input type="text" name="pw" placeholder="비밀번호를 입력하세요"><br>
                    <button type="submit">확인</button>
                </div>
            </div>
            <!-- 페이지 바디 끝 -->
        </div>

<%@ include file="../includes/footer.jsp" %>