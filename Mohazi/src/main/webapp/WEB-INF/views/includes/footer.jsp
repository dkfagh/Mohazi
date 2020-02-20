<style>
#top-btn {    
    position: fixed;
    border:0px;
    right: 1%;
    bottom: 70px;
    display: none;
    background-color:#e9faf2;
}

#btnArrow{
    color:#66a385;
    background-color:#e9faf2;
    border:0px;
}

.text-center{
    border-top:  #EBEBEB solid 1px;
    border-bottom: #EBEBEB solid 1px;
}

.text-center p{
	font-family: 'Nanum Gothic', sans-serif !important;
}


</style>
   <!-- to top button ------------------------------------------>
   <div id="top-btn">
       <button class="btn">
           <a href="#" class="top"><i class="fas fa-arrow-up" id="btnArrow"></i></a>
       </button>
   </div>
    <!-- to top button ---> 
    <!-- footer ------------------------------------------>
    <footer class="text-center" style="padding-top:20px">       
        <p>&copy;MOHAZI All right reserved.</p>
    </footer>	 
    <!-- footer ----->
            
    <script>
	  //to top 버튼
	  $( window ).scroll( function() {
          if ( $( this ).scrollTop() > 200 ) {
              $( '#top-btn' ).fadeIn();
          } else {
              $( '#top-btn' ).fadeOut();
          }
          });
          $( '#top-btn' ).click( function() {
          $( 'html, body' ).animate( { scrollTop : 0 }, 400 );
          return false;
          } );
    </script>
    

</body>
</html>