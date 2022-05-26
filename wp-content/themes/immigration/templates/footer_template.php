<footer class="bg-primary text-white text-center text-lg-start">
   <!-- Grid container -->
   <div class="container">
      <!--Grid row-->
      <div class="row">
         <!--Grid column-->
         <div class="col-lg-3 col-md-6">
            <img src="http://test.in/wp-content/uploads/2022/05/Artboard-1-1-1.png" alt="" class="footer_logo">
            <p >
               We are always availed to consult on taking your higher education to the next level so you can stay competitive in
            </p>
            <!--   <p class="copyright_reserved">
               © <?php echo date("Y");?> Copyright All rights reserved
               </p> -->
         </div>
         <!--Grid column-->
         <!--Grid column-->
         <div class="col-lg-3 col-md-6 ">
            <?php wp_nav_menu( array( 'theme_location' => 'primary') );?>
         </div>
         <!--Grid column-->
         <!--Grid column-->
         <div class="col-lg-3 col-md-6 ">
            <ul class="list-unstyled">
               <?php
                  $c = 0;
                  $class = '';
                  query_posts('post_type=service&category_name=Sponsorship');
                  if ( have_posts() ) : while ( have_posts() ) : the_post();
                      $c++;
                  
                      $thumb = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'thumbnail' );
                      $url = $thumb['0'];
                  
                      $class = ($c == 1) ? 'active' : '';
                          ?>
               <li>
                  <a href="<?php  echo the_guid();?>" class="text-white"><?PHP ECHO THE_TITLE();?></a>
               </li>
               <?php
                  endwhile;endif;
                  wp_reset_query();
                  ?>
            </ul>
         </div>
         <div class="col-lg-3 col-md-6 ">
            <h5 class="text-uppercase ">Follow us on</h5>
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
         <!--Grid column-->
      </div>
      <!--Grid row-->
   </div>
   <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      © <?php echo date("Y");?> Copyright:
      <a class="text-white" href="https://test.in/">D2Immigration.ca</a>
   </div>
</footer>