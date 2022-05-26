<?php
   /*
   Template name: contact
   */
      get_header();
      ?>
<style>
   section.top_header_slider {
   /* top: 136px; */
   padding-top: 200px !important;
   padding-bottom: 100px;
   }
   div.wpcf7 {
   width: 30em;
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
<section class=" contact">
   <div class="container">
      <div class="row text-center">
         <div class="col-md-4 contact_list">
              <i class="fas fa-clock mt-4 fa-2x"></i>
                  <p>working hours 
                     mon-friday<br> 9:00 am to 5:30 pm ( eastern time )
                  </p>
         </div>
          <div class="col-md-4  contact_list ">
  
                    <i class="fas fa-phone mt-4 fa-2x"></i>

                  <p>+1 (431)588-2580</p>
         </div>
          <div class="col-md-4  contact_list ">

                  <i class="fas fa-envelope mt-4 fa-2x"></i>
                  <p>contact@mdbootstrap.com</p>
         </div>

      </div>
       
         <div class="col-md-12 text-center p-30">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d19543039.649300434!2d-120.4832965782077!3d55.06980450438607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4b0d03d337cc6ad9%3A0x9968b72aa2438fa5!2sCanada!5e0!3m2!1sen!2sin!4v1653462750062!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
         </div>
      </div>
   </div>
</section>
<?php 
   get_footer();
   
   ?>