<?php
   /*
   Template name: consultation
   */
      get_header();
      ?>
<STYLE>
   div.wpcf7 {
   margin: 30px;
   }
</STYLE>
<section class="top_header_slider1">
   <div class="redy">
      <div class="container">
         <div class="row">
            <div class="col-md-12 text-center">
               <h2><?php echo get_the_title();?></h2>
            </div>
         </div>
      </div>
   </div>
   <?php Echo do_shortcode("[contact-form-7 id='786' title='consultation form']");?>
</section>
<?php 
   get_footer();
   
   ?>