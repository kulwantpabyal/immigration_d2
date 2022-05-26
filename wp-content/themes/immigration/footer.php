
<script>jQuery(function($) {
   var path = window.location.href; 
   console.log(path)
   $('.site-header a').each(function() {
    if (this.href === path) {
    
     $(this).addClass('active');
    }
   });
   });
</script>
</div> <!-- closes <div class=container"> -->




<?php wp_footer() ?>


</body>
</html>