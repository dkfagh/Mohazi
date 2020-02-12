<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>


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
font-size: 16px;
margin-bottom: 2px;
color: #6a82ec;
float: left;
padding-right: 5px;
}
.title-type {
font-size: 16px;
margin-bottom: 2px;
color: #96969d;
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
.detail-party-info .party-img {
  position: absolute;
  top: 20px;
  left: 20px;
  width: 70px;
  height: 70px;
  border-radius: 50%;
  background-color: #ebebeb;
}
.detail-party-info .party-img .img {
  width: 100%;
  height: 100%;
  background-position: center center;
  background-size: cover;
  overflow: hidden;
  border-radius: 50%;
}
.detail-party-info .party-txt {
  padding-left: 90px;
}
#party-txt01 {
  font-size: 20px;
  font-weight: bold;
}
#party-txt02 {
  margin-top: 6px;
  font-size: 15px;
  line-height: 22px;
  word-break: keep-all;
  height: 200px;
  white-space: pre-line;
  overflow-y: scroll;
}

#party-txt03 a {
  display: inline-block;
  color: #FF5862;
  font-size: 15px;
  line-height: 18px; 
  height: 18px;
  padding-right: 15px;
  background-image: url(../image/icon/more_12_red.svg);
  background-position: right center;
  background-repeat: no-repeat;
  background-size: 12px 12px;
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
.detail-info01 i{	
	margin-right: 30px;
}
.detail-info01 span{	
	font-size: 16px;
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
}
/* Style the tab content */
.tabContent {
	display: none;	
	padding: 6px 12px;
	
	
}
ul.tab li.active{
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
.class-confirm01 {
  padding: 25px;
  border-bottom: 1px solid #e4e9ef;
}
.class-confirm01 .text01 {
  font-size: 18px;
  font-weight: bold;
}
.class-confirm01 .text01 .badge {
  margin-top: 3px;
  vertical-align: top;
}
.class-confirm01 .text02 {
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
.class-confirm02 .btn-swip {
  border-bottom: 1px solid #e4e9ef;
  cursor: pointer;
}
.class-confirm02 .btn-swip a {
  position: relative;
  display: block;
  height: 56px;
  line-height: 56px;
  padding-left: 54px;
  font-size: 16px;
}
.class-confirm02 .btn-swip a:hover {
  background-color: #f7f7f7;
}
.class-confirm02 .btn-swip a:before {
  position: absolute;
  top: 18px;
  left: 24px;
  display: block;
  width: 20px;
  height: 20px;
  content: "";
}
.class-confirm02 .btn-swip a:after {
  position: absolute;
  top: 18px;
  right: 30px;
  display: block;
  width: 20px;
  height: 20px;
  content: "";
  background-image: url(../image/icon_arrow_bottom.png);
}
.class-confirm02 .btn-swip.open a:after {
  background-image: url(../image/icon_arrow_top.png);
}
.class-confirm02 .swip-date a:before {
  background-image: url(../image/icon/ic_calendar_gray.svg);
  background-size: 20px 20px;
}
.class-confirm02 .swip-time a:before {
  background-image: url(../image/icon/ic_time_gray.svg);
  background-size: 20px 20px;
}
.class-confirm02 .class-date {
  border-bottom: 1px solid #e4e9ef;
  padding: 10px 0 30px;
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
.dateTimeGroup p{	
	
	font-size: 15px;
	margin-left: 10px;
	margin-bottom: 10px
}
.class-confirm02 .class-time {
  padding: 0;
  display: none;
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
	background-color: #7bd4ac;	
	color: white;
}

#addScheduleBtn:hover{
	background-color: rgb(60, 189, 157);
	color: white;
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
						[<c:out value="${party.p_no}" />]
					</div>
					<div class="title-type">
						<c:out value="${party.cat_sub}" />				
						<span class="badge badge-default">3,000원 추가할인</span>						
					</div>
					<div class="title-subject">[<c:out value="${party.title}"/>]</div>
				</div>
			</div>
			
			<div class="col-sm-4">
				<div class="sub-profile">
					<div class="detail-party-info">
						<div class="party-img" id="authorProfileImgArea">
							<div class="img"></div>
						</div>
						<div class="party-txt">
							<div id="party-txt01"><c:out value="${party.id}" /></div>
							<div id="party-txt02">매일매일 달콤한 파티가 열리는곳 어썸블리스로 여러분을 초대합니다. </div>
							<div id="party-txt03">
								<a href="#">모임장 프로필</a>
							</div>
						</div>
					</div>
					<div class="detail-info01">
						<ul class="info-text">
							 <li class="info-location">
								<i class="fas fa-map-marker-alt"></i>
								<!-- PartyVO에 위치정보관련 칼럼 추가 후 region을 address로 수정할 것 -->
								<span><c:out value="${party.address}" /></span> 
							</li>

							<li class="info-guest" id="scheduleExplainArea">
								<i class="fas fa-user-friends"></i>
								<!-- PARTY JOIN TABLE에서 참여인원 가져올 것 -->
								<span><c:out value="${party_join.p_no}" /></span>
							</li>
							<li class="info-hash" id="hashTagList">
								<i class="fab fa-slack-hash"></i>
								<!-- PARTY TABLE에서 태그 가져오기 -->
								<span><c:out value="${party.tag}" /></span>
							</li>	
							<li class="info-sort" id="sort">
								<i class="fas fa-sort-amount-down"></i>
								<span><c:out value="${party.type}" />-<c:out value="${party.cat_main}" />-<c:out value="${party.cat_sub}" /></span>
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
			
					<div id="tab1" class="tabContent active">
						<h4>상세정보</h4>
						<p id="introduction">${party.content}"</p>
						<div id="map" style="width:100%;height:400px;"></div>					
					</div>
			
					<div id="tab2" class="tabContent">
						<h4>후기</h4>
						<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
					</div>
			
					<div id="tab3" class="tabContent">
						<h4>Q&amp;A</h4>
						<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
					</div>
			
					<div id="tab4" class="tabContent">
						<h4>변경 및 취소</h4>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
					</div>
				</div>	
			</div>

				<div class="col-sm-4">
				<div class="sub-confirm">
					<div class="class-confirm01">
						<div class="text01">
							모임 일정 
							<span class="badge badge-primary">
								원데이			
								
							</span>
						</div>
						<div class="text02">일정 참가 인원수 확인 후 신청하기 버튼을 눌러주세요.</div>
					</div>									
					
					<div class="class-confirm02">
						<div class="btn-swip swip-date closed schedule-date-trigger" id="btn-date">
							<a>일정 확인</a>
						</div>
						<div class="class-date">
							<ul class="dateTimeGroup">
								<%-- <p><c:out value="${schedule.s_date}" />날짜</p> --%>
								<%-- <li class="left clearfix" data-s_no='1'>
									<input class="result" type="button" id="date" value="날짜 :${schedule.s_date} 시간:${schedule.s_time} 참가인원현황:">
									<input class="result" type="button" id="date" value="날짜 :${schedule.s_date} 시간:${schedule.s_time} 참가인원현황:">
									<input class="result" type="button" id="date" value="날짜 :${schedule.s_date} 시간:${schedule.s_time} 참가인원현황:">
								</li> --%>
							</ul>							
						</div>
						<%-- <div class="class-date">
							<div  class="dateTimeGroup">
								<p><c:out value="${schedule.s_date}" />날짜</p>
								<input class="result" type="button" id="date" value="${schedule.s_time}">
								<input class="result" type="button" id="date" value="${schedule.s_time}">
								<input class="result" type="button" id="date" value="${schedule.s_time}">
							</div>							
						</div> --%>
					</div>
					
					<div class="class-confirm03">
						<button type="button" class="btn">신청하기</button>
					</div>
					<div id="addSchedule">
						<button id="addScheduleBtn" class="btn btn-large" data-oper="addSchedule">SCHEDULE 등록</button>						
					</div>
				</div>				
			</div>
		</div>		
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
<script type="text/javascript" src="/resources/js/schedule.js"></script>
<script type="text/javascript"> 
// <![CDATA[ 
		
    $(document).ready(function(){  	
    	
    	//이미지 데이터 가져오는 부분
    	(function(){
    		
    	var p_no='<c:out value="${party.p_no}"/>';    	
    	
    	$.getJSON("/board/getAttachList", {p_no:p_no},function(arr){
    		
    		console.log(arr);
    	
    		
    		var str = "";
    		
    		$(arr).each(function(i,attach){
    			var fileCallPath = encodeURIComponent( attach.uploadPath +"/"+ attach.uuid +"_"+ attach.fileName);
    			str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
    			str +="<img src='/display?fileName="+fileCallPath+"'>";
    			str +="</div>";
    			str +"</li>";    			
    		});
    		
    		$(".bxslider").html(str);
    		
    		});//end getjson
    	})();//end function
    	
    	
		//bxslider
		$(function(){
  			$('.bxslider').bxSlider();
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
		// datepicker 토글
		// $(function(){
		//	$('#btn-date').click(function(){
		//		$('.class-date').toggle("slow");
		//	});
		// });
		//timepicker 토글
		// $(function(){
		//	$('#btn-time').click(function(){
		//	$('.class-time').toggle("slow");
		//	});
	    //   });

		// //datpicker
		// $(function () {
		// 	$('#date').bootstrapMaterialDatePicker({
		// 		time: false
		// 	});
		// });
		// // //timepicker
		// $(function () {
		// 	$('#time').bootstrapMaterialDatePicker({
		// 		date: false,
		// 		format: 'HH:mm'
		// 	});
		// });
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
			var p_noValue='<c:out value="${party.p_no}"/>';

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
		
		var p_noValue = '<c:out value="${party.p_no}"/>';
		var scheduleUL = $(".dateTimeGroup")
		
		showList();
		
			function showList(){
				scheduleService.getList({p_no:p_noValue}, function(list){
					var str=""
					if(list == null || list.length ==0){
						scheduleUL.html("");
						
						return;
					}
					for (var i = 0, len = list.length || 0; i < len; i++){
						str+="<li class='left clearfix' data-s_no='"+list[i].s_no+"'>";
						str+=" <input class='result' type='button' id='date' value='날짜 :"+list[i].s_date+"시간:" +list[i].s_time+"참가인원현황:"+list[i].max_people+"'>";
						str+="</li>";
					}
					scheduleUL.html(str);
				});//end function
			}//end showList		
			
		
			//모달의 add스케쥴버튼 눌렀을때	
			var modal = $(".modal");
			var modalInputS_date = modal.find("input[name='date']");
			var modalInputS_time = modal.find("input[name='time']");
		
			
		
				$('#modalAddSchedulBtn').on("click",function(e){
					var schedule = {
							s_date: modalInputS_date.val(),
							s_time: modalInputS_time.val(),
							p_no:p_noValue
							
					};

					scheduleService.add(schedule, function(){
						
						alert("등록되었습니다");
					
						modal.find("input").val("");
						modal.modal("hide");
					
						showList();			

					});
				});

			

	}); 
    //]]>
 </script>
