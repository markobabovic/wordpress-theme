<?php
	$heading_text = get_field("heading_text");
	$number_of_posts_to_show = get_field("number_of_posts_to_show");
	$the_query = new WP_Query(array('post_type'=>'post', 'post_status'=>'publish', 'posts_per_page'=>$number_of_posts_to_show));
	$blockClass = (isset($block['className'])) ? $block['className'] : "";
?>
<section class="slider-component <?= $blockClass; ?>">
	<div class="component-container">
		<div class="inner-component">
			<div class="component-heading">
				<?= $heading_text; ?>
			</div>

			<div class="wrap-slider-items">

				<?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
					<?php
						$categories = get_the_category();
						$cat_id = $categories[0]->term_id;
					?>
					<div class="slide">
						<a href="<?php the_permalink(); ?>" class="inner-slide">
							<div class="image">

							<?php if ( has_post_thumbnail() ) { ?>
								<img src="<?php the_post_thumbnail_url('large'); ?>" alt="<?php the_title(); ?>">
							<?php }else{ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/images/image-placeholder.png" alt="">
							<?php } ?>

							</div>
							<div class="text">
								<span>
									<?php
										$cat_length = count($categories);
										$cat_i = 1;
										foreach($categories as $category) {
											echo $category->name;
											echo ($cat_i != $cat_length) ? "/" : "";

											$cat_i++;
										}
									?>
								</span>
							</div>
						</a>
					</div>
				<?php endwhile; ?>
				<?php else : ?>
					<p><?php _e('Sorry, no posts matched your criteria.', 'hybridag'); ?></p>
				<?php endif; ?>

			</div>
		</div>
	</div>
</section>
