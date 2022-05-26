<?php

function custom_theme_assets() {
	wp_enqueue_style( 'style', get_stylesheet_uri() );
}

add_action( 'wp_enqueue_scripts', 'custom_theme_assets' );

register_nav_menu('primary-header-menu',__( 'Header Menu' ));


register_nav_menus(array(
    'primary' => __('Primary Menu', 'My_First_WordPress_Theme'),
    'secondary' => __('Secondary Menu',       'My_First_WordPress_Theme'),
    'My_custome_menu' => __('finally Menu', 'My_First_WordPress_Theme')
));

add_theme_support( 'post-thumbnails');

add_theme_support( 'title-tag' );

    /*
     * Switch default core markup for search form, comment form, and comments
     * to output valid HTML5.
     */
    add_theme_support(
        'html5',
        array(
            'search-form',
            'comment-form',
            'comment-list',
            'gallery',
            'caption',
            'script',
            'style',
            'navigation-widgets',
        )
    );
function immigration_sidebar_registration() {

    // Arguments used in all register_sidebar() calls.
    $shared_args = array(
        'before_title'  => '<h2 class="widget-title subheading heading-size-3">',
        'after_title'   => '</h2>',
        'before_widget' => '<div class="widget %2$s"><div class="widget-content">',
        'after_widget'  => '</div></div>',
    );

    // Footer #1.
    register_sidebar(
        array_merge(
            $shared_args,
            array(
                'name'        => __( 'Footer #1', 'immigration' ),
                'id'          => 'sidebar-1',
                'description' => __( 'Widgets in this area will be displayed in the first column in the footer.', 'immigration' ),
            )
        )
    );

    // Footer #2.
    register_sidebar(
        array_merge(
            $shared_args,
            array(
                'name'        => __( 'Footer #2', 'immigration' ),
                'id'          => 'sidebar-2',
                'description' => __( 'Widgets in this area will be displayed in the second column in the footer.', 'immigration' ),
            )
        )
    );

}

add_action( 'widgets_init', 'immigration_sidebar_registration' );

add_theme_support( 'custom-logo', array(
    'height'               => 100,
    'width'                => 400,
    'flex-height'          => true,
    'flex-width'           => true,
    'header-text'          => array( 'site-title', 'site-description' ),
    'unlink-homepage-logo' => true,
) );


function site_logo()
    {
        $custom_logo_id = get_theme_mod( 'custom_logo' );
        $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );

        if ( has_custom_logo() ) {
        echo '<a href="'.get_home_url().'" ><img class="custom-logo" src="' . esc_url( $logo[0] ) . '" alt="' . get_bloginfo( 'name' ) . '"></a>';
        } else {
        echo '<a href="'.get_home_url().'" ><h3>' . get_bloginfo('name') . '</h3></a>';
        }
    }

    function tp_scripts() {
    wp_enqueue_style( 'default', get_stylesheet_uri() );
    wp_enqueue_style( 'bootstrap-min', get_template_directory_uri().'/assets/css/bootstrap.min.css' );
    wp_enqueue_script( 'jquery-local', get_template_directory_uri() . '/assets/js/jquery.min.js' );
    wp_enqueue_script( 'bootstrap-min', get_template_directory_uri() . '/assets/js/bootstrap.min.js');
  
}
add_action( 'wp_enqueue_scripts', 'tp_scripts' );
add_action('wp_head', 'header_custom');
function header_custom(){

   
              
    get_template_part( 'templates/header_template' );
           

}
function footer_custom(){
    get_template_part( 'templates/footer_template' );
}

add_action('wp_footer', 'footer_custom');
?>






