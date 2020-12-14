<?php get_header(); ?>

<?php
if(is_category()) {
	$category = get_queried_object();
	$cat_id = $category->term_id;
}

?>

<?php
	$paged = ( get_query_var('paged') ) ? get_query_var('paged') : 1;
	$the_query = new WP_Query(array('post_type'=>'post', 'post_status'=>'publish', 'cat'=>$cat_id, 'paged'=>$paged));
?>

<!--Display Journal and events banner reusable block-->
<?php if(get_field('shortcode_for_banner', $category)): ?>
<?= do_shortcode(get_field('shortcode_for_banner', $category)); ?>
<?php endif; ?>

<!--Display list of posts-->
<section class="articles-list_component animate-top" id="articles-list">
	<div class="container">
		<div class="row">

			<!--Include posts category filter-->
			<?php get_template_part( 'template-parts/posts-filter' ); ?>

			<div class="col-md-12">
				<div class="wrap-articles-list ">

				<?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

					<!--Loop posts-->
					<?php get_template_part( 'template-parts/content-loop' ); ?>

					<?php endwhile; ?>

					<?php if ($the_query->max_num_pages > 1) { // check if the max number of pages is greater than 1  ?>
						<div class="col-sm-12">

							<!--Call global pagination-->
							<?php mm_global_pagination($the_query->max_num_pages); ?>
						</div>
					<?php } ?>

					<?php wp_reset_postdata(); ?>

				<?php else : ?>
					<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
				<?php endif; ?>

				</div>
			</div>
		</div>
	</div>
</section>

<!--Include subscribe form-->
<?php
	if(is_active_sidebar('subscribe-form')){
		dynamic_sidebar('subscribe-form');
	}
?>

<?php get_footer(); ?>
