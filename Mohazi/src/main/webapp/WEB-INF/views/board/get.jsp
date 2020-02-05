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
  display: none;
}
.class-date input, .class-time input{
	border-radius: 5px;
	width: 100%;
	text-align: center;
	cursor: pointer;
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
#top-btn {    
    position: fixed;
    right: 15%;
    bottom: 70px;
    display: none;
}


</style>

	<div class="container" id="contents">
		<div class="row">
        	<div class="col-sm-8">
				<div id="title-img">
					<ul class="bxslider">
						<li><img src="images/itzy.jpg" /></li>
						<li><img src="images/sunmi.jpg" /></li>
						<li><img src="images/image.png" /></li>
					</ul>
				</div>
				<div class="title-text">
					<div class="title-course">
						[원데이]
					</div>
					<div class="title-type">
						마카롱 ∙ 다쿠아즈					
						<span class="badge badge-default">3,000원 추가할인</span>						
					</div>
					<div class="title-subject">[꾸덕,쫀득 저세상텐션 마카롱 원데이클래스-뚝섬역,어썸블리스]</div>
				</div>
			</div>
			
			<div class="col-sm-4">
				<div class="sub-profile">
					<div class="detail-party-info">
						<div class="party-img" id="authorProfileImgArea">
							<div class="img"></div>
						</div>
						<div class="party-txt">
							<div id="party-txt01">어썸블리스</div>
							<div id="party-txt02">매일매일 달콤한 파티가 열리는곳 어썸블리스로 여러분을 초대합니다. </div>
							<div id="party-txt03">
								<a href="#">모임장 프로필</a>
							</div>
						</div>
					</div>
					<div class="detail-info01">
						<ul class="info-text">
							<%-- <li class="info-location">
								<i class="fas fa-map-marker-alt"></i>
								<!-- PartyVO에 위치정보관련 칼럼 추가 후 region을 address로 수정할 것 -->
								<span><c:out value="${party.region}" /></span>
							</li> --%>
							<li class="info-guest" id="scheduleExplainArea">
								<i class="fas fa-user-friends"></i>
								<!-- PARTY JOIN TABLE에서 참여인원 가져올 것 -->
								<span></span>
							</li>
							<li class="info-hash" id="hashTagList">
								<i class="fab fa-slack-hash"></i>
								<!-- PARTY TABLE에서 태그 가져오기 -->
								<span>취미 서울마카롱 </span>
							</li>	
							<li class="info-sort" id="sort">
								<i class="fas fa-sort-amount-down"></i>
								<span><c:out value="${party.cat_sub}" /></span>
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
						<p id="introduction">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
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
						<div class="text02">예약일자, 신청 인원수 선택 후 신청하기 버튼을 눌러주세요.</div>
					</div>									
					
					<div class="class-confirm02">
						<div class="btn-swip swip-date closed schedule-date-trigger" id="btn-date">
							<a>날짜선택</a>
						</div>
						<div class="class-date">
							<input class="result" type="text" id="date" placeholder="날짜를 선택해주세요">
						</div>
					</div>
					<div class="class-confirm02">
						<div class="btn-swip swip-time schedule-time-trigger" id="btn-time">
							<a>시간선택</a>
						</div>
						<div class="class-time">
							<!-- <ul class="time-list" id="scheduleList"></ul> -->
							<input class="result" type="text" id="time" placeholder="시간을 선택해주세요">
						</div>
					</div>						
					<div class="class-confirm03">
						<button type="button" class="btn">신청하기</button>
					</div>
				</div>				
			</div>
		</div>
	</div>
	<!-- to top button ------------------------------------------>
	<div id="top-btn">
		<button class="btn btn-outline-secondary">
			<a href="#" class="top"><i class="fas fa-arrow-up"></i></a>
		</button>
	</div>
	<!-- to top button --->

	<%-- 
	<h1>GET PAGE</h1>
	<h3>TITLE : <c:out value="${party.title}" /></h3>
	<h3>CONTENT : <c:out value="${party.content}" /></h3>
	 --%>	
	<form id="operForm" action="/board/modify" method="get">
		<input type="hidden" name="p_no" value="${party.p_no}" />
		
		<!-- 책에서 data-oper 사용하여 수정/삭제 나눈 것처럼 -->
		<button data-oper="addSchedule">SCHEDULE 등록</button>
		<button type="submit">수정</button>
	</form>

<%@ include file="../includes/footer.jsp" %>

<script type="text/javascript"> 
// <![CDATA[ 
		
    $(document).ready(function(){ 
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
		//datepicker 토글
		$(function(){
			$('#btn-date').click(function(){
				$('.class-date').toggle("slow");
			});
		});
		//timepicker 토글
		$(function(){
			$('#btn-time').click(function(){
				$('.class-time').toggle("slow");
			});
		});

		//datpicker
		$(function () {
			$('#date').bootstrapMaterialDatePicker({
				time: false
			});
		});
		//timepicker
		$(function () {
			$('#time').bootstrapMaterialDatePicker({
				date: false,
				format: 'HH:mm'
			});
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
	}); 
    //]]>
 </script>