<!DOCTYPE html>
<html <?php language_attributes(); ?>>
   <head>
      <meta charset="<?php bloginfo( 'charset' ); ?>">
      <title><?php bloginfo( 'name' ); ?></title>
   </head>
   <body <?php body_class(); ?>>
      <header class="site-header">
         <?php wp_head() ?>
      </header>