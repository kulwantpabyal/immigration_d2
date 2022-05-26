<?php
   $args = array(
    'post_type' => 'slider',
     'post_status' => 'publish', 
        'order' => 'DEsc', 
   
   
   );
   
   $slides = get_posts( $args );
   $wp_query = new WP_Query($args);
   
   ?>

   <div id="mycarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
   <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">


      <?php
    $c = 0;
    $class = '';
    
    if ( have_posts() ) : while ( have_posts() ) : the_post();
        $c++;

        $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'thumbnail' );
        $url = $thumb['0'];

        $class = ($c == 1) ? 'active' : '';
            ?>
              <div class="carousel-item <?php echo $class; ?>" data-bs-interval="10000">
         <div class="row">
            <div class="col-md-6 col-xl-6 col-sm-12 p-30 text_description_title">
              <div class="title">
               <h2 class="title_slider"><?php echo the_title();?></h2>
             </div>
           <div class="description">
               <?php echo the_content();?>
           </div>
            <div class="social_icons">
              <ul class="icons">
        <li>
        <a
        class="btn btn-link"
        href="#!"
        role="button"
        data-mdb-ripple-color="dark"
        ><i class="fab fa-facebook"></i
      ></a>
    </li>
   
<li>
      <!-- Twitter -->
      <a
        class="btn btn-link"
        href="#!"
        role="button"
        data-mdb-ripple-color="dark"
        ><i class="fab fa-twitter"></i
      ></a>
    </li>
<li>
      <!-- Google -->
      <a
        class="btn btn-link"
        href="#!"
        role="button"
        data-mdb-ripple-color="dark"
        ><i class="fab fa-google"></i
      ></a>

      </li>
      <!-- Linkedin -->
      <li>
      <a
        class="btn btn-link"
        href="#"
        role="button"
        data-mdb-ripple-color="dark"
        ><i class="fab fa-linkedin"></i
      ></a>
      <!-- Github -->
    </li>
    </ul>
           </div>
            </div>
            <div class="col-md-6 col-xl-6 col-sm-12">
            	<div class="the_post_thumbnail">
               <?php echo the_post_thumbnail();?>
           </div>
            </div>
         </div>
    </div>
             <?php
    endwhile;endif;
    wp_reset_query();
?>
      
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
      </button>
   </div>



