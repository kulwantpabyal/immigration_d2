<?php
   /*
   Template name: About
   */
      get_header();
      ?>
<style>
   img.attachment-post-thumbnail.size-post-thumbnail.wp-post-image {
   width: 100%;
   padding: 20px;
   }
   h2.heading {
   text-align: center;
   color: #0071bc;
   font-weight: 700;
   padding-bottom: 60px;
   padding-top: 60px;
   }


</style>
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
</section>
<div class="container">
<div class="awards">
   <?php
      $args = array(
       'post_type' => 'about',
       'post_status' => 'publish', 
        'orderby' => 'title', 
        'order' => 'ASC', 
      
      );
      
      $slides = get_posts( $args );
      $wp_query = new WP_Query($args);
      
      ?>
   <div class="wrapper">
      <div class="license">
         <?php
            if ( have_posts() ) : while ( have_posts() ) : the_post();
            
                    ?>
         <div class="row">
            <div class="col-md-6 text-center">
               <div class="about_us_text">
                  <?php echo the_content();?>
               </div>
            </div>
            <div class="col-md-6 text-center about_us_image_section">

                <div class="about_us_image">
                  <div class="post_thumbnail_about">
                  <?php echo the_post_thumbnail();?>
                   </div>
                </div>
            </div>
         </div>
         <?php
            endwhile;endif;
            wp_reset_query();
            ?>
      </div>
   </div>
   <div class="awards">
      <?php
         $args = array(
          'post_type' => 'awards_and_licence',
          'post_status' => 'publish', 
           'orderby' => 'title', 
           'order' => 'ASC', 
         
         );
         
         $slides = get_posts( $args );
         $wp_query = new WP_Query($args);
         
         ?>
      <div class="wrapper">
         <div class="license awrds">
            <h2 class="heading">Awards and License</h2>
            <?php
               if ( have_posts() ) : while ( have_posts() ) : the_post();
               
                       ?>
            <div class="row">
             <div class="col-md-6 text-center about_us_image_section">

                <div class="about_us_image">
                  <div class="post_thumbnail_about">
                  <?php echo the_post_thumbnail();?>
                   </div>
                </div>
            </div>
               <div class="col-md-6">
                  <div class="awards_text">
                     <h4 class="text-center "><?php echo the_title();?></h4>
                     <div class="award_us_text"> 
                        <?php echo the_content();?>
                     </div>
                  </div>
               </div>
            </div>
            <?php
               endwhile;endif;
               wp_reset_query();
               ?>
         </div>
      </div>
   </div>
</div>
<?php 
   get_footer();
   
   ?>