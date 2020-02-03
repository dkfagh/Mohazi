<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                <!-- 만든 Class 시작 -->
                <div id="myMeetingList" class="col-sm-12" style="border:solid green 1px">
                    <table class="table-responsive col-sm-12">
                        <h3>나의 모임</h3>
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                            <!-- 테이블 내용 ----------------------------------------->
                    
                            <c:forEach items="${list}" var="party">
                                <tr>
                                    
                                    <td>
                                        <c:if test = "${party.type==2}">
                                            <a class="move" href='<c:out value="${party.p_no}"/>'>
                                                <c:out value="${party.title}" /> 
                                                <!-- 내가 개설한 정보표시-->
                                                <c:if test = "${party.id == users.id }">
                                                <%-- <b>[<c:out value="${party.replyCnt}" />]</b> --%> 
                                                <i class="fab fa-angellist"></i>
                                                </c:if>
                                                <!-- 내가 개설한 정보표시 끝-->
                                            </a>
                                        </c:if>
                                    </td>
                                    
                                </tr>
                        
                            </c:forEach>
                            <!-- 테이블 내용 끝 ---------------------------------------->
                    
                        </table>
                    
                        <!-- Paging --------------------------------------------------->
                        <form id="actionForm" action="/mypage/myMeeting" method="get">
                            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                            <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                            <input type="hidden" name="type" value="${pageMaker.cri.type}">
                            <input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                        </form>         
                        <div class ="float-right">
                            <ul class="pagination">
                                <c:if test="${pageMaker.prev}">
                                    <li class="page-item previous">
                                        <a class="page-link" href="${pageMaker.startPage-1}">Previous</a>
                                    </li>
                                </c:if>
                                <c:forEach var="num" begin="${pageMaker.startPage}"
                                    end="${pageMaker.endPage}">
                                    <li class="page-item ${pageMaker.cri.Num == num ? 'active':''}">
                                        <a class="page-link" href="${num}">${num}</a>
                                    </li>
                                    
                                </c:forEach>
                                <c:if test="${pageMaker.next}">
                                    <li class="page-item next">
                                        <a class="page-link" href="${pageMaker.endPage+1}">Next</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                        <!-- Paging 끝 --------------------------------------------------->
                    </table> <!-- 테이블 끝 -------->
                </div>
                <!-- 만든 클래스 끝 -->
            </div><!-- 페이지 바디 끝 -->    
        </div><!-- 내정보 네비, 페이지 분할 -->
        <!-- to top button ------------------------------------------>
        <div id="top-btn">
            <button class="btn btn-outline-secondary">
                <a href="#" class="top"><i class="fas fa-arrow-up"></i></a>
            </button>
        </div>
         <!-- to top button --->
    </div>
    <!-- 바디 부분 끝 ----------------------------------------------------------------->

<%@ include file="../includes/footer.jsp" %>