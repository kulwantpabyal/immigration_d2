<?php
   /*
   Template name: home
   */
      get_header();
      ?>
<style>
   .redy {
   background: #6666661c;
   padding: 80px 0px;
   }
</style>
<section class="top_header_slider">
   <?php get_template_part( 'templates/top-slider' );?>
</section>
<div class="container">
   <section class="cardss">
      <div class="heading_top_all">
         <h2 class="heading">Immigration Plans</h2>
         <!-- <p class="text-center">Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br> Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s,</p> -->
      </div>
      <div class="row">
         <?php
            $categories = get_terms( array( 'taxonomy' => 'category' ) );
              foreach( $categories as $cat ) :
                  $posts = new WP_Query( array(
                      'post_type'     => 'service',
                      'category_name' =>  'immigration',
                      'showposts'     => -1,
                      'tax_query'     => array(
                                             array(
                                                 'taxonomy' => 'category',
                                                 'terms'    => array( $cat->term_id ),
                                                 'field'   => 'term_id'
                                             )
              
                                        )
                  ) ); ?>
         <?php while( $posts->have_posts() ) : $posts->the_post(); ?>
         <div class="col-sm-4">
            <div class="card">
               <div class="text-center">
                  <?php echo the_post_thumbnail();?>
               </div>
               <div class="card-body">
                  <h3 class="card-title"><?php echo the_title();?></h3>
                  <!-- <p class="card-text"><?php echo the_content();?></p> -->
                  <h5 class="card-subtitle"><a href="<?php  echo the_guid();?>">More Details  <i class="fas fa-arrow-right"></i
                     ></a></h5>
               </div>
            </div>
         </div>
         <?php endwhile; wp_reset_postdata(); ?>
         <?php endforeach; ?>
      </div>
   </section>
   <section class="countries">
      <div class="heading_top_all">
         <h2 class="heading">Services We Provided</h2>
      </div>
      <?php get_template_part( 'templates/countries' );?>
   </section>
   <section class="testimonials">
      <div class="heading_top_all">
         <h2 class="heading">Contact Us</h2>
         <!--    <p class="text-center">Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br> Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s,</p> -->
      </div>
      <!--  <?php get_template_part( 'templates/testimonials' );?> -->
      <?php Echo do_shortcode("[contact-form-7 id='657' title='Contact form 1']");?>
   </section>
</div>
<section class="redy">
   <div class="container">
      <div class="row">
         <div class="col-md-6 text-center">
            <h2>Ready to chase your dreams</h2>
         </div>
         <div class="col-md-6 text-center">
            <div class="button">
               <button class="btn btn-primary">More details <i class="fas fa-arrow-right"></i
                  ></button>
            </div>
         </div>
      </div>
   </div>
</section>
<?php   
   get_footer();
   
   ?>