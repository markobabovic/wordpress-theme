<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Money Mouth
 */

$title 	= get_the_title();

?>

<section class="single-post-component">
	<div class="component-container">
		<div class="inner-component">
			<div class="single-post-content">
				<div class="image-title">
					<div class="image">
						<?php if ( has_post_thumbnail() ) { ?>
							<img src="<?php the_post_thumbnail_url('large'); ?>" alt="">
						<?php }else{ ?>
							<img src="<?php echo get_template_directory_uri(); ?>/assets/images/image-placeholder.png" alt="">
						<?php } ?>
					</div>
					<div class="post-title">
						<h1><?= $title; ?></h1>

						<div class="post-info">
							<div class="author">
								<span class="author-img">
									<img src="<?php echo get_avatar_url($get_author_id, array('size' => 450)); ?>" />
								</span>
								<span class="author-name">
									<?php echo get_the_author_meta('first_name', $author_id); ?>
								</span>
							</div>
							<div class="publish-date">
								<span><?php the_date(); ?></span>
							</div>
						</div>
					</div>
				</div>
				<div class="text">
					<?php the_content(); ?>
				</div>
			</div>
		</div>
	</div>
</section>
