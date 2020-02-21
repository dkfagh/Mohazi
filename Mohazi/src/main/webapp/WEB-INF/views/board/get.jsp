<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>

	<!-- bxslider -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.js"></script>
    
    <!-- 데이트피커 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-datetimepicker/2.7.1/css/bootstrap-material-datetimepicker.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">	
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-datetimepicker/2.7.1/js/bootstrap-material-datetimepicker.min.js"></script>		
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

	
<style>
#contents {
	position: relative;
	margin: 0 auto;
}
.col-sm-8, .col-sm-4{           
	box-sizing: border-box !important;
	padding:20px !important;
	overflow: hidden;
}
#title-img{
	position: relative;
	border-radius: 10px 10px 0 0;
	overflow: hidden;
	height: 450px;
	background-color: #ebebeb;
}
	
.title-text {
	position: relative;
	border-radius: 0 0 10px 10px;
	border: 1px solid #d5dadf;
	border-top: 0 none;
	padding: 25px 30px 40px;
}
.title-course {
	font-weight:bold;
	font-size: 16px;
	margin-bottom: 2px;
	color: #6a82ec;
	float: left;
	padding-right: 5px;
}
.title-type {
	font-weight:bold;
	font-size: 16px;
	margin-bottom: 2px;
	color: #96969d;
}
.title-subject{
 	 font-size: 20px;
  font-weight: bold;
}
.sub-profile {
	border: 1px solid #e4e9ef;
	height: 100%;
	box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.1);
	border-radius: 10px;
	padding: 0;
}

.detail-party-info {
	position: relative;
	padding: 20px;
}

#partyModyBtn{
	width:100%;	
	background-color:#e9faf2;
	border-radius:5px;
	font-weight:bold;
	padding:7px;
	color:#66a385;
	font-size:14px;
}


.detail-party-info .party-txt {
 margin:auto;
}
#party-txt01 { 
 text-align:center;
  font-size: 19px;
  font-weight: bold;
}
#party-txt02 {
	margin-top:10px;
	margin-left:20px;
	float:left;
	padding: 10px;
	font-size: 18px;
	line-height: 22px;
	word-break: keep-all;
	height: 100px;
	white-space: pre-line;
	 /*  overflow-y: scroll; */
}

.detail-info01 {
	border-top: 1px solid #e4e9ef;
	padding: 20px;
}
.detail-info01 ul{	
	list-style:none;
	padding-left:0px;
}
.detail-info01 li {
	float: none !important;
	width: auto !important;  
	font-size: 20px;
	line-height: 50px;
}

.detail-info01 span{
	font-size: 16px;
	font-weight:bold;
	color:#262626;
}

.tab {
	list-style: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}
/* Float the list items side by side */
.tab li {
	float: left;
}
/* Style the links inside the list items */
.tab li a {
	display: inline-block;
	color:#a0a0a0;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	transition:0.3s;
	cursor: pointer;
	font-weight:bold;
}
/* Style the tab content */
.tabContent {
	display: none;	
	padding: 6px 12px;
}
.tabContent h4{
	font-weight:bold;
}
ul.tab li.active{
	font-weight:bold;
	color: #222;
	border-bottom: #7bd4ac solid;
}
ul.tab li.active a {
	display: inline-block;
	color:#222;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	transition:0.3s;
}
.tabContent.active {
	display: block;
	min-height: 700px;
}

.card-title {
	padding-top: 20px;
	padding-left: 20px;
}

.card-body {
	padding: 0 20px;
	overflow:hidden;
}
#introduction img{
	width: 100% !important;
	height: auto;
}
.textarea {
	position:relative;
	resize:none;
	width:90%;
	height:80px
}

.btnTA {
	border:solid gray 0.5px;
	position:absolute;
	margin-left:5px;
	width:60px;
	height:80px;
}

.text01{
	padding: 17px;
	border-bottom: 1px solid #e4e9ef;
	font-size: 18px;
	font-weight: bold;
	margin-bottom:10px;
}
.class-confirm01 .text01 .badge {
	margin-top: 3px;
	vertical-align: top;
}
.text02 {
	text-align:center;
	font-size: 12px;
	color: #9faab7;
}
.hashtag {
	height: 22px;
	margin: 2px 0 0 0;
	padding: 4px 8px;
	line-height: 14px;
	font-size: 11px;
	color: #838D99;
	background-color: rgba(203, 210, 219, 0.2);
	border-radius: 11px;
	display: inline-block;
	vertical-align: middle;
}
#count{
display:inline;
}
.class-confirm02 .btn-swip {
  border-bottom: 1px solid #e4e9ef;
  cursor: pointer;
}

.class-confirm02{
	margin-bottom:0px !important;
}
.class-confirm02 .btn-swip a {
  position: relative;
  display: block;
  height: 56px;
  line-height: 56px;
  padding-left: 24px; 
  font-size: 16px;
  font-weight: bold;
}
.class-confirm02 .btn-swip a:hover {
  background-color: #f7f7f7;
}
.class-confirm02 .class-date {
  border-bottom: 1px solid #e4e9ef;
  padding: 10px 0px;
 }
.class-date input{	
	border-radius: 5px;
	width: 100%;
	text-align: center;
	cursor: pointer;	
}
.dateTimeGroup {
	list-style:none;
	padding-left:0px;
}

.class-confirm03 {
	margin-top: 20px;
	margin-bottom: 20px;
	text-align: center;
}
.class-confirm03 button{
	background-color: #7bd4ac;	
	color: white;
	width: 100%;
}
.class-confirm03 button:hover{
	background-color: rgb(60, 189, 157);
	color: white;
}

#addScheduleBtn{
	width:100%;	
	background-color:#e9faf2;
	border-radius:5px;
	font-weight:bold;
	padding:7px;
	color:#66a385;
	font-size:14px;
}

.bx-wrapper{
    margin: 5px;
}

.bx-wrapper, .bx-viewport {
    height: 410px !important;
}

.bx-clone {
	display:none;
}

#partyJoinBtn{
	width:100%;	
	background-color:#e9faf2;
	border-radius:5px;
	font-weight:bold;
	padding:7px;
	color:#66a385;
	font-size:14px;
}
.result{
	font-size: 14px;
	background-color:#EBEBEB;
	padding:7px;
	margin-bottom:10px;
	border:0px;
	font-family: 'Nanum Gothic', sans-serif;
}

#scheduleJoinBtn{
    float: right;
	background-color:#e9faf2;
	border-radius:5px;
	font-weight:bold;
	padding:7px;
	margin-top:10px;
	color:#66a385;
	font-size:14px;
}

#hostInfo p{
	font-family: 'Nanum Gothic', sans-serif !important;
}

.fa-mobile-alt{
	font-size:20px;
	padding-left:3px;
	padding-right:10px;
}
.fa-envelope{
	padding-right:7px;
}

#btnInputReview,#btnInputQNA{
	font-weight:bold;
}

.text-muted{
	font-family: 'Nanum Gothic', sans-serif !important;
}

.fa-map-marker-alt{
	padding-top:2px;
	padding-left:4px;
	padding-right:11px;
}
.fa-user-friends{
	padding-top:2px;
	padding-right:6px;
}
.fa-slack-hash{
	padding-top:2px;
	padding-left:2px;
	padding-right:10px;
}
.fa-sort-amount-down{
	padding-top:2px;
	padding-left:1px;
	padding-right:9px;
}

.fa-won-sign{
	padding-top:2px;
	padding-right:8px;
}

.arrow{
	width:13px;
}
</style>

	<div class="container" id="contents">
		<div class="row">
        	<div class="col-sm-8">
				<div id="title-img">
					<ul class="bxslider">
					</ul>
				</div>
				<div class="title-text">
					<div class="title-course">
						[<c:out value="${party.cat_main}" />]
					</div>
					<div class="title-type">
						<c:out value="${party.cat_sub}" />				
						<span class="badge badge-default"></span>						
					</div>
					<div class="title-subject"><c:out value="${party.title}"/></div>
				</div>
			</div>
			
			<div class="col-sm-4">
				<div class="sub-profile">
					<div class="detail-party-info">					
						<div class="party-txt" id="hostInfo">							 
						</div>													
							<sec:authentication property="principal" var="pinfo"/>
							<sec:authorize access="isAnonymous()">
								<div class="party-btn">
									<c:if test="${(party.type).toString() eq 'C'}">
										<button id="partyJoinBtn" type="submit" class="btn btn-large">나의 클래스로 등록하기</button>
									</c:if>
									<c:if test="${(party.type).toString() eq 'M'}">
										<button id="partyJoinBtn" type="submit" class="btn btn-large">나의 모임으로 등록하기</button>
									</c:if>
								</div>
							</sec:authorize>
							
							<sec:authorize access="isAuthenticated()">
								<c:if test="${pinfo.username eq party.id }">	
									<div class="party-btn">		
										<button id="partyModyBtn" type="submit" data-oper='modify' class="btn btn-large">수정하기</button>							
									</div>
								</c:if>
								<c:if test="${pinfo.username ne party.id }">	
									<div class="party-btn">
										<c:if test="${(party.type).toString() eq 'C'}">
											<button id="partyJoinBtn" type="submit" class="btn btn-large">나의 클래스로 등록하기</button>
										</c:if>
										<c:if test="${(party.type).toString() eq 'M'}">
											<button id="partyJoinBtn" type="submit" class="btn btn-large">나의 모임으로 등록하기</button>
										</c:if>
									</div>
								</c:if>							
							</sec:authorize>	
					
					</div>
					<div class="detail-info01">
						<ul class="info-text">
							 <li class="info-location">
								<i class="fas fa-map-marker-alt"></i>
								<!-- PartyVO에 위치정보관련 칼럼 추가 후 region을 address로 수정할 것 -->
								<span>
									<c:out value="${party.address}" />
								</span> 
								<input type="hidden" id="coord_x" value="${party.coord_x}" />
								<input type="hidden" id="coord_y" value="${party.coord_y}" />
							</li>

							<li class="info-guest" id="scheduleExplainArea">
								<i class="fas fa-user-friends"></i>
								<!-- PARTY JOIN TABLE에서 참여인원 가져올 것 -->
								<div id="count">
								</div>
								<!-- PARTY JOIN TABLE에서 참여인원 가져올 것 -->							
							</li>
							<li class="info-hash" id="hashTagList">
								<i class="fab fa-slack-hash"></i>
								<!-- PARTY TABLE에서 태그 가져오기 -->
								<span>
									<c:out value="${party.tag}" />
								</span>
							</li>	
							<li class="info-sort" id="sort">
								<i class="fas fa-sort-amount-down"></i>								
								<c:if test="${(party.type).toString() eq 'C'}">
									<span>클래스-<c:out value="${party.cat_main}" />-<c:out value="${party.cat_sub}" /></span>
								</c:if>
								<c:if test="${(party.type).toString() eq 'M'}">
									<span>모임-<c:out value="${party.cat_main}" />-<c:out value="${party.cat_sub}" /></span>
								</c:if>
							</li>	
								<li class="info-price" id="price">								
								<c:if test="${(party.type).toString() eq 'C'}">
									<i class="fas fa-won-sign"></i>
									<span style="font-family: 'Nanum Gothic', sans-serif;"><c:out value="${party.price}" /> 원</span>
								</c:if>
								<c:if test="${(party.type).toString() eq 'M'}">
									<%-- <span><c:out value="${party.price}" /></span> --%>
								</c:if>
							</li>	                                           
						</ul>
					</div>
				</div>
            </div>
        </div>       
        <div class="row">
			<div class="col-sm-8">
				<div class="tabList">
					<ul class="tab">
						<li class="active" data-tab="tab1"><a rel="tab1">상세정보</a></li>
						<li data-tab="tab2"><a rel="tab2">후기</a></li>
						<li data-tab="tab3"><a rel="tab3">Q&amp;A</a></li>
						<li data-tab="tab4"><a rel="tab4">변경 및 취소</a></li>
					</ul>
			
					<div id="tab1" class="tabContent card active">
						<h4 class="card-title">상세정보</h4>
						<div class="card-body">
							<div id="introduction">${party.content}</div>						
							 <div id="map" class="container-fluid text-center bg-grey" style="width:100%;height:500px;">
							        <p style="padding-bottom: 20px; float:left; margin-top:20px; font-weight: bold;">찾아 오시는 길</p>
							        <div class="container">
							            <!-- 카카오맵 ----------------------------------------------->
							      		<div id="kakaomap" style="width: 100%;height: 500px;"></div>
							    		  <!-- 카카오맵 --->	
							        </div>
							 </div>
						</div>
					</div>
			
					<div id="tab2" class="tabContent card">
						<h4 class="card-title">후기</h4>
						<div class="card-body">
							<ul class="inputReview list-group">
								<li class="list-group-item">
									<div>
										<form id="formReview" action="/review/new" method="post">
											<textarea id="inputReview" class="textarea" name="content"></textarea>
											<button type="button" class="btn btnTA" id="btnInputReview">등록</button>
										</form>
									</div>
								</li>
							</ul>
							<ul class="reviewList list-group">
							</ul>
						</div>
					</div>
			
					<div id="tab3" class="tabContent card">
						<h4 class="card-title">Q&amp;A</h4>
						<div class="card-body">
							<ul class="insertQNA list-group">
								<li class="list-group-item">
									<div>
										<form id="formQNA" action="/QNA/new" method="post">
											<textarea id="inputQuestion" class="textarea" name="content"></textarea>
											<button type="button" class="btn btnTA" id="btnInputQNA">등록</button>
										</form>
									</div>
								</li>
							</ul>
							<ul class="QNAList list-group">
							</ul>
						</div>
					</div>
			
					<div id="tab4" class="tabContent card">
						<h4 class="card-title">변경 및 취소</h4>
						<div class="card-body">
							<ul class="tip_list" style="padding-left: 10px;">
		                        <li><strong>모임/클래스의 신청/취소/변경/환불은 참여신청 기간 내에만 가능합니다.</strong></li>
		                        <li><strong>결제한 클래스는 환불 시 결제 수단과 환불 시점에 따라 수수료가 부과될 수 있습니다.</strong></li>
		                        <li>모하지 결제서비스를 이용하는 모임은 개설자의 사업자 여부에 따라 결제증빙 발행이 가능합니다. 자세한 사항은 FAQ를 확인해 주세요.</li>
		                        <li>개설자 선정방식 또는 개설자 통장입금 방식의 모임 참여/결제 확인은 개설자에게 문의 바랍니다.</li>
		                        <li>모하지는 참여신청 및 참가비 결제 기능을 제공하는 회사로 모임/클래스 개설자(주최측)가 아닙니다. 모임/클래스 내용과 관련한 사항은 모임/클래스 개설자에게 문의 바랍니다.</li>
		                    </ul>
	                    </div>
					</div>
				</div>	
			</div>

				<div class="col-sm-4">
				<div class="sub-confirm">
					<div class="class-confirm01">
						<div class="text01">
							모임 일정 
						</div>
						<div class="text02">날짜/인원 확인 후 신청하기 버튼을 눌러주세요.</div>
					</div>									
					
					
					<div class="class-confirm02">
						<div class="class-date">
							<ul class="dateTimeGroup">								
							</ul>							
						</div>					
					</div>
					<sec:authorize access="isAuthenticated()">
	                    <sec:authentication property="principal.username" var="user_id" />
	                    	<input class="result" name="schedule_join" type="hidden" id= "${user_id}" style="width:100%;" value=${user_id }>
               		</sec:authorize>			
					
					<sec:authentication property="principal" var="pinfo"/>
					<sec:authorize access="isAuthenticated()">
						<c:if test="${pinfo.username eq party.id }">					
							<div class="class-confirm03">						
							</div>							
							<div id="addSchedule">
								<button id="addScheduleBtn" class="btn btn-large" data-oper="addSchedule">SCHEDULE 등록</button>						
							</div>
						</c:if>
						
						<c:if test="${pinfo.username ne party.id }">					
							<div class="class-confirm03">						
								<button id="scheduleJoinBtn" type="submit" class="btn btn-large">참여하기</button>		 			
							</div>							
							<div id="addSchedule">
							</div>
						</c:if>
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
						<div class="class-confirm03">						
							<button id="scheduleJoinBtn" type="submit" class="btn btn-large">참여하기</button>		 			
						</div>							
					</sec:authorize>
				</div>				
			</div>
		</div>		


	<!-- type입력 -------------------------------------------------------------------------->
	<input type="hidden" name="type" id="type" value="${party.type}">

    <sec:authentication property="principal" var="pinfo"/>

        <sec:authorize access="isAuthenticated()">
	        <c:if test="${pinfo.username eq party.id}">	        
		     	<button type="submit" data-oper='modify' class="regBtn btn btn-outline-secondary"  style="display:none">수정</button>		        
	        </c:if>
        </sec:authorize>

	<form id='operForm' action="/boad/modify" method="get">
		<input type='hidden' id='p_no' name='p_no'
			value='<c:out value="${party.p_no}"/>'>
	</form>

</div>
	
	 <!-- 스케쥴등록 Modal ------------------------------------------>
	 <div class="modal" id="myModal">
		<div class="modal-dialog">
		  <div class="modal-content">
		
			<!-- Modal Header -->
			<div class="modal-header">
			  <h4 class="modal-title">스케쥴 등록</h4>
			  <button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
	  
			<!-- Modal body -->
			<div class="modal-body">
							
				 <div class="form-group">
					 <label>날짜</label>
					 <input class="result" type="text" id="modaldate" placeholder="날짜를 선택해주세요" name="date">
				 </div>
				 <div class="form-group">
					 <label>시간</label>
					 <input class="result" type="text" id="modaltime" placeholder="시간을 선택해주세요" name="time">
				</div>	
				 <div class="form-group">
					 <label>최소 참가인원</label>
					 <input class="result" type="text" id="modal_min" placeholder="숫자만 입력해주세요" name="minPeople">
				 </div>				 
				  <div class="form-group">
					 <label>최대 참가인원</label>
						<input class="result" type="text" id="modal_max" placeholder="숫자만 입력해주세요" name="maxPeople">
				 </div>							
			</div>
	  
			<!-- Modal footer -->
			<div class="modal-footer">	      	
				 <button id="modalAddSchedulBtn" type="submit" class="btn btn-primary">등록완료</button>				 
				<button id="modalCloseBtn" type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
			</div>
			
		  </div>
		</div>
	  </div>
		  
		  
		  <!-- Modal ----->  	
	

<%@ include file="../includes/footer.jsp" %>
<script src="/resources/js/schedule.js"></script>
<script src="/resources/js/schedule_join.js"></script>
<script src="/resources/js/party_join.js"></script>
<script src="/resources/js/review.js"></script>
<script src="/resources/js/qna.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e5d55372dfb08cff48fa326451e35832&libraries=services"></script>
<script> 
// <![CDATA[ 
		
    $(document).ready(function(){  	
    	
    	var p_noValue="${party.p_no}";  // 게시글 번호
    	
    	var hostId="${party.id}";  // HOST ID
    	
    	var userId="${principal.username}";  // 로그인한 유저 ID
    
    	console.log("글 번호 : " + p_noValue);
    	console.log("호스트 ID : " + hostId);
    	console.log("로그인한 유저 ID : " + userId);   	
    	
    	 //ajaxSend시 토큰값 전달---------------------------------------------------------------	
    	var csrfHeaderName = "${_csrf.headerName}";
    	var csrfTokenValue = "${_csrf.token}";
    	$(document).ajaxSend(function(e, xhr, options) {
    		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
    	});
    	//ajaxSend시 토큰값 전달---------------------------------------------------------------	
    	
    	//이미지 데이터 가져오는 부분
    	(function(){
	    	$.ajax({
	    		type : "get",
	    		url : "/board/getAttachList",
	    		data : {p_no:p_noValue},
	    		dataType : "json",
	    		async: false,
	    		success : function(arr){
	    			console.log(arr);
	    	    	
	        		
	        		var str = "";
	        		
	        		if(!arr.length){
	        			str += "	<li>";
	        			str += "		<div style='width:700px; height:400px; display:flex; align-items:center; overflow:hidden;'>";
	        			str += "			<img src='/resources/img/default_thumbnail.png' style='display:block; margin:auto;'>";
	        			str += "		</div>";
	        			str += "	</li>";
	        		} else {
	        			$(arr).each(function(i,attach){
	            			var fileCallPath = encodeURIComponent( attach.uploadPath +"/"+ attach.uuid +"_"+ attach.fileName);
	            			console.log(attach);
	        	    			str += "	<li>";
	        	    			str += "		<div style='width:700px; height:400px; display:flex; align-items:center; overflow:hidden;'>";
	        	    			str += "			<img src='/display?fileName=" + fileCallPath + "' style='display:block; margin:auto; max-height:100%; width:auto;'>";
	        	    			str += "		</div>";
	        	    			str += "	</li>";
	            		});
	        		}
	        		
	        		$(".bxslider").html(str);
	    		}
	    	});		// end ajax
    	})();		// end function
    	
    	
		//bxslider
		$(function(){
  			$('.bxslider').bxSlider({
  				slideWidth:720,
  				pager:true,
  				touchEnabled:false,
  				infiniteLoop:false,
  				hideControlOnEnd:true
  			});
		});
    	
		//tabList
		$(function() {
			$('ul.tab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('active');
				$('.tabContent').removeClass('active');
				$(this).addClass('active');
				$('#' + activeTab).addClass('active');
			})
		}); 		
	
		 //nav 상단고정
		 $(function() {
                $(window).scroll(function() {
                    if ($(this).scrollTop() >= 120) {
                        $('.navbar').addClass('fixed-top');

                    } else {
                        $('.navbar').removeClass('fixed-top');
                    }
                });
        });
		  //to top 버튼
		  $( window ).scroll( function() {
                if ( $( this ).scrollTop() > 200 ) {
                    $( '#top-btn' ).fadeIn();
                } else {
                    $( '#top-btn' ).fadeOut();
                }
                } );
                $( '#top-btn' ).click( function() {
                $( 'html, body' ).animate( { scrollTop : 0 }, 400 );
                return false;
                } );	


		//스케줄등록버튼 눌렀을때 모달 띄우기
		$('#addScheduleBtn').on("click", function(e){
			$(".modal").modal("show");
		});	
			
			//modaldatpicker
		$(function () {
			$('#modaldate').bootstrapMaterialDatePicker({
				time: false
			});
		});
		//modaltimepicker
		$(function () {
			$('#modaltime').bootstrapMaterialDatePicker({
				date: false,
				format: 'HH:mm'
			});
		});	

		// 스케쥴 목록 출력 		
		
		var scheduleUL = $(".dateTimeGroup");

		
		showScheduleList();
		
		function showScheduleList(){
			scheduleService.getList({p_no:p_noValue}, function(list){
				console.log("왔니??");
				var str="";
				if(list == null || list.length ==0){
					scheduleUL.html("");
					console.log("목록없음")
					return;
				}
				for (var i = 0, len = list.length || 0; i < len; i++){
					// 스케쥴 목록 출력 시 참가 인원 같이 출력하도록.
					var s_noValue = list[i].s_no;
					var participantsCount = 0;
					console.log("여기!!! s_no : " + s_noValue);
					schedule_joinService.count(s_noValue, function(count){
						console.log(s_noValue + "참가 인원 : " + count);
						participantsCount = count;
						console.log(participantsCount);
					});
					////////////////////////////////
					str+="<li class='left clearfix' name='li_result' data-s_no='"+list[i].s_no+"'>";						
					str+=" <input class='result' name='result' type='button' s_no='"+list[i].s_no+"' value='날짜 : "+((list[i].s_date).toString()).substring(0,10)+" 시간 :"+((list[i].s_time).toString()).substring(10,16)+" 인원현황: " + participantsCount + "/"+list[i].max_people+"'>";
					str+="</li>";
				}
				scheduleUL.html(str);
			});//end function				

		};//end showScheduleList		
		
	// 모임장 정보 불러오기	
		var usersService= (function(){
			function read(id, callback, error){
				$.get("/users/read/" + id + ".json", function(result){
					if(callback){
						callback(result);
					}
				}).fail(function(xhr, status, err){
					if(error){
						error();
					}
				});
			};
			return {						
				read : read,			
				};
		})();	
		
		
		//모임장 정보 출력
		var hostInfoDiv = $("#hostInfo");
		showHostInfo();
		function showHostInfo(){
			// console.log("=========여여여여영여여=====hostId: "+hostId);
			usersService.read(hostId, function(read){				
				var str="";
				console.log(read);
				if(read == null || read.length ==0){
					hostInfoDiv.html("");
					return;
				}else{
					str += "<div id='party-txt01'> 모임장 : " + read.nickname + "(" + read.id + ")</div>";
					str += "<div id='party-txt02'>";	
					str += "	<p><i class='far fa-envelope'></i>" + read.email + "</p>";
					str += "	<p><i class='fas fa-mobile-alt'></i>" + read.phone + "</p>";
					str += "</div>";
				}							
			
				hostInfoDiv.html(str);
			});
		};
			
			
	//등록회원 카운트  	
			
			var countDiv = $("#count");
			
			showCount();
			 function showCount(){					
				 var str="";
				 var Count = 0;
				console.log(" p_no : " + p_noValue);
				party_joinService.count(p_noValue, function(count){
					console.log(p_noValue + "모임 등록 인원 : " + count);
						Count=count;
					if(count == null || count.length ==0){
						countDiv.html("");
						return;
					}else{
					str += "<span>"+Count+"명</span> "	;						 
					}
					countDiv.html(str);	
					
				});				 
			 };			
			
			// 스케쥴 input버튼 눌렀을때 (스케쥴 날짜 시간 선택버튼)		
		
			var schedule_join = {};
			
			$(document).on("click", "input[name='result']", function(e){						
				var s_no = $(this).attr("s_no");			
			    var id = $("input[name='schedule_join']").attr("id"); 
			  /* 	var userid=$("input[name='schedule_join']"); */
			 
				console.log("s_no============"+s_no+"id================ "+id); 				
					
			  	schedule_join.s_no = s_no;
			  	schedule_join.id = id;
			  	console.log("schedule join : " + schedule_join);
		
				console.log("schedule_join.s_no : "+ schedule_join.s_no+"schedule_join.id : "+schedule_join.id);			
									
			});
			
			//참여하기버튼 클릭시 이벤트
			$("#scheduleJoinBtn").on("click", function(e){				
				 var id = $("input[name='schedule_join']").attr("id"); 
				if(id==null || id.lengh==0){
					/* alert("로그인 후 이용해주세요"); */
					swal("Notice","로그인 후 이용해주세요");
				}else if((id !=null || id.lengh != 0) && (schedule_join.s_no==null||(schedule_join.s_no).lengh == 0)){
					
					/* alert("일정을 선택해주세요") */
					swal("Notice","일정을 선택해주세요");
				}else{
					schedule_joinService.add(schedule_join, function(){
					/* alert("참여 되었습니다."); */
					swal("Notice","참여 되었습니다.");
					
					showScheduleList();	
					
				}, function(){
					/* alert("해당 일정에는 이미 참여신청을 하였습니다."); */
					swal("Notice","해당 일정에는 이미 참여신청을 하였습니다.");
				});
				};
			});

		
			//모달의 add스케쥴버튼 눌렀을때	
			var modal = $(".modal");
			var modalInputS_date = modal.find("input[name='date']");
			var modalInputS_time = modal.find("input[name='time']");
			var modalInputS_minPeople = modal.find("input[name='minPeople']");
			var modalInputS_maxPeople = modal.find("input[name='maxPeople']");
		
			
		
				$('#modalAddSchedulBtn').on("click",function(e){
					var schedule = {
							s_date: modalInputS_date.val(),
							s_time: modalInputS_time.val(),
							min_people:modalInputS_minPeople.val(), 
							max_people:modalInputS_maxPeople.val(), 
							p_no:p_noValue
							
					};
					console.log(schedule);

					scheduleService.add(schedule, function(){
						
						/* alert("등록되었습니다"); */
						swal("Notice","등록되었습니다");
					
						modal.find("input").val("");
						modal.modal("hide");
					
						showScheduleList();
					});
				});
				
				//파티조인버튼 눌렀을때 (나의 모임에 등록하기버튼)
				var partyType = "${party.type}";
				$("#partyJoinBtn").on("click", function(e){
					var id = $("input[name='schedule_join']").attr("id"); 
					var party_join = {
							id: id,
							p_no:p_noValue
					};
					console.log(party_join);
					if(party_join.id==null){
						/* alert("로그인 해주세요"); */
						swal("Notice","로그인 후 이용해주세요");
					}else{
						party_joinService.add(party_join, function(){
							if(partyType == "M"){
								/* alert("나의 모임에 등록 되었습니다."); */
								swal("Notice","나의 모임에 등록 되었습니다.");
							}else if(partyType == "C"){
								/* alert("나의 클래스에 등록 되었습니다."); */
								swal("Notice","나의 클래스에 등록 되었습니다.");
							}

							showCount();
						
					}, function(){
						if(partyType == "M"){
							/* alert("이미 가입된 모임입니다."); */
							swal("Notice","이미 가입된 모임입니다.");
						}else if(partyType == "C"){
							/* alert("이미 가입된 클래스입니다."); */
							swal("Notice","이미 가입된 클래스입니다.");
						}
					});
					};
					
				})
					
			
		// review list START
		
		var reviewUL = $(".reviewList");
			
		showReviewList();
			
			function showReviewList(){
				
				reviewService.getList({p_no:p_noValue}, function(list){
					
					console.log("list : " + list);
					console.log(list);
					
					var str="";
					if(list == null || list.length == 0){
						
						return;
					}
					
					for(var i = 0, len = list.length || 0 ; i < len ; i++) {
						console.log(list[i]);
						str += "<li class='left clearfix list-group-item' data-r_no='" + list[i].r_no + "'>";
						str += "	<div>";
						str += "		<div class='header'>";
						str += "		<input type='hidden' value='" + list[i].id + "'>";
						str += "			<strong>" + list[i].nickname + "</strong>";
						str += "			<small class='text-muted'>" + reviewService.displayTime(list[i].regdate) + "</small>";
						if(list[i].id == userId){
							str += "			<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='removeReview' data-r_no='" + list[i].r_no + "'>삭제</a>";
							str += "			<span class='float-right text-muted'>|</span>";
							str += "			<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='modifyReview' data-r_no='" + list[i].r_no + "'>수정</a>";
						}
						str += "		</div>";
						str += "		<input name='content' type='hidden' value='" + list[i].content + "'>";
						str += "		<p name='content' style='margin:0;margin-top:10px;'>" + list[i].content + "</p>";
						str += "	</div>";
						str += "</li>"
					}
					
					reviewUL.html(str);
					
				})
			}
			// review list END
			
			
			
		// add review START
		var inputReview = $("#formReview");
		
		var inputReviewContent = inputReview.find("textarea[name='content']");  // review content
		
		var btnInputReview = $("#btnInputReview");
		
		
		btnInputReview.on("click", function(){
			
			if(!userId) {
				
				confirm("로그인 후 이용해주세요.");
				
				$('#inputReview').val('');
				
				return;
				
			} else {
				console.log(inputReviewContent.val());
				
				var review = {};
				
				review.id = userId;
				review.p_no = p_noValue;
				review.content = inputReviewContent.val();
				
				console.log(review);
				reviewService.add(review, function(result){
									
					$('#inputReview').val('');
					
					showReviewList();
				});
			}
		});
		// add review END
				
		
		
		// modify review START
		$(".reviewList").on("click", "#modifyReview", function(){
			
			var r_no = $(this).data("r_no");
			
			console.log(r_no);
			
			var modifyReview = reviewUL.find("li[data-r_no='" + r_no + "']");
			var modifyReviewContent = modifyReview.find("input[name='content']");
			
			console.log(modifyReviewContent.val());
			
			var str = "";
			
			str += "<li class='list-group-item'>";
			str += "	<div>";
			str += "		<form class='form' action='/review/r_no' method='post'>";
			str += "			<textarea class='textarea' name='contentModify'>" + modifyReviewContent.val() + "</textarea>";
			str += "			<button type='button' class='btn btnTA' id='btnModifyReview' data-r_no='" + r_no + "'>수정</button>";
			str += "		</form>";
			str += "	</div>";
			str += "</li>";
			
			
			modifyReview.html(str);
						
		});
		
		$(".reviewList").on("click", "#btnModifyReview", function(){
			
			var r_no = $(this).data("r_no");
			console.log(r_no);
			
			var modifyReview = $(".reviewList");
			var modifyReviewContent = modifyReview.find("textarea[name='contentModify']");
			console.log(modifyReviewContent.val());
			
			var review = {
					content: modifyReviewContent.val(),
					r_no: r_no
			};
			console.log(review);
					
			reviewService.modify(review, function(result){
								
				showReviewList();
			});
		});
		// modify review END
		
		
		
		// remove review START
		$(".reviewList").on("click", "#removeReview", function(){
			
			var r_no = $(this).data("r_no");
			
			console.log(r_no);
						
			if(confirm("작성한 댓글을 삭제하시겠습니까?") == true){
				reviewService.remove(r_no, function(result){
					
					showReviewList();
				});			
			} else {
				return;
			}
			
		});
		// remove review END
		
		
		
		
		//QNA
		
		// QNA List START
		var QNAUL = $(".QNAList");
		
		showQNAList();
			
			function showQNAList(){
				
				qnaService.getList({p_no:p_noValue}, function(list){
					
					console.log("list : " + list);
					console.log(list);
					
					var str="";
					if(list == null || list.length == 0){
						
						return;
					}
					
					for(var i = 0, len = list.length || 0 ; i < len ; i++) {
						console.log(list[i]);
						str += "<li class='left clearfix list-group-item' data-q_no='" + list[i].q_no + "'>";
						str += "	<div id='question'>";
						str += "		<div class='header'>";
						str += "		<input type='hidden' value='" + list[i].id + "'>";
						str += "			<strong>" + list[i].nickname + "</strong>";
						str += "			<small class='text-muted'>" + qnaService.displayTime(list[i].q_regdate) + "</small>";
						if (hostId == userId && list[i].answer == null){
							str += "			<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='registerAnswer' data-q_no='" + list[i].q_no + "'>답글</a>";
						}
						if (list[i].id == userId){
							str += "			<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='removeQuestion' data-q_no='" + list[i].q_no + "'>삭제</a>";
							str += "			<span class='float-right text-muted'>|</span>";
							str += "			<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='modifyQuestion' data-q_no='" + list[i].q_no + "'>수정</a>";
						}
						str += "		</div>";
						str += "		<input name='question' type='hidden' value='" + list[i].question + "'>";
						str += "		<p name='content' style='margin-bottom=10px;'>" + list[i].question + "</p>";
						str += "	</div>";
						if (list[i].answer != null) {
							str += "		<div id='answer'>";
							str += "			<div class='header'>";
							str += "				<img src='/resources/img/arrow.png' class='arrow'/>";
							str += "				<strong>HOST</strong>";
							str += "				<small class='text-muted'>" + qnaService.displayTime(list[i].a_regdate) + "</small>";
							if (hostId == userId){
								str += "				<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='removeAnswer' data-q_no='" + list[i].q_no + "'>삭제</a>";
								str += "				<span class='float-right text-muted'>|</span>";
								str += "				<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='modifyAnswer' data-q_no='" + list[i].q_no + "'>수정</a>";
							}
	 						str += "			</div>";
							str += "			<input name='answer' type='hidden' value='" + list[i].answer + "'>";
							str += "			<p name='content' style='margin-bottom=10px;'>" + list[i].answer + "</p>";
							str += "		</div>";
						}
						str += "</li>"
					}
					
					QNAUL.html(str);
					
				})
			}
		// QNA List END
		
		
		// add QNA START
		var inputQNA = $("#formQNA");
		
		var inputQNAQuestion = inputQNA.find("textarea[name='content']");  // review content
		
		var btnInputQNA = $("#btnInputQNA");
		
		
		btnInputQNA.on("click", function(){
			
			if(!userId) {
			
				confirm("로그인 후 이용해주세요.");
				
				$('#inputQuestion').val('');
				
				return;
				
			} else {
			
				console.log(inputQNAQuestion.val());
				
				var qna = {};
				
				qna.id = userId;
				qna.p_no = p_noValue;
				qna.question = inputQNAQuestion.val();
				
				console.log(qna);
				qnaService.add(qna, function(result){
									
					$('#inputQuestion').val('');
					
					showQNAList();
				});
			}
		});
		// add QNA END
		
		
		// modify QNA Question START
		$(".QNAList").on("click", "#modifyQuestion", function(){
			
			var q_no = $(this).data("q_no");
			
			console.log(q_no);
			
			var modifyQNA = QNAUL.find("li[data-q_no='" + q_no + "']");
			var modifyQNAQuestion = modifyQNA.find("input[name='question']");
			
			console.log(modifyQNAQuestion.val());
			
			var str = "";
			
			str += "<li class='list-group-item' data-q_no='" + q_no + "'>";
			str += "	<div id='question'>";
			str += "		<form class='form' action='/QNA/modifyQuestion/q_no' method='post'>";
			str += "			<textarea class='textarea' name='contentModify'>" + modifyQNAQuestion.val() + "</textarea>";
			str += "			<button type='button' class='btn btnTA' id='btnModifyQuestion' data-q_no='" + q_no + "'>수정</button>";
			str += "		</form>";
			str += "	</div>";
/* 			if (list[i].answer != null) {
				str += "		<div id='answer'>";
				str += "			<div class='header'>";
				str += "				<i class='fas fa-share'></i>";
				str += "				<strong>HOST</strong>";
				str += "				<small class='text-muted'>" + qnaService.displayTime(list[i].a_regdate) + "</small>";
				str += "				<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='removeAnswer' data-q_no='" + list[i].q_no + "'>삭제</a>";
				str += "				<span class='float-right text-muted'>|</span>";
				str += "				<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='modifyAnswer' data-q_no='" + list[i].q_no + "'>수정</a>";
				str += "			</div>";
				str += "			<input name='answer' value='" + list[i].answer + "' style='border:0px;padding-left:20px;' readonly='readonly'>";
				str += "		</div>";
			}
 */			str += "</li>"
			modifyQNA.html(str);
						
		});
		
		$(".QNAList").on("click", "#btnModifyQuestion", function(){
			
			var q_no = $(this).data("q_no");
			console.log(q_no);
			
			var modifyQNA = $(".QNAList");
			var modifyQNAQuestion = modifyQNA.find("textarea[name='contentModify']");
			console.log(modifyQNAQuestion.val());
			
			var qna = {
					question: modifyQNAQuestion.val(),
					q_no: q_no
			};
			console.log(qna);
					
			qnaService.modifyQuestion(qna, function(result){
								
				showQNAList();
			});
		});
		// modify QNA Question END		
				
		
		// register QNA Answer START
		
		$(".QNAList").on("click", "#registerAnswer", function(){
			
			var q_no = $(this).data("q_no");
			
			console.log(q_no);
			
			var modifyQNA = QNAUL.find("li[data-q_no='" + q_no + "']");
			
			str = "";
			
			str += "	<div id='answer'>";
			str += "		<form class='form' action='/QNA/q_no' method='post'>";
			str += "			<textarea class='textarea' name='answer'></textarea>";
			str += "			<button type='button' class='btn btnTA' id='btnRegisterAnswer' data-q_no='" + q_no + "'>등록</button>";
			str += "		</form>";
			str += "	</div>";
			
			modifyQNA.append(str);
		});
		
		$(".QNAList").on("click", "#btnRegisterAnswer", function(){
			
			var q_no = $(this).data("q_no");
			console.log(q_no);
			
			var modifyQNA = $(".QNAList");
			var modifyQNAAnswer = modifyQNA.find("textarea[name='answer']");
			console.log(modifyQNAAnswer.val());
			
			var qna = {
					answer: modifyQNAAnswer.val(),
					q_no: q_no
			};
			console.log(qna);
			
			qnaService.modifyAnswer(qna, function(result){
								
				showQNAList();
			});
		});
		// register QNA Answer END
		
		
		// modify QNA Answer START
		$(".QNAList").on("click", "#modifyAnswer", function(){
			
			var q_no = $(this).data("q_no");
			
			console.log(q_no);
			
			var modifyQNA = QNAUL.find("li[data-q_no='" + q_no + "']");
			var modifyQNAAnswer = modifyQNA.find("input[name='answer']");
			
			console.log(modifyQNAAnswer.val());
			
			var str = "";
			
			str += "<li class='list-group-item' data-q_no='" + q_no + "'>";
			str += "	<div id='question'>";
			str += "		<form class='form' action='/QNA/modifyAnswer/q_no' method='post'>";
			str += "			<textarea class='textarea' name='contentModify'>" + modifyQNAAnswer.val() + "</textarea>";
			str += "			<button type='button' class='btn btnTA' id='btnModifyAnswer' data-q_no='" + q_no + "'>수정</button>";
			str += "		</form>";
			str += "	</div>";
/* 			if (list[i].answer != null) {
				str += "		<div id='answer'>";
				str += "			<div class='header'>";
				str += "				<i class='fas fa-share'></i>";
				str += "				<strong>HOST</strong>";
				str += "				<small class='text-muted'>" + qnaService.displayTime(list[i].a_regdate) + "</small>";
				str += "				<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='removeAnswer' data-q_no='" + list[i].q_no + "'>삭제</a>";
				str += "				<span class='float-right text-muted'>|</span>";
				str += "				<a href='#' onclick='return false' class='float-right text-muted' style='text-decoration:none' id='modifyAnswer' data-q_no='" + list[i].q_no + "'>수정</a>";
				str += "			</div>";
				str += "			<input name='answer' value='" + list[i].answer + "' style='border:0px;padding-left:20px;' readonly='readonly'>";
				str += "		</div>";
			}
 */			str += "</li>"
 
			modifyQNA.html(str);
						
		});
		
		$(".QNAList").on("click", "#btnModifyAnswer", function(){
			
			var q_no = $(this).data("q_no");
			console.log(q_no);
			
			var modifyQNA = $(".QNAList");
			var modifyQNAAnswer = modifyQNA.find("textarea[name='contentModify']");
			console.log(modifyQNAAnswer.val());
			
			var qna = {
					answer: modifyQNAAnswer.val(),
					q_no: q_no
			};
			console.log(qna);
					
			qnaService.modifyAnswer(qna, function(result){
								
				showQNAList();
			});
		});
		// modify QNA Answer END
		
		
		// remove QNA Answer START
		$(".QNAList").on("click", "#removeAnswer", function(){
			
			var q_no = $(this).data("q_no");
			
			console.log(q_no);
			
			var qna = {
					q_no: q_no
			};
			
			console.log(qna);
			
			if(confirm("작성한 답글을 삭제하시겠습니까?") == true) {
				qnaService.removeAnswer(qna, function(result){
					
					showQNAList();
				});
			} else {
				return;
			}
			
		});
		// remove QNA Answer END
		
		
		// remove QNA Question START
		$(".QNAList").on("click", "#removeQuestion", function(){
			
			var q_no = $(this).data("q_no");
			
			console.log(q_no);
			
			if(confirm("작성한 질문을 삭제하시겠습니까?") == true) {
				qnaService.removeQuestion(q_no, function(result){
									
					showQNAList();
				});
			} else {
				return;
			}
		});
		// remove QNA Question END
		
		
		//카카오맵
		// 읽어온 x, y좌표를 이용
		var coord_x = $("#coord_x").val();
		var coord_y = $("#coord_y").val();
		var coords = new daum.maps.LatLng(coord_y, coord_x);

		console.log("coord_x:" +coord_x+"coord_y:"+coord_y);
	          var mapContainer = document.getElementById('kakaomap'), // 지도를 표시할 div 
	           mapOption = { 
	                  center: coords, // 지도의 중심좌표
	                  level: 3 // 지도의 확대 레벨
	              };

	          var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	          // 마커가 표시될 위치입니다 
	          var markerPosition  = coords; 

	          // 마커를 생성합니다
	          var marker = new daum.maps.Marker({
	              position: markerPosition
	          });

	          // 마커가 지도 위에 표시되도록 설정합니다
	          marker.setMap(map);	     

	}); 			
    //]]>
 </script>
 
 

<script>
$(document).ready(function() {
  
  var operForm = $("#operForm"); 
  
  $("button[data-oper='modify']").on("click", function(e){
    
    operForm.attr("action","/board/modify").submit();
    
  });

});
</script>  