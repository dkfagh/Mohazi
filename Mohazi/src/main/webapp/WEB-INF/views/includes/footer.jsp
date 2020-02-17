<style>
#top-btn {    
    position: fixed;
    right: 1%;
    bottom: 70px;
    display: none;
}
.text-center{
    border-top:  #EBEBEB solid 1px;
    border-bottom: #EBEBEB solid 1px;
}

</style>
   <!-- to top button ------------------------------------------>
   <div id="top-btn">
       <button class="btn btn-outline-secondary">
           <a href="#" class="top"><i class="fas fa-arrow-up"></i></a>
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