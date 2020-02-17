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
            
            
            
            height:100%;
            
        }

        .row{
            position: relative;
            width:80%;
            margin-left:10%;
            box-sizing: border-box;
            
            height: 100%;
            display:inline-block;
            padding:0;
        }
        /* content 부분 끝 */

        /* mypage 네비 시작 */
        #myNav{
            
            float: left;
            border: black solid 2px;
            
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
            
            border:solid black 2px;
        }
		/* paging 부분 */
		.pagination{
			
			
			width:70%;
			
		   padding-top:5px;
		   
		   
		}
		
		.pagination a{
		   border-radius: 5px;
		   transition: background-color .3s;
		   text-decoration:none;
		   color:black;
		   
		   
		}
		
		.pagination a.active {
		    background: #7bd4ac ;
		   color: white;
		}
		
		.pagination a:hover:not(.active) {
		   background: #e9faf2;
		}
		/* paging 부분 끝 */
		#myList{
			border:solid green 1px;
		}
		#myList h4{
			text-align:center;
			color:gray;
			
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
                <div id="myList" class="col-sm-12">
                    <h3>나의 모임</h3>
                    <table class="table-responsive">
                        
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                            <!-- 테이블 내용 ----------------------------------------->
                    		
                           	<c:choose>
                                <c:when test="${ pageMaker.total <= 0}">
                                 	<tr><td></td></tr><tr><td></td></tr>
                                 	<tr>
                                  		<td>
                                  			<h4>내 모임 리스트가 없습니다.</h4>
                                 		</td>
                               		</tr>
                                </c:when>
                                <c:when test="${pageMaker.total > 0 }">
                                	<c:forEach items="${list}" var="party">
                                		<!-- 개설자 ID -->
                                		<c:set var="writer" value = "${party.id}" />
                                		<!-- 개설자 ID 끝 -->
                             			<tr>
                                   			<td>
                                           		<a class="move" href='<c:out value="${party.p_no}"/>'>
                                               		<c:out value="${party.title}" /> 
                                           		</a>
                                   			</td>
                                   			<td></td>
                                   			<td>
                                   			<!-- 내가 개설한 정보표시-->
                                   			
                                       			<c:if test = "${principal.username eq writer}"> 
		                                       		<i class="fab fa-angellist" style="background:red"></i>
		                                       	</c:if>
                                       		<!-- 내가 개설한 정보표시 끝-->
                                   			</td>
                                   			<td>
                                   				<c:choose>
                                   					<c:when test="${ principal.username ne writer}"> <!-- 참여한 글일때 -->
                                   						<button data-oper='exit' data-p_no="<c:out value='${party.p_no}'/>" class="btn btn-sm" type="button">나가기</button>
                               						</c:when>
                               						<c:when test="${ principal.username eq writer}"> <!--  작성한 글일때 -->
                                   						<button data-oper='delete' data-p_no="<c:out value='${party.p_no}'/>" class="btn btn-sm" type="button">삭제</button>
                               						</c:when>
                                   				</c:choose>
                                   			</td>
                                      	 </tr>
                       				</c:forEach>
                           	 	</c:when>
                           </c:choose>
	                            
                           <!-- 테이블 내용 끝 ---------------------------------------->
                    
                        </table>
                    
                        <!-- Paging --------------------------------------------------->
                        <form id="actionForm" action="/mypage/myMeeting" method="get">
                            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                            <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                            <input type="hidden" name="type" value="${pageMaker.cri.type}">
                            <input type="hidden" name="writer" value="${writer}">
                            
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

<!--  Script 영역 -->
<script>
$(document).ready(function(){
	
/////////// Paging 처리
	var actionForm=$("#actionForm"); // paing actionForm
	
	// paging 번호 클릭시 해당 번호로 이동
	$(".page-item a").on("click",function(e){
		e.preventDefault(); // 페이지 이동을 막는다
		
		console.log("click");
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit(); // 전송. list페이지로 이동.
	});
	
	
	// 해당 게시글 클릭시 해당 상세보기 페이지로 이동
	$(".move").on("click",function(e){
		e.preventDefault();
		actionForm.append("<input type='hidden' name='p_no' value='"+$(this).attr("href")+"'>");
		actionForm.attr("action","/board/get");
		actionForm.submit();
	});
	
	
	// 나가기 버튼 클릭시 해당 게시글 삭제 버튼(동작 = party_join 테이블에서 삭제)
	$("button[data-oper='exit']").on("click",function(e){
		   e.preventDefault();
		   
		   
				var que = confirm("참여한 글을 나가시겠습니까?");

				if (que == true) {
					
					actionForm.append("<input type='hidden' name='p_no' value='"+$(this).data("p_no")+"'>");
					actionForm.attr("action", "/mypage/exit");   //   acition변경
				} else {
					return false;
				}	      
				actionForm.submit();
   }); 
	
	// 삭제 버튼 클릭시 해당 게시글 삭제 버튼(동작 = party_join 테이블에서 삭제 + party 테이블에서 삭제)
	$("button[data-oper='delete']").on("click",function(e){
		   e.preventDefault();
		   
		   
				var que = confirm("개설한 글을 삭제하시겠습니까?");

				if (que == true) {
					var conf = confirm("게시글에 참여인원이 있을 수 있습니다, 그냥 나가시겠습니까?");
					console.log($(this).data("p_no"));
					if(conf = true){
						actionForm.append("<input type='hidden' name='p_no' value='"+$(this).data("p_no")+"'>");
					
						actionForm.attr("action", "/mypage/delete");   //   acition변경
					}else{return;}
				} else {
					return false;
				}	      
				actionForm.submit();
   }); 
});
</script>
<!--  Script 영역 끝 -->

<%@ include file="../includes/footer.jsp" %>