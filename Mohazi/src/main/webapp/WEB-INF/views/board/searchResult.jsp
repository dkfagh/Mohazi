<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>



<style>
.contents {
position: relative;
margin: 0 auto;
}
.col-sm-12{           
box-sizing:content-box ;
padding:20px !important;
/* overflow: hidden; */
}

.col-sm-3{   
    height: 350px;
    padding-bottom: 10px;
}

.list-title-img{
   position: relative;
   border-radius: 10px 10px 0 0;
   overflow: hidden;
   height: 65%;
   background-color: #ebebeb;
}
.list-title-img img{
    width: 100%;
    height: auto;
}
   
.list-title-text {
   position: relative;
   border-radius: 0 0 10px 10px;
   border: 1px solid #d5dadf;
   border-top: 0 none;
   padding: 25px 30px 40px;
   height: 35%;
}
.list-category-sub {
   font-size: 16px;
   margin-bottom: 2px;
   color: #6a82ec;
   float: left;
   padding-right: 5px;
}
.list-title-type {
   font-size: 16px;
   margin-bottom: 2px;
   color: #96969d;
}
.list-header h2{
    margin: 5px;
    font-family: 'Sunflower', sans-serif;
    font-size: 25px;
    padding-top:15px;
    padding-bottom:15px;

}
.btnWrite{
   background-color:#7bd4ac;
   color:white;
}

.pagination{
	display:block;
	margin:0 auto;
	width:70%;
	text-align:center;
   padding-top:25px;
   padding-bottom:35px;
   clear:both;
}

.pagination a{
   border-radius: 5px;
   transition: background-color .3s;
   text-decoration:none;
   color:black !important;
   padding: 6px 12px !important;
   
}

.pagination a.active {
    background-color: #7bd4ac ;
   color: white !important;
}

.pagination a:hover:not(.active) {
   background-color: #e9faf2;
}

.list-title-subject a{
   text-decoration:none;
   color:black;
}

</style>


<script>
// function for thumbnail
function showThumbnail(p_no){
	var p_noValue = p_no;
	
	$.getJSON("/board/getAttachList", {p_no:p_noValue},function(arr){
		var str = "";
		// if there is no attached image file
		if(!arr.length){
			return;
		}
		else{
			attach = arr[0];
			var fileCallPath = encodeURIComponent(attach.uploadPath +"/"+ attach.uuid +"_"+ attach.fileName);
			str +="/display?fileName="+fileCallPath;
			$("#"+p_noValue).attr("src", str);
		}
	});	//end getjson
};		//end function
</script>

<div class="container contents">
        
        <div class="list-header">
		<h2>"<c:out value="${pageMaker.cri.keyword}"/>"(으)로 검색한 결과입니다.
         <button type="button" class="btn float-right btnWrite">글쓰기</button>
		</h2>
        </div>

        <div class="row">
           <c:forEach var="party" items="${search}">
               <div class="col-sm-3">
                  <div class="list-title-img">                  
                   <a href='/board/get?p_no=<c:out value="${party.p_no}"/>'>
						<img id='<c:out value="${party.p_no}" />' src="/resources/img/default_thumbnail.png" alt="thumbnail image" />
                      	<script>showThumbnail(${party.p_no});</script>
                   </a>
                  </div>	
               <div class="list-title-text">
                  <div class="list-category-sub">
                     [<c:out value="${party.cat_main}"/>]
                  </div>
                  <div class="list-title-type">
                     #<c:out value="${party.cat_sub}" />,
                     #<c:out value="${party.tag}" />   
                     <span class="badge badge-default"><c:out value="${party.price}" />원</span>
                  </div>
                  <div class="list-title-subject">
                     <a href='/board/get?p_no=<c:out value="${party.p_no}"/>'><c:out value="${party.title}" /></a>
                  </div>
               </div>
               </div>
         </c:forEach>
      
         <!-- Paging --------------------------------- -->
         
         <form id="actionFormSearch" action="/board/searchResult" method="get">
            <input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                 <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                 <input type="hidden" name="amount" value="${pageMaker.cri.amount}"> 
         </form>
   
	      

		</div>
		
		  <div class="pagination">
	           <c:if test="${pageMaker.prev}">
	              <a href="${pageMaker.startPage-1}" class="paginate_button">&laquo;</a>
	           </c:if>
	           <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	                 <a href="${num}" class="paginate_button ${pageMaker.cri.pageNum == num ? 'active' : ''}">${num}</a>
	           </c:forEach>
	           <c:if test="${pageMaker.next}">
	              <a href="${pageMaker.endPage+1}" class="paginate_button" >&raquo;</a>
	           </c:if>
	         </div>	         
	     <!-- 페이징 끝  -->
	         
	         
	         
<%@ include file="../includes/footer.jsp" %>

<script>
   $(document).ready(
         function(){
            var result='<c:out value="${result}"/>';
            $(".btnWrite").on("click",function(){
               self.location="/board/register";
            });
            
            history.replaceState({},null,null);
         
            var actionFormSearch=$("#actionFormSearch");
            
            $(".pagination").on("click","a",function(e){
               
               e.preventDefault();
               
               console.log("click");
               
               actionFormSearch.find("input[name='pageNum']").val($(this).attr("href"));
               actionFormSearch.submit();
               
               log.error();
               
            });
         });

</script>