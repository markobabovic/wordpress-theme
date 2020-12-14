<?php
/**
 * The default page template file
 *
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Money Mouth
 */

?>
<?php if( is_account_page() ) acf_form_head(); ?>
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