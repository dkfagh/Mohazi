<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css'>

  <!-- textEditor ----------------------------------------------------------------------->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
  crossorigin="anonymous"></script>
  
  
  <!--게시판설정을위한 스크립트  -->
   <script src="/resources/js/summernote-ko-KR.js"></script>
  <link href="summernote.css" rel="stylesheet">
  <script src="summernote.min.js"></script>
  
  <!-- include libraries(jQuery, bootstrap) -->
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
 
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-bs4.min.js"></script>
  

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>



  <!-- tagEditor ----------------------------------------------------------------------------->

  <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.6/jquery.tagsinput.min.css" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.6/jquery.tagsinput.min.js"></script>

  <!-- 폰트어썸 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
  
  
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
      color: black;
      font-style: bold;
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

    
    .regBtn,
    .modBtn{
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
	margin-right:10px;}

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

.input-title{position: relative; width:200px}
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
	width:75px;
	color:#66a385;
	font-size:14px;
	border:0px;
}
</style>


<!-- Container시작 ----------------------------------------------------------------->
<div class="container" id="contents">

   <!-- registerForm시작 ----------------------------------------------------------------->
   <form id="registerForm" action="/board/register" method="post"
      role="form">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />



      <h2>등록</h2>
      <br>
      <!-- Table시작 ----------------------------------------------------------------->
      <table class="table">

         <tbody>
            <!-- 제목입력 -------------------------------------------------------------------------->

            <tr>
               <th>제목</th>
               <td id="title">
               <div class="input-title">
               <input type="text" placeholder=" 제목을 입력하세요." name="title" id="inputBox"/>
               <span id="searchclear">X</span>
               </div>
               </td>
            </tr>

            <!-- 카테고리입력 -------------------------------------------------------------------------->
            <tr style="width: 800px !important;">
               <th style="width: 200px !important;">카테고리</th>
               <td class="cat">
               	<select name="cat_main" id="cat_main">
                     <option>선택하세요</option>
                     <option value="문화" id="문화">문화</option>
                     <option value="IT" id="IT">IT</option>
                     <option value="스포츠" id="스포츠">스포츠</option>
                     <option value="창작" id="창작">창작</option>
                     <option value="체험" id="체험">체험</option>
               </select></td>
               <td class="cat">
               <select name="cat_sub" id="cat_sub">
                     <option>선택하세요</option>
               </select></td>
            </tr>

            <!-- 소개입력 -------------------------------------------------------------------------->
            <tr>
               <th>소개입력</th>
               <td>
                  <textarea id="summernote" name="content"></textarea>
               </td>
            </tr>

            <!-- 위치입력 -------------------------------------------------------------------------->
            <tr>
               <th>위치</th>
               <td id="address"><input type="text" id="inputAddress"
                  placeholder="주소를 입력하세요." style="width: 300px;" name="address">
                  <input type="button" onclick="sample5_execDaumPostcode()"
                  value="검색" class="mapBtn"><br>
                  <!-- 카카오맵에서 읽어온 좌표 -->
                  <input type="hidden" name="coord_x" id="coord_x" />
                  <input type="hidden" name="coord_y" id="coord_y" />
                  <div id="map" style="width:100%;height:350px;display:none"></div>
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
                        name="tag" />
                  </div>
               </td>
            </tr>

            <!-- 사진등록입력 -------------------------------------------------------------------------->
            <tr>
               <th>사진등록</th>
               <td>
                  <div class="form-group uploadDiv filebox">
                      <label for="ex_file">사진등록</label>
                       <input type="file" id="ex_file" name="uploadFile" multiple>
                     <!-- <input type="file" name='uploadFile' multiple> -->
                  </div>
                  <div class='uploadResult'>
                     <ul>
                     </ul>
                  </div>
               </td>
            </tr>

            <!-- 가격입력 -------------------------------------------------------------------------->
			<c:choose>
				<c:when test="${param.type eq 'C'}">
					<tr>
						<th>가격</th>
						<td id="price"><input type="text" placeholder="가격을 입력하세요." name="price" id="class" />원</td>
					</tr>
				</c:when>
			</c:choose>
			
			<!-- id입력 -------------------------------------------------------------------------->
			<tr>
			<th>ID</th>
			<td> <input type="text" name="id" id="id" value='<sec:authentication property="principal.username"/>' readonly="readonly">
			</td>
			</tr>
	            
            <!-- type입력 -------------------------------------------------------------------------->
            <input type="hidden" name="type" id="type" value="${param.type}">
            
         </tbody>
         <!-- Table끝 ----------------------------------------------------------------->
      </table>
      
      <!-- 등록버튼입력 -------------------------------------------------------------------------->
      <button type="submit" class="regBtn btn btn-outline-secondary">등록</button>
<br>
<br>
<br>
<br>
   </form>
   <!-- registerForm끝 ----------------------------------------------------------------->


   <!-- Container끝 ----------------------------------------------------------------->
</div>
<%@ include file="../includes/footer.jsp" %>



<!-- 카카오맵API ------------------------------------------------------------------------------------------------>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e5d55372dfb08cff48fa326451e35832&libraries=services"></script>
<script>
		/*   $(document).ready(function() {
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
		   center : new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
		   level : 5
		// 지도의 확대 레벨
		};
		
		//지도를 미리 생성
		var map = new daum.maps.Map(mapContainer, mapOption);
		//주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
		//마커를 미리 생성
		var marker = new daum.maps.Marker({
		   position : new daum.maps.LatLng(37.537187, 127.005476),
		   map : map
		});
		}); */
  
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
                  // input tag에 x, y 좌표 넣기
                  $("#coord_x").val(result.x);	
                  $("#coord_y").val(result.y);
                  
                  // 해당 주소에 대한 좌표를 받아서
                  var coords = new daum.maps.LatLng(result.y, result.x);
                  // 지도를 보여준다.
                  var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                  mapOption = {
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



<!--첨부파일업로드 ------------------------------------------------------------------->

<script>
$(document).ready(function(e){

   
  var formObj = $("form[role='form']");
  
  $("button[type='submit']").on("click", function(e){
    
    e.preventDefault();
    
	//게시글 등록시 null값 없는 alert띄우기!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    var title = $("#inputBox").val();
	var catm = $("#cat_main").val();
	var cats = $("#cat_sub").val();
	var address=$("#inputAddress").val();
	var content = $("#summernote").val();
	
	
       if(title == ""){
          alert("제목을 입력하세요.");
          return;
       }
       if(catm == "선택하세요" ){
    	   alert("선택하세요.");
    	   return;
       }
        if(cats == "선택하세요" ){
    	   alert("선택하세요.");
    	   return;
       } 
       if(address == ""){
    	   alert("주소를 입력하세요.");
    	   return;
       }
       if(content == ""){
    	   alert("내용을 입력하세요.");
    	   return;
       }

    
   var str = "";
    
    $(".uploadResult ul li").each(function(i, obj){
      
      var jobj = $(obj);
      
      console.dir(jobj);
      console.log("-------------------------");
      console.log(jobj.data("filename"));
      
      
      str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
      str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
      str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
      str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+ jobj.data("type")+"'>";
      
    });
    
    console.log(str);
    
    formObj.append(str).submit();
    
  });

  var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
  var maxSize = 5242880; //5MB
  
  function checkExtension(fileName, fileSize){
    
    if(fileSize >= maxSize){
      alert("파일 사이즈 초과");
      return false;
    }
    
    if(regex.test(fileName)){
      alert("해당 종류의 파일은 업로드할 수 없습니다.");
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
       
       //image type
         if(obj.image){
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
         }else{
            var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);               
             var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
               
            str += "<li "
            str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
            str += "<span> "+ obj.fileName+"</span>";
            str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
            str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
            str += "<img src='/resources/img/attach.png'></a>";
            str += "</div>";
            str +"</li>";
         }
       });
       uploadUL.append(str);
  }
  
  $(".uploadResult").on("click", "button", function(e){
       
       console.log("delete file");
         
       var targetFile = $(this).data("file");
       var type = $(this).data("type");
       
       var targetLi = $(this).closest("li");
       
       $.ajax({
         url: '/deleteFile',
         data: {fileName: targetFile, type:type},
         dataType:'text',
         type: 'POST',
           success: function(result){
              alert(result);
              
              targetLi.remove();
            }
       }); //$.ajax
      });

  
  
});
  </script>
<!--첨부파일업로드 ------------------------------------------------------------------->

<!-- 카테고리분류 JQUERY -------------------------------->
<script>
$(document).ready(function(){
	var a=['영화/연극/뮤지컬','전시','음악','독서'];
	var b=['게임','프로그래밍','블로그'];
	var c=['구기','수상','익스트림','러닝','헬스'];
	var d=['공예','연주','요리','사진','미술'];
	var e=['여행','맛집'];
	$('#cat_main').change(function(){
		var sel = $(this).val();
		if(sel == "문화"){
			$('.op').remove();
			$.each(a,function(i,item){
				$('#cat_sub').append('<option class="op">'+item+'</option>');
			});
		}
		else if(sel == "IT"){
			$('.op').remove();
			$.each(b,function(i,item){
				$('#cat_sub').append('<option class="op">'+item+'</option>');
		
			});
		}
		else if(sel == "스포츠"){
			$('.op').remove();
			$.each(c,function(i,item){
				$('#cat_sub').append('<option class="op">'+item+'</option>');
		
			});
		}
		
		else if(sel == "창작"){
			$('.op').remove();
			$.each(d,function(i,item){
				$('#cat_sub').append('<option class="op">'+item+'</option>');
		
			});
		}
		else if(sel == "체험"){
			$('.op').remove();
			$.each(e,function(i,item){
				$('#cat_sub').append('<option class="op">'+item+'</option>');
		
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
