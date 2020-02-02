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

        #wrap{
            
            margin-left: 5%;
            width:90%;
            height: 100%;
        }
            
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
            background: wheat;
            margin-left:5%;
            width:80%;
            height: 500px;
            padding:30px;
            border:solid 2px black;
            
        }
        #pages h3{
            float:left;

        }
        #pages div{
            clear: both;
        }


    </style>
            <div class="frame-body">
            <!-- wrap div 삭제했습니다. container로 통일해주세요-->
            
            <!-- nav 이름 변경필요 -->
            <!-- 네비 시작 -->
    
            <div class="nav">
               <div class="nav-text"><h4>내정보</h4></div>
               <div class="nav-item">
                    <a href="#">내 모임</a>
                    <a href="#">내 클래스</a>
                    <a href="#">내정보 변경</a>
                    
               </div>
            </div>
            <!-- 네비 끝 -->

            
            <!-- 페이지 바디 시작 -->
            <div id="pages" class="row">
                <!-- 만든 Class 시작 -->
                <div class="col-sm-12">
                <table class="table-responsive col-sm-12">
                    <h3>내가 만든 모임</h3>
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                      
                        
                      
                      <!-- 테이블 내용 ----------------------------------------->
                      
                      <c:forEach items="${list}" var="board">
                          <tr>
                              <td><c:out value="${board.bno}" /></td>
                              <td>
                                  <a class="move" href='<c:out value="${board.bno}"/>'>
                                      <c:out value="${board.title}" /> 
                                      <c:if test = "${board.replyCnt > 0 }">
                                      <%-- <b>[<c:out value="${board.replyCnt}" />]</b> --%>
                                      <span class="badge badge-secondary">${board.replyCnt}</span>
                                      </c:if>
                                  </a>
                              </td>
                              <td><c:out value="${board.writer}"/></td>
                             
                             
                              <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></td>
                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/></td>
                          </tr>
                      
                      </c:forEach>
                      <!-- 테이블 내용 끝 ---------------------------------------->
                      
                    </table>
                     
                     <!-- Paging --------------------------------------------------->
                     <form id="actionForm" action="/board/list" method="get">
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
                                 <li class="page-item ${pageMaker.cri.pageNum == num ? 'active':''}">
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
                    
                </table>
            </div>
                     <!-- Paging 끝 --------------------------------------------------->
                     <!-- 만든 클래스 끝 -->
                <hr>
                
                    
                    
                        
                        <!-- 참여한 Class 시작 ----------------------------->
                        <div class="col-sm-12">
                <table class="table-responsive">
                    <h3>내가 참여한 모임</h3>
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                      
                        
                      
                      <!-- 테이블 내용 ----------------------------------------->
                      
                      <c:forEach items="${list}" var="board">
                          <tr>
                              <td><c:out value="${board.bno}" /></td>
                              <td>
                                  <a class="move" href='<c:out value="${board.bno}"/>'>
                                      <c:out value="${board.title}" /> 
                                      <c:if test = "${board.replyCnt > 0 }">
                                      <%-- <b>[<c:out value="${board.replyCnt}" />]</b> --%>
                                      <span class="badge badge-secondary">${board.replyCnt}</span>
                                      </c:if>
                                  </a>
                              </td>
                              <td><c:out value="${board.writer}"/></td>
                             
                             
                              <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></td>
                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/></td>
                          </tr>
                      
                      </c:forEach>
                      <!-- 테이블 내용 끝 ---------------------------------------->
                      
                    </table>
                     
                     <!-- Paging --------------------------------------------------->
                     <form id="actionForm" action="/board/list" method="get">
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
                                 <li class="page-item ${pageMaker.cri.pageNum == num ? 'active':''}">
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
                    
                </table>
                     <!-- Paging 끝 --------------------------------------------------->
                     <!-- 참여한 클래스 끝 -->
                    </div>
                
            </div>
            <!-- 페이지 바디 끝 -->
        </div>

<%@ include file="../includes/footer.jsp" %>