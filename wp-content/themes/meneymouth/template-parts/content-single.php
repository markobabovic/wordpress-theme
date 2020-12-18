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
						<img src="<?php echo get_template_directory_uri(); ?>//assets/images/single-post-img.jpg" />
					</div>
					<div class="post-title">
						<h1>How to cowork in the best way in the Super offices</h1>

						<div class="post-info">
							<div class="author">
								<span class="author-img">
									<img src="<?php echo get_template_directory_uri(); ?>//assets/images/author-post-img.jpg" />
								</span>
								<span class="author-name">
									Lissa Lennon
								</span>
							</div>
							<div class="publish-date">
								<span>May, 15</span>
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
