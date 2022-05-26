<?PHP get_header();?>

<section class="top_header_slider1">
<article <?php post_class(); ?> id="post-<?php the_ID(); ?>">
	<div class="container  text-center p-30">	
     <h3>
	    <?php echo  the_title();?></h3>
    	<p><?php echo  the_content();?></p>
	    <?php echo  the_post_thumbnail();?>
    </div>

</article>
</section>
<?php get_footer();?>