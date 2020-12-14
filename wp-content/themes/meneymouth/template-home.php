<?php
/**
 * Template name: Home
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Money Mouth
 */
?>

<?php get_header(); ?>


<?php
	if ( have_posts() ) :
		while ( have_posts() ) :
			the_post();
			get_template_part( 'template-parts/content-page' );
		endwhile;
	endif;
?>



<?php get_footer(); ?>
