<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet">
<nav class="limiter-menu-desktop container">
   <div class="col-md-12 col-xl-12 col-sm-12">
      <div class="row">
         <div class="col-md-6 col-xl-6 col-sm-12">
            <a href="http://test.in" class="logo">
            <img src="http://test.in/wp-content/uploads/2022/05/Artboard-1-100-1-3.jpg" alt="IMG-LOGO" class="logo_image">
            </a>
         </div>
         <div class="col-md-6 col-xl-6 col-sm-12">
            <div class="menu-desktop">
               <?php wp_nav_menu( array( 'theme_location' => 'primary') );?>
            </div>
            <div class="menu-hammburger">
               <i class="fas fa-bars"></i>
               <?php wp_nav_menu( array( 'theme_location' => 'primary') );?>
            </div>
         </div>
      </div>
   </div>
</nav>