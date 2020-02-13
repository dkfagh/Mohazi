    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">

<style>
.navbar{ 
    height: 50px;   
    margin-top: 2px;
    background-color: white;   
	border-bottom:#EBEBEB solid 1px;
    opacity: 0.9;
    font-family: 'Nanum Gothic', sans-serif;
    font-size:16px;
	font-weight:bold;
}
.navbar-nav{
    margin-left:19.5%;
}
.nav-item{
    margin-right: 15px;
}
.nav-link{
    color: black;
}
.nav-link:hover{
    color: rgb(161, 159, 159);
}
</style>
    <!-- 네비 --------------------------------- ---->
    <div id="nav">
        <nav class="navbar navbar-expand-sm ">          
              <ul class="navbar-nav">
              	<li class="nav-item">
                  <a class="nav-link" href="/board/list?type=M">모임</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/board/list?type=C">클래스</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/mohazi">뭐하지?</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/FAQ">FAQ</a>
                  </li>
              </ul>            
              <!-- Navbar text
              <span class="navbar-text">
                Navbar text
              </span> -->            
        </nav>
    </div>
	<!-- 네비 ------>
	<script>
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
	</script>