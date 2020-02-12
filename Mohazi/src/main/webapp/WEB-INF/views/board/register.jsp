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
    .title,
    .address,
    .price {
      width: 600px;
    }

    .dropdown {
      width: 150px;
      margin: 0px !important;
    }


    .regBtn,
    .modBtn {
      /* background-color:rgb(0, 0, 0);
      color: black;
      border-radius: 5px; 
      width: 80px;
      height: 30px;*/
      float: right;

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
  color: #fff;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #5cb85c;
  cursor: pointer;
  border: 1px solid #4cae4c;
  border-radius: .25em;
  -webkit-transition: background-color 0.2s;
  transition: background-color 0.2s;
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


<!-- Container시작 ----------------------------------------------------------------->
<div class="container" id="contents">

   <!-- registerForm시작 ----------------------------------------------------------------->
   <form id="registerForm" action="/board/register" method="post"
      role="form">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />



      <h2>Register</h2>
      <br>
      <!-- Table시작 ----------------------------------------------------------------->
      <table class="table">

         <tbody>
            <!-- 제목입력 -------------------------------------------------------------------------->

            <tr>
               <th>제목</th>
               <td class="title"><input type="text" placeholder=" 제목을 입력하세요."
                  name="title" /></td>
            </tr>

            <!-- 카테고리입력 -------------------------------------------------------------------------->
            <tr style="width: 800px !important;">
               <th style="width: 200px !important;">카테고리</th>
               <td class="cat"><select name="cat_main">
                     <option SELECTED>선택하세요.</option>
                     <option>클래스</option>
                     <option>모임</option>
                     <option>클래스</option>
                     <option>클래스</option>
                     <option>클래스</option>
                     <option>클래스</option>
               </select></td>
               <td class="cat"><select name="cat_sub">
                     <option SELECTED>선택하세요.</option>
                     <option>운동</option>
                     <option>모임</option>
                     <option>클래스</option>
                     <option>클래스</option>
                     <option>클래스</option>
                     <option>클래스</option>
               </select></td>


            </tr>


            <!-- 소개입력 -------------------------------------------------------------------------->
            <tr>
               <th>소개입력</th>
               <td>
                  <!-- <input type="textarea" rows="5" name="content">-->
                  <!--  <div id="summernote" name="content"></div>  -->
                  <textarea id="summernote" name="content"></textarea>
               </td>
            </tr>

            <!-- 위치입력 -------------------------------------------------------------------------->
            <tr>
               <th>위치</th>
               <td class="address"><input type="text" id="inputAddress"
                  placeholder="주소를 입력하세요." style="width: 300px;" name="address">
                  <input type="button" onclick="sample5_execDaumPostcode()"
                  value="검색" class="mapBtn"
                  style="font-size: 12px; background-color: black; color: white; border-radius: 3px;"><br>
                  <div id="map"
                     style="width: 300px; height: 300px; margin-top: 10px; display: none"></div>
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

            <tr>
               <th>가격</th>
               <td class="price"><input type="text" placeholder="가격을 입력하세요."
                  name="price" />원</td>
            </tr>
            
            <!-- id입력 -------------------------------------------------------------------------->
           
            <%-- <input type="hidden" name="id" value="${param.id}"> --%>
            <input type="hidden" name="id" id="id" value='<sec:authentication property="principal.username"/>'>
      
            
            <!-- type입력 -------------------------------------------------------------------------->
            <input type="hidden" name="type" value="${param.type}">
            
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





<!-- 카카오맵API ------------------------------------------------------------------------------------------------>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e5d55372dfb08cff48fa326451e35832&libraries=services"></script>
<script>
   $(document).ready(function() {
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
   });

   function sample5_execDaumPostcode() {
      new daum.Postcode({
         oncomplete : function(data) {
            var addr = data.address; // 최종 주소 변수

            // 주소 정보를 해당 필드에 넣는다.
            document.getElementById("inputAddress").value = addr;
            // 주소로 상세 정보를 검색
            geocoder.addressSearch(data.address, function(results, status) {
               // 정상적으로 검색이 완료됐으면
               if (status === daum.maps.services.Status.OK) {

                  var result = results[0]; //첫번째 결과의 값을 활용

                  // 해당 주소에 대한 좌표를 받아서
                  var coords = new daum.maps.LatLng(result.y, result.x);
                  // 지도를 보여준다.
                  mapContainer.style.display = "block";
                  map.relayout();
                  // 지도 중심을 변경한다.
                  map.setCenter(coords);
                  // 마커를 결과값으로 받은 위치로 옮긴다.
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


