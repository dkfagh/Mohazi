<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./includes/header.jsp" %>
<%@ include file="./includes/navigation.jsp" %>

<style>
	.container{
		position: relative;
		height: 600px;
	}
    .title{
        text-align: center;
       /*  margin: 0 50px; */
    }
    .introWrapper{
    	text-align: center;
    }
    #btnStart{
    	position: relative;
    	width: 150px;
    	margin: auto;
    }
	.questionTitle{
		display: none;
    	position: relative;
    	top: -50px;
    	text-align: center;
    }
    .questionWrapper{
        position: absolute;
        top: 100; left: 0;
        /* margin: 100px 0; */
        width: 100%;
        height: 100px;
        border-radius: 50px;
        text-align: center;
        color: #5D5D5D;
        background: #E8E8E7;
        opacity: 0;  
        transition: 1s;
    }

    .on{
        opacity: 1;
        z-index: 10;
    }
    .resultWrapper{
        position: absolute;
        top: 100; left: 0;
        margin: 10px 0;
        width: 100%;
        height: 300px;
        border-radius: 50px;
        text-align: center;
        color: #5D5D5D;
        background: #E8E8E7;
        opacity: 0;
        transition: 1.2s;
    }
    .result{
        position: absolute;
        top: 100; left: 0;
        text-align: center;
        width: 100%;
        opacity: 0;
    }
    .item{
        width: 50%;
        float: left;
        line-height: 100px;
        cursor: pointer;
    }
    .item.on{
        color: #7bd4ac;
        font-weight: bold;
    }
    .vs{
        position: absolute;
        margin-left: -64px;
        top: -14px;
        z-index: 11;
    }
</style>

<div class="container">
	<h1 class="title">
		<img src="/resources/img/mohazi_title.png" alt="mohazi title" style="width: 500px;" />
	</h1>
	<div class="questionTitle">
		<img src="/resources/img/mohazi_choice.png" alt="당신에게 더 가까운 모습을 선택해주세요" style="width: 500px; top: -100px;" />
	</div>

	<div class="introWrapper">
	    <div><img src="/resources/img/mohazi_find.png" alt="당신의 성향에 맞는 취미를 찾아드려요" style="width: 500px;"/></div>
	    <button id="btnStart" type="button" class="btn btn-outline-success">시작하기</button>
	</div>

	<!-- Question Wrapper. Start ------------------------------------------------------>
	<div class="questionWrapper">
	    <img class="vs" src="/resources/img/versus.png" alt="versus" />
	    <div class="item" data-value="1">
			몸을 많이 움직이는 활동적인 취미를 원한다.
	    </div>
	    <div class="item" data-value="2">
			동적인 활동보다는 차분한 취미를 원한다.
	    </div>
	</div>
	<div class="questionWrapper">
	    <img class="vs" src="/resources/img/versus.png" alt="versus" />
	    <div class="item" data-value="1">
			여러 사람들과 교감하며 즐길 수 있는 취미를 찾는다.
		</div>
	    <div class="item" data-value="2">
			혼자서도 충분히 즐길 수 있는 취미를 찾는다.
		</div>
	</div>
	<div class="questionWrapper">
	    <img class="vs" src="/resources/img/versus.png" alt="versus" />
	    <div class="item" data-value="1">
			날씨에 구애받지 않고 실내에서 활동하고 싶다.
		</div>
	    <div class="item" data-value="2">
			실내는 답답하다! 야외로 나가 활동하고 싶다.
		</div>
	</div>
	<div class="questionWrapper">
	    <img class="vs" src="/resources/img/versus.png" alt="versus" />
	    <div class="item" data-value="1">
	    	네번째
	    </div>
	    <div class="item" data-value="2">
	    	질문
	    </div>
	</div>
	<!-- Question Wrapper. End -------------------------------------------------------->
	<!-- Result Wrapper. Start -------------------------------------------------------->
	<div class="resultWrapper">
	    <h4>당신에게 잘 맞는 취미는</h4>
	    <div class="result" id="1111" data-result="영화">
	    	<p>"영화/연극/뮤지컬" 입니다.</p>
	    </div>
	    <div class="result" id="1112">2</div>
	    <div class="result" id="1121">3</div>
	    <div class="result" id="1122">4</div>
	    <div class="result" id="1211">5</div>
	    <div class="result" id="1212">6</div>
	    <div class="result" id="1221">7</div>
	    <div class="result" id="1222">8</div>
	    <div class="result" id="2111">9</div>
	    <div class="result" id="2112">10</div>
	    <div class="result" id="2121">11</div>
	    <div class="result" id="2122">12</div>
	    <div class="result" id="2211">13</div>
	    <div class="result" id="2212">14</div>
	    <div class="result" id="2221">15</div>
	    <div class="result" id="2222">16</div>
	    
	    <div style="padding-top: 100px;">
	    	<a href="#" id="goList">취미 보러가기</a>
	    </div>
	</div>
	<!-- Result Wrapper. End ---------------------------------------------------------->
</div>	<!-- 나중에 지우기 -->

<%@ include file="./includes/footer.jsp" %>
<script>
    $(document).ready(function(){
        // 시작하기 누르면 introWrapper 사라지고 questionWrapper 보이도록
        $("#btnStart").on("click", function(){
            $(this).closest("div").css("display", "none").next(".questionWrapper").addClass("on");
            $(".questionTitle").css("display", "block");
        });

        var resultValue = "";       // 결과값을 저장할 변수

        // 두가지 선택지 중 하나를 선택할 경우
        $(".questionWrapper>.item").on("click", function(){
            $(this).addClass("on");                     // 글자색상, 굵기 변경
            resultValue += $(this).data("value");       // 결과값 누적하여 저장
            console.log("result value : " +resultValue);

            // 선택한 질문은 사라지고 다음 질문 보이도록
            $(this).closest(".questionWrapper").removeClass("on").next(".questionWrapper").addClass("on");

            // 네가지 질문에 대한 답변을 끝냈다면
            if(resultValue.length == 4){
                console.log("결과 출력!");
                $(".resultWrapper").css("opacity", "1");    // 결과 div 보이도록
                $("#"+resultValue).css("opacity", "1");     // 답변한 결과값에 맞는 취미 보여줌
                
                var keyword = $("#"+resultValue).data("result");
                console.log("keyword : " + keyword);
                var url = "/board/searchResult?pageNum=1&amount=16&keyword=" + keyword;
                $("#goList").attr("href", url);
            }
        });
		
        
    });

</script>