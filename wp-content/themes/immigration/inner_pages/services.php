<?php
   /*
   Template name: services
   */
      get_header();
      ?>
<section class="top_header_slider1">
   <div class="redy">
      <div class="container">
         <div class="row">
            <div class="col-md-12 text-center">
               <h2>Our Services</h2>
            </div>
         </div>
      </div>
   </div>
</section>
<div class="container">
   <section class="services">
      <div class="row text-center">
         <?php
            $categories = get_terms( array( 'taxonomy' => 'category' ) );
            foreach( $categories as $cat ) :
                $posts = new WP_Query( array(
                    'post_type'     => 'service',
                    'showposts'     => -1,
                    'tax_query'     => array(
                                           array(
                                               'taxonomy' => 'category',
                                            
                                               'field'   => 'term_id'
                                           )
            
                                      )
                ) ); ?>
         <?php if( $cat->name != 'Uncategorized'){?> 
         <h3 class="text-center p-30" style="text-transform: uppercase"><?php echo $cat->name; ?></h3>
         <?php while( $posts->have_posts() ) : $posts->the_post(); ?>
         <!--         <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                <div class="mainflip">
                    <div class="frontside">
                        <div class="card">
                            <div class="card-body text-center">
                                  <?php echo the_post_thumbnail();?>
                                <h4 class="card-title"><?php echo the_title();?></h4>
                                <p class="card-text"><?php echo the_content();?></p>
                                
                            </div>
                        </div>
                    </div>
                    <div class="backside">
                        <div class="card">
                            <div class="card-body text-center">
                                <h4 class="card-title"><?php echo the_title();?></h4>
                                <div class="card-text"><?php echo substr(the_content(), 0, 5);?></div>
                                <a href="<?php  echo the_guid();?>">More Details  <i class="fas fa-arrow-right"></i
            ></a>
                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            -->
         <div class="col-xs-12 col-sm-6 col-md-4 card_div_main">
            <div class="card" >
               <div class="card-body text-center">
                  <?php echo the_post_thumbnail();?>
                  <h4 class="card-title"><?php echo the_title();?></h4>
                  <p class="card-text"><?php echo the_content();?></p>
               </div>
               <div class="card__inner">
                  <h2><?php echo the_title();?></h2>
                  <p>
                     <?php echo the_content();?>
                      <a href="<?php  echo the_guid();?>">More Details <i class="fas fa-arrow-right"></i
                      ></a>
                  </p>
                   <a href="<?php  echo the_guid();?>">More Details <i class="fas fa-arrow-right"></i
                      ></a>

               </div>
            </div>
         </div>
         <?php endwhile; wp_reset_postdata(); ?>
         <?php }endforeach; ?>
      </div>
   </section>
</div>
<?php 
   get_footer();
   
   ?>