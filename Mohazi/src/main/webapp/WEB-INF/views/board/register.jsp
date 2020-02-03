<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>

 <style>
    input::placeholder {
      font-size: 12px;
    }

    input {
      border: 0;
    }

    tr {
      width: 800px;
    }

    th {
      color: black;
      font-style: bold;
      width: 200px;
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

    input[type=file] {
      display: none;
    }

    .photoBtn {
      display: inline-block;
      width: 100px;
      text-align: center;
      padding: 10px;
      background-color: rgb(11, 12, 12);
      color: #fff;
      text-decoration: none;
      border-radius: 5px;
    }



    .imgsWrap {

      border: 2px solid #A8A8A8;
      margin-top: 30px;
      margin-bottom: 30px;
      padding-top: 10px;
      padding-bottom: 10px;
      height: 200px;

    }

    .imgsWrap img {
      max-width: 170px;
      margin-left: 10px;
      margin-right: 10px;
      max-height: 170px;
      width: 50%;

    }

    .regBtn {
      background-color: rgb(11, 12, 12);
      color: #fff;
      border-radius: 5px;
      width: 50px;
      height: 30px;
      float: right;

    }

    #contents {
      position: relative;
      margin: 0 auto;
    }

  </style>


  <!-- Container시작 ----------------------------------------------------------------->
  <div class="container" id="contents">

    <!-- registerForm시작 ----------------------------------------------------------------->
    <form id="registerForm" action="/board/register" method="post">

      <h2>Register</h2>
      <br>
      <!-- Table시작 ----------------------------------------------------------------->
      <table class="table" style="width: 1000px;">

        <tbody>
        <!-- 제목입력 -------------------------------------------------------------------------->
      
          <tr>
            <th>제목</th>
            <td class="title"><input type="text" placeholder=" 제목을 입력하세요." name="title"/></td>
          </tr>

          <!-- 카테고리입력 -------------------------------------------------------------------------->
          <tr>
            <th>카테고리</th>
            <td>
              <select name="cat_main">
                <option SELECTED>선택하세요.</option>
                 <option>클래스</option> 
                 <option>모임</option> 
                 <option>클래스</option> 
                 <option>클래스</option> 
                 <option>클래스</option> 
                 <option>클래스</option> 
              </select>
        </td>

        <td>
          <select name="cat_sub">
            <option SELECTED>선택하세요.</option>
             <option>운동</option> 
             <option>모임</option> 
             <option>클래스</option> 
             <option>클래스</option> 
             <option>클래스</option> 
             <option>클래스</option> 
          </select>
            
            </td>
          </tr>


          <!-- 소개입력 -------------------------------------------------------------------------->
          <tr>
            <th>소개입력</th>
            <td>
              <div id="summernote" name="content"></div>
            </td>
          </tr>

          <!-- 위치입력 -------------------------------------------------------------------------->
          <tr>
            <th>위치</th>
            <td class="address"> <input type="text" id="inputAddress" placeholder="주소를 입력하세요." style="width: 300px;" name="address">
              <input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
              <div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
            </td>
          </tr>


          <!-- 태그달기입력 -------------------------------------------------------------------------->
          <tr>
            <th>태그달기</th>
            <td>
              <div style="width: 500px; margin: 0px auto;">
                <h2 style="font-family:cursive;"></h2>
                <input name="tags" id="inputTag" style="width:500px !important" name="tag"/>
              </div>
            </td>
          </tr>

          <!-- 사진등록입력 -------------------------------------------------------------------------->
          <tr>
            <th>사진등록</th>
            <td>
              <div>
                <div class="inputWrap">
                  <a href="javascript:" onclick="fileUploadAction();" class="photoBtn">사진등록</a>
                  <input type="file" id="inputImgs" multiple name="photo"/>
                </div>
                <br>
                <a href="javascript:" class="photoBtn" onclick="submitAction();">업로드</a>
              </div>
              <div>
                <div class="imgsWrap">
                  <img id="img" class="mx-auto d-block" />
                </div>
              </div>
            </td>
          </tr>

           <!-- 가격입력 -------------------------------------------------------------------------->
      
           <tr>
            <th>가격</th>
            <td class="price"><input type="text" placeholder="가격을 입력하세요." name="price"/>원</td>
          </tr>

          <!-- 등록버튼입력 -------------------------------------------------------------------------->
          <td>
            <div>
              <button type="submit" class="regBtn">등록</button>
            </div>
          </td>

          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

        </tbody>
      </table>
      <!-- Table끝 ----------------------------------------------------------------->

    </form>
    <!-- registerForm끝 ----------------------------------------------------------------->

  </div>
  <!-- Container끝 ----------------------------------------------------------------->

<%@ include file="../includes/footer.jsp" %>


<!-- 카카오맵API ------------------------------------------------------------------------------------------------>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e5d55372dfb08cff48fa326451e35832&libraries=services"></script>
<script>
  $(document).ready(function () {
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
      mapOption = {
        center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
      };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
      position: new daum.maps.LatLng(37.537187, 127.005476),
      map: map
    });
  });

  function sample5_execDaumPostcode() {
    new daum.Postcode({
      oncomplete: function (data) {
        var addr = data.address; // 최종 주소 변수

        // 주소 정보를 해당 필드에 넣는다.
        document.getElementById("inputAddress").value = addr;
        // 주소로 상세 정보를 검색
        geocoder.addressSearch(data.address, function (results, status) {
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
  $('#summernote').summernote({
    placeholder: '내용을 입력하세요',
    tabsize: 2,
    height: 100
  });
</script>
<!--textEditor------------------------------------------------------------------->


<!--첨부파일업로드 ------------------------------------------------------------------->
<script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>
<script type="text/javascript">

  // 이미지 정보들을 담을 배열
  var sel_files = [];


  $(document).ready(function () {
    $("#inputImgs").on("change", handleImgFileSelect);
  });

  function fileUploadAction() {
    console.log("fileUploadAction");
    $("#inputImgs").trigger('click');
  }

  function handleImgFileSelect(e) {

    // 이미지 정보들을 초기화
    sel_files = [];
    $(".imgsWrap").empty();

    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    var index = 0;
    filesArr.forEach(function (f) {
      if (!f.type.match("image.*")) {
        alert("확장자는 이미지 확장자만 가능합니다.");
        return;
      }

      sel_files.push(f);

      var reader = new FileReader();
      reader.onload = function (e) {
        var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction(" + index + ")\" id=\"img_id_" + index + "\"><img src=\"" + e.target.result + "\" data-file='" + f.name + "' class='selProductFile' title='Click to remove'></a>";
        $(".imgsWrap").append(html);
        index++;

      }
      reader.readAsDataURL(f);

    });
  }



  function deleteImageAction(index) {
    console.log("index : " + index);
    console.log("sel length : " + sel_files.length);

    sel_files.splice(index, 1);

    var img_id = "#img_id_" + index;
    $(img_id).remove();
  }

  function fileUploadAction() {
    console.log("fileUploadAction");
    $("#inputImgs").trigger('click');
  }

  function submitAction() {
    console.log("업로드 파일 갯수 : " + sel_files.length);
    var data = new FormData();

    for (var i = 0, len = sel_files.length; i < len; i++) {
      var name = "image_" + i;
      data.append(name, sel_files[i]);
    }
    data.append("image_count", sel_files.length);

    if (sel_files.length < 1) {
      alert("한개이상의 파일을 선택해주세요.");
      return;
    }

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "./study01_af.php");
    xhr.onload = function (e) {
      if (this.status == 200) {
        console.log("Result : " + e.currentTarget.responseText);
      }
    }

    xhr.send(data);
  }
</script>

<!--첨부파일업로드 ------------------------------------------------------------------->


<!-- tagEditor ------------------------------------------------------------------------------->

<script type="text/javascript">
  $('#inputTag').tagsInput();
</script>

<!-- tagEditor ------------------------------------------------------------------------------->
