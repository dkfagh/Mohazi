<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

    
    
<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %> 


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css'>

  <!-- textEditor ----------------------------------------------------------------------->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
  crossorigin="anonymous"></script>
   
  <!--게시판설정을위한 스크립트  -->
   <script src="/resources/js/summernote-ko-KR.js"></script>
  
  <!-- include libraries(jQuery, bootstrap) -->
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
 
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.js"></script>
  
  <!-- tagEditor ----------------------------------------------------------------------------->

  <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.6/jquery.tagsinput.min.css" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.6/jquery.tagsinput.min.js"></script>

<style>
    input::placeholder {
      font-size: 12px;
    }

    input {
      border: 0;
    }

     tr {
      width:100% !important;
    } 

     th {
      font-family: 'Nanum Gothic', sans-serif;
      font-size:16px;
	  font-weight:bold;
      width: 200px;
    }

   .cat {
       width: 50% !important; 
       display:inline-block;
   
    } 
    #title,
    #address,
    #price {
      width: 600px;
    }

    .dropdown {
      width: 150px;
      margin: 0px !important;
    }


    .listBtn,
    .modBtn,
    .remBtn {
     float: right;
    background-color:#e9faf2;
	border-radius:5px;
	font-weight:bold;
	padding:7px;
	width:75px;
	color:#66a385;
	font-size:14px;
	border:0px;
	margin-top:43px;
	margin-right:10px;
    }

    #contents {
      position: relative;
      margin: 0 auto;
    }

    #inputTag{
      width: 800px !important;
      margin: 0px 0px;
      height: 50px;
    }
  </style>
  
  
<style>
.uploadResult {
   width: 100%;
   background: white;
   border-radius: 5px;
   border: 1px solid black;
   height: 250px;
}

.uploadResult ul {
   display: flex;
   flex-flow: row;
   justify-content: center;
   align-items: center;
}

.uploadResult li {
   list-style: none;
   padding: 10px;
}

.uploadResult ul li img {
   width: 200px;
   height: 180px;
}

.bigPictureWrapper {
  position: absolute;
  display: none;
  justify-content: center;
  align-items: center;
  top:0%;
  width:600px;
  height:600px;
  background-color: gray; 
  z-index: 100;
}

.bigPicture {
  position: relative;
  display:flex;
  justify-content: center;
  align-items: center;
}
.bigPicture img{
   width:600px;
}

</style>

<style>
.filebox label {
   display: inline-block;
  padding: .5em .75em;
  color:#66a385;
  font-size:14px;
  line-height: normal;
  vertical-align: middle;
  background-color:#e9faf2;
  cursor: pointer;
   border-radius:5px;
  -webkit-transition: background-color 0.2s;
  transition: background-color 0.2s;
  font-weight:bold;
 
}

.filebox label:hover {
  background-color: #6ed36e;
}

.filebox label:active {
  background-color: #367c36;
}

.filebox input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}

</style>

<style>

select {
  width: 200px;
  padding: .8em .5em;
  font-family: inherit;
  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  border: 1px solid #999;
  border-radius: 0px;
   font-size: 14px;
}

select::-ms-expand {
  /* for IE 11 */
  display: none;
}


.input-title{position: relative; width:600px}
#inputBox {
    width: 100%;

}
input[type=text]:-ms-clear{
    display: none;
}

#searchclear {
    position: absolute;
    right: 3px;
    top: 0;
    bottom: 0;
    width: 10px;
    height: 14px;
    margin: auto;
    font-size: 13px;
    cursor: pointer;
    color: black;
    background-color: #fff;
}
.mapBtn{
    background-color:#e9faf2;
	border-radius:5px;
	font-weight:bold;
	padding:0px 7px;
	color:#66a385;
	font-size:14px;
	border:0px;
}
.mo{
  font-family: 'Nanum Gothic', sans-serif;
    font-size:30px;
	padding:40px}
</style>

<!-- Container시작 ----------------------------------------------------------------->
<div class="container" id="contents">

   <!-- registerForm시작 ----------------------------------------------------------------->
   <form id="modifyForm" action="/board/modify" method="post"
      role="form">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		
      <h2 class="mo text-center">게시글 수정</h2>
 
      <!-- Table시작 ----------------------------------------------------------------->
      <table class="table">

         <tbody>
         
            <!-- P_NO값 입력 -->
            <tr>
            <th>글번호</th>
            <td>
            <input name="p_no" value="${party.p_no}" readonly="readonly">
            </td>
         	</tr>
            <!-- 제목입력 -------------------------------------------------------------------------->
          <tr>
               <th>제목</th>
               <td id="title">
               <div class="input-title">
               <input type="text" placeholder=" 제목을 입력하세요." name="title" id="inputBox" value="${party.title}"/>
               <span id="searchclear">X</span>
               </div>
               </td>
            </tr>

            <!-- 카테고리입력 -------------------------------------------------------------------------->
            <tr style="width: 800px !important;">
               <th style="width: 200px !important;">카테고리</th>
               <td class="cat">
               	<select name="cat_main" id="cat_main">
                     <option>선택하세요.</option>
                     <option value="문화" id="문화">문화</option>
                     <option value="IT" id="IT">IT</option>
                     <option value="스포츠" id="스포츠">스포츠</option>
                     <option value="창작" id="창작">창작</option>
                     <option value="체험" id="체험">체험</option>
               </select></td>
               <td class="cat">
               <select name="cat_sub" id="cat_sub">
                     <option>선택하세요.</option>
               </select></td>
            </tr>

            <!-- 소개입력 -------------------------------------------------------------------------->
            <tr>
               <th>소개입력</th>
               <td>
                  <textarea id="summernote" name="content" >${party.content}</textarea>
               </td>
            </tr>

            <!-- 위치입력 -------------------------------------------------------------------------->
            <tr>
               <th>위치</th>
               <td id="address"><input type="text" value="${party.address}" id="inputAddress"
                  placeholder="주소를 입력하세요." style="width: 300px; height:40px" name="address">
                  <input type="button" onclick="sample5_execDaumPostcode()"
                  value="검색" class="mapBtn"><br>
                  <input type="hidden" name="coord_x" id="coord_x" value="${party.coord_x}" />
                  <input type="hidden" name="coord_y" id="coord_y" value="${party.coord_y}" />
                  <div id="map" style="width:100%;height:340px;"></div>
               </td>
            </tr>


            <!-- 태그달기입력 -------------------------------------------------------------------------->
            <tr>
               <th>태그달기</th>
               <td>
                  <div>
                     <h2 style="font-family: cursive;"></h2>
                     <input id="inputTag"
                        style="width: 800px !important; height: 50px; margin: 0px 0px;"
                        name="tag" value="${party.tag}"/>
                  </div>
               </td>
            </tr>

            <!-- 사진등록입력 -------------------------------------------------------------------------->
            <tr>
               <th>사진등록</th>
               <td>
                  <div class="form-group uploadDiv filebox">
                      <label for="ex_file">사진등록</label>
                       <input type="file" id="ex_file" name="uploadFile" value="${attach.uploadFile}" multiple>
                  </div>
                  <div class='uploadResult'>
                     <ul>
                     </ul>
                  </div>
               </td>
            </tr>

            <!-- 가격입력 -------------------------------------------------------------------------->
		
				<c:if test="${fn:contains(party.type,'C')}">
					<tr>
						<th>가격</th>
						<td id="price"><input type="text" placeholder="가격을 입력하세요." name="price" id="class" 
						value="${party.price}"
						onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>원</td>
					</tr>
				</c:if>
			

			<!-- id입력 -------------------------------------------------------------------------->
			
			<input type="hidden" name="id" id="id" value='<sec:authentication property="principal.username"/>'/>
			
      
            
            <!-- type입력 -------------------------------------------------------------------------->
            <input type="hidden" name="type" id="type" value="${party.type}">
    
            
            
         </tbody>
         <!-- Table끝 ----------------------------------------------------------------->
      </table>
      
      <!-- 등록버튼입력 -------------------------------------------------------------------------->
      
    
		<sec:authentication property="principal" var="pinfo"/>
		
		<sec:authorize access="isAuthenticated()">
		
		<c:if test="${pinfo.username eq party.id}">
		
		
		      <button type="submit" id="remBtn" data-oper='remove' class="remBtn btn btn-outline-secondary" style="margin:3px;">삭제</button>
		      <button type="submit" id="modBtn" data-oper='modify' class="modBtn btn btn-outline-secondary" style="margin:3px;">수정</button>
		</c:if>
		</sec:authorize>
<br>
<br>
<br>
<br>
   </form>
   <!-- registerForm끝 ----------------------------------------------------------------->


   <!-- Container끝 ----------------------------------------------------------------->
</div>
	
	<%@ include file="../includes/footer.jsp" %>
	

	

<!--첨부파일업로드 ------------------------------------------------------------------->
<script>
$(document).ready(function() {


     var formObj = $("form");

     $('button').on("click", function(e){
       
       e.preventDefault(); 
       
       var operation = $(this).data("oper");
       
       console.log(operation);
       
       if(operation === 'remove'){
          if(confirm("정말 삭제 하시겠습니까?")){
                formObj.attr("action", "/board/remove");
             }
             else{return false;}
       }
       //게시글 수정시 null값 없는 alert띄우기!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
       else if(operation === 'modify'){
          
          var title = $("#inputBox").val();
          var catm = $("#cat_main").val();
          var cats = $("#cat_sub").val();
          var address=$("#inputAddress").val();
          var content = $("#summernote").val();
          console.log("!!![" + content + "]");
           if(title == ""){
              /* alert("제목을 입력하세요."); */
              swal("Notice","제목을 입력하세요.");
              return;
           }
           if(catm == "선택하세요." ){
              /* alert("카테고리를 선택하세요."); */
              swal("Notice","카테고리를 선택하세요.");
              return;
           }
            if(cats == "선택하세요." ){
              /* alert("카테고리를 선택하세요."); */
              swal("Notice","카테고리를 선택하세요.");
              return;
           } 
           if(address == ""){
              /* alert("주소를 입력하세요."); */
              swal("Notice","주소를 입력하세요.");
              return;
           }
           if(content == ""){
              /* alert("내용을 입력하세요."); */
              swal("Notice","내용을 입력하세요.");
              return;
           }
           
           // 첨부파일 관련
           var str = "";
           
           $(".uploadResult ul li").each(function(i, obj){
             
             var jobj = $(obj);
             
             console.dir(jobj);
             
             str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
             str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
             str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
             str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+ jobj.data("type")+"'>";
             
           });
           
           formObj.append(str);
       }
       else if(operation === 'list'){
         //move to list
         formObj.attr("action", "/board/list").attr("method","get");
         
         var pageNumTag = $("input[name='pageNum']").clone();
         var amountTag = $("input[name='amount']").clone();
         var keywordTag = $("input[name='keyword']").clone();
         var typeTag = $("input[name='type']").clone();      
         
         formObj.empty();
         
         formObj.append(pageNumTag);
         formObj.append(amountTag);
         formObj.append(keywordTag);
         formObj.append(typeTag);     
         
       }
       formObj.submit();
     });

});
</script>


<script>

$(document).ready(function() {
  (function(){
    
    var p_no = '<c:out value="${party.p_no}"/>';
    
    $.getJSON("/board/getAttachList", {p_no: p_no}, function(arr){
    
      console.log(arr);
      
      var str = "";


      $(arr).each(function(i, attach){
          
          //image type
        
            var fileCallPath =  encodeURIComponent( attach.uploadPath+ "/s_"+attach.uuid +"_"+attach.fileName);
            
            str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' "
            str +=" data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
            str += "<span> "+ attach.fileName+"</span>";
            str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' "
            str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
            str += "<img src='/display?fileName="+fileCallPath+"'>";
            str += "</div>";
            str +"</li>";
        
       });

      
      $(".uploadResult ul").html(str);
      
    });//end getjson
  })();//end function
  
  
  $(".uploadResult").on("click", "button", function(e){
	    
    console.log("delete file");
      
    if(confirm("Remove this file? ")){
    
      var targetLi = $(this).closest("li");
      targetLi.remove();

    }
  });  
  
  var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
  var maxSize = 5242880; //5MB
  
  function checkExtension(fileName, fileSize){
    
    if(fileSize >= maxSize){
      /* alert("파일 사이즈 초과"); */
      swal("Notice","파일 사이즈 초과");
      return false;
    }
    
    if(regex.test(fileName)){
      /* alert("해당 종류의 파일은 업로드할 수 없습니다."); */
      swal("Notice","해당 종류의 파일은 업로드할 수 없습니다.");
      return false;
    }
    return true;
  }
  
  $("input[type='file']").change(function(e){

    var formData = new FormData();
    
    var inputFile = $("input[name='uploadFile']");
    
    var files = inputFile[0].files;
    
    for(var i = 0; i < files.length; i++){

      if(!checkExtension(files[i].name, files[i].size) ){
        return false;
      }
      formData.append("uploadFile", files[i]);
      
    }
    
  //ajaxSend시 토큰값 전달---------------------------------------------------------------   
    var csrfHeaderName = "${_csrf.headerName}";
    var csrfTokenValue = "${_csrf.token}";
    $(document).ajaxSend(function(e, xhr, options) {
       xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
    });
    //ajaxSend시 토큰값 전달---------------------------------------------------------------  

    $.ajax({
      url: '/uploadAjaxAction',
      processData: false, 
      contentType: false,data: 
      formData,type: 'POST',
      dataType:'json',
        success: function(result){
          console.log(result); 
		  showUploadResult(result); //업로드 결과 처리 함수 

      }
    }); //$.ajax
    
  });    

  function showUploadResult(uploadResultArr){
	    
    if(!uploadResultArr || uploadResultArr.length == 0){ return; }
    
    var uploadUL = $(".uploadResult ul");
    
    var str ="";
    
    $(uploadResultArr).each(function(i, obj){
		
		
			var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
			str += "<li data-path='"+obj.uploadPath+"'";
			str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
			str +" ><div>";
			str += "<span> "+ obj.fileName+"</span>";
			str += "<button type='button' data-file=\'"+fileCallPath+"\' "
			str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
			str += "<img src='/display?fileName="+fileCallPath+"'>";
			str += "</div>";
			str +"</li>";


    });
    
    uploadUL.append(str);
  }
  
});

</script>
<!--첨부파일업로드 ------------------------------------------------------------------->






<!-- 카카오맵API ------------------------------------------------------------------------------------------------>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e5d55372dfb08cff48fa326451e35832&libraries=services"></script>
<script>
    $(document).ready(function() {
      var coord_x = $("#coord_x").val();
      var coord_y = $("#coord_y").val();
      var coords = new daum.maps.LatLng(coord_y, coord_x);
      console.log("coords : " + coords);

      var mapContainer = document.getElementById('map'); // 지도를 표시할 div
      var mapOption = {
         center : coords, // 지도의 중심좌표
         level : 5		  // 지도의 확대 레벨
      };
      //지도를 미리 생성
      var map = new daum.maps.Map(mapContainer, mapOption);
      //마커를 미리 생성
       var marker = new daum.maps.Marker({
         position : coords,
         map : map
      });
      marker.setMap(map);
   });

   function sample5_execDaumPostcode() {
	      new daum.Postcode({
	         oncomplete : function(data) {
	            var addr = data.address; // 최종 주소 변수

	            // 주소 정보를 해당 필드에 넣는다.
	            document.getElementById("inputAddress").value = addr;
	            // 주소로 상세 정보를 검색
	            var geocoder = new daum.maps.services.Geocoder();
	            geocoder.addressSearch(data.address, function(results, status) {
	               // 정상적으로 검색이 완료됐으면
	               if (status === daum.maps.services.Status.OK) {

	                  var result = results[0]; //첫번째 결과의 값을 활용
	                  // 해당 주소에 대한 좌표를 받아서
	                  // input tag에 넣어 준 후
	                  $("#coord_x").val(result.x);
	                  $("#coord_y").val(result.y);
	                  console.log("주소 수정 후 좌표 : " + $("#coord_x").val() + ", " + $("#coord_y").val());
	                  var coords = new daum.maps.LatLng(result.y, result.x);
	                  // 지도를 보여준다.
	                  var mapContainer = document.getElementById('map'); // 지도를 표시할 div
	                  var mapOption = {
	                     center : coords, // 지도의 중심좌표
	                     level : 5
	                  // 지도의 확대 레벨
	                  };
	                  var map = new daum.maps.Map(mapContainer, mapOption);
	                  
	                  mapContainer.style.display = "block";
	                  map.relayout();
	                  // 지도 중심을 변경한다.
	                  map.setCenter(coords);
	                  // 마커를 결과값으로 받은 위치로 옮긴다.
	                  var marker = new daum.maps.Marker({
	                  position : coords,
	                  map : map
	               });
	                  marker.setPosition(coords)
	               }
	            });
	         }
	      }).open();
	   }
</script>
<!-- 카카오맵API ------------------------------------------------------------------------------------------------>



<!--textEditor------------------------------------------------------------------->
<script>
  $(document).ready(function() {
     $('#summernote').summernote({
           minHeight: 200,
           maxHeight: null,
           focus: true, 
           lang : 'ko-KR'
     });
   });
</script>
<!--textEditor------------------------------------------------------------------->


<!-- tagEditor ------------------------------------------------------------------------------->

<script type="text/javascript">
  $('#inputTag').tagsInput({
    width: 820,
    height: 50
  });
</script>

<!-- tagEditor ------------------------------------------------------------------------------->





<!-- 카테고리분류 JQUERY -------------------------------->
<script>
$(document).ready(function(){
	var a=['영화/연극/뮤지컬','전시','음악','독서'];
	var b=['게임','프로그래밍','블로그'];
	var c=['구기','수상','익스트림','러닝','헬스'];
	var d=['공예','연주','요리','사진','미술'];
	var e=['여행','맛집','친목'];
	   //test
	   var cat_main = "${party.cat_main}";
	   var cat_sub = "${party.cat_sub}";
	   $("#"+cat_main).attr("selected", "selected");
	   var sel = "${party.cat_main}";
	   if(sel == "문화"){
	      $('.op').remove();
	      $.each(a,function(i,item){
	         $('#cat_sub').append('<option class="op" id="'+item+'">'+item+'</option>');
	      });
	   }
	   else if(sel == "IT"){
	      $('.op').remove();
	      $.each(b,function(i,item){
	         $('#cat_sub').append('<option class="op" id="'+item+'">'+item+'</option>');
	   
	      });
	   }
	   else if(sel == "스포츠"){
	      $('.op').remove();
	      $.each(c,function(i,item){
	         $('#cat_sub').append('<option class="op" id="'+item+'">'+item+'</option>');
	   
	      });
	   }
	   
	   else if(sel == "창작"){
	      $('.op').remove();
	      $.each(d,function(i,item){
	         $('#cat_sub').append('<option class="op" id="'+item+'">'+item+'</option>');
	   
	      });
	   }
	   else if(sel == "체험"){
	      $('.op').remove();
	      $.each(e,function(i,item){
	         $('#cat_sub').append('<option class="op" id="'+item+'">'+item+'</option>');
	   
	      });
	   }
	   $("#"+cat_sub).attr("selected", "selected");
	   /////////////////////////////////////////////
	$('#cat_main').change(function(){
		var sel = $(this).val();
		if(sel == "문화"){
			$('.op').remove();
			$.each(a,function(i,item){
				$('#cat_sub').append('<option class="op" id="'+item+'">'+item+'</option>');
			});
		}
		else if(sel == "IT"){
			$('.op').remove();
			$.each(b,function(i,item){
				$('#cat_sub').append('<option class="op" id="'+item+'">'+item+'</option>');
		
			});
		}
		else if(sel == "스포츠"){
			$('.op').remove();
			$.each(c,function(i,item){
				$('#cat_sub').append('<option class="op" id="'+item+'">'+item+'</option>');
		
			});
		}
		
		else if(sel == "창작"){
			$('.op').remove();
			$.each(d,function(i,item){
				$('#cat_sub').append('<option class="op" id="'+item+'">'+item+'</option>');
		
			});
		}
		else if(sel == "체험"){
			$('.op').remove();
			$.each(e,function(i,item){
				$('#cat_sub').append('<option class="op" id="'+item+'">'+item+'</option>');
		
			});
		}		
	});
	
});




</script>

<!-- title deleteall ---------------------------------------------------------->
<script>
	var $ipt = $('#inputBox'), $clearIpt = $('#searchclear');

	$ipt.keyup(function() {
		$("#searchclear").toggle(Boolean($(this).val()));
	});

	$clearIpt.toggle(Boolean($ipt.val()));
	$clearIpt.click(function() {
		$("#inputBox").val('').focus();
		$(this).hide();
	});
	
	 

</script>



