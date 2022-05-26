<?php
   $args = array(
    'post_type' => 'countries',
   
   
   );
   
   $slides = get_posts( $args );
   $wp_query = new WP_Query($args);
   
   ?>
<div class="wrapper">
   <div class="your-class">
      <?php
         $c = 0;
         $class = '';
         query_posts('post_type=countries');
         if ( have_posts() ) : while ( have_posts() ) : the_post();
             $c++;
         
             $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'thumbnail' );
             $url = $thumb['0'];
         
             $class = ($c == 1) ? 'active' : '';
                 ?>
      <div>
         <div class="col-sm-12">
            <div class="card">
               <div class="card-body">
                  <div class="image_card">
                     <?php echo the_post_thumbnail();?>
                  </div>
                  <h5 class="card-title " ><?php echo the_title();?></h5>
                  <div class="card-text"> <?php echo the_content();?></div>
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
<link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" rel="stylesheet" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<style type="text/css">
   .slick-prev:before,
   .slick-next:before {
   color: red !important;
   }
   .wrapper {
   margin: auto;
   width: 100%;
</style>
<script type="text/javascript">
   $(document).ready(function() {
   $('.your-class').slick({
   dots: true,
   infinite: true,
    autoplay: true,
   autoplaySpeed: 1000,
   speed: 1000,
   slidesToShow: 3,
   slidesToScroll: 3,
   responsive: [{
       breakpoint: 1024,
       settings: {
         slidesToShow: 3,
         slidesToScroll: 3,
         infinite: true,
         dots: true
       }
     },
     {
       breakpoint: 600,
       settings: {
         slidesToShow: 2,
         slidesToScroll: 2
       }
     },
     {
       breakpoint: 480,
       settings: {
         slidesToShow: 1,
         slidesToScroll: 1
       }
     }
     
   ]
   });
   });
</script>