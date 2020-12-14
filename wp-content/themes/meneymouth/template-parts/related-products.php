<?php
	$related_posts_query = new WP_Query(
		array(
			'post_type'=>'post',
			'post_status'=>'publish',
			'posts_per_page'=> 3,
			'post__not_in' => array( $post->ID ),
			'category__in'   => wp_get_post_categories( $post->ID ),
		)
	);
?>

<section class="articles-list_component related-posts animate-top">
	<div class="container">
		<div class="row">

			<div class="col-md-12">

				<h2 class="text-center"><?= ($cat_slug == 'events') ? __('Discover More Events', 'moneymouth') : __('YOU MIGHT ALSO LIKE', 'moneymouth'); ?></h2>
				<div class="wrap-articles-list ">
					<?php if ( $related_posts_query->have_posts() ) : while ( $related_posts_query->have_posts() ) : $related_posts_query->the_post(); ?>
						<!--Loop posts-->
						<?php get_template_part( 'template-parts/content-loop' ); ?>
					<?php endwhile; ?>
					<?php else : ?>
						<p><?php _e( 'Sorry, no posts matched your criteria.', 'moneymouth' ); ?></p>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
</section>
