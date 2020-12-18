<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Money Mouth
 */

?>

<?php the_content(); ?>

<section class="banner-component">
	<div class="banner-bg" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/banner-component-bg.png);">
		<img src="<?php echo get_template_directory_uri(); ?>//assets/images/banner-component-bg.png" />
	</div>
	<div class="component-container">
		<div class="inner-component">
			<div class="banner-heading-form">
				<div class="text">
					<h1>MoneyMouth App</h1>
				</div>
				<div class="wrap-form">
					<form action="">
						<div class="sing-up-form">
							<div class="input-field email">
								<input type="email" placeholder="Enter your email">
							</div>
							<div class="input-field">
								<input type="submit" class="mm-button primary" value="Sign Up">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="image-text-posts-component">
	<div class="component-container">
		<div class="inner-component">
			<div class="wrap-posts">
				<div class="item">
					<div class="inner-item">
						<div class="image">
							<img src="<?php echo get_template_directory_uri(); ?>//assets/images/post-img.png" />
						</div>
						<div class="desc">
							<div class="text">
								<h3>Lorem ipsum dolor</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisc; sed do eiusmod tempor incididunt ut laboreet dolore magna</p>
							</div>
							<a class="mm-button primary" href="">Learn more</a>
							<a class="mm-button secondary"  href="">Learn more</a>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="inner-item">
						<div class="image">
							<img src="<?php echo get_template_directory_uri(); ?>//assets/images/post-img.png" />
						</div>
						<div class="desc">
							<div class="text">
								<h3>Lorem ipsum dolor</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisc; sed do eiusmod tempor incididunt ut laboreet dolore magna</p>
							</div>
							<a class="mm-button primary" href="">Learn more</a>
							<a class="mm-button secondary"  href="">Learn more</a>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="inner-item">
						<div class="image">
							<img src="<?php echo get_template_directory_uri(); ?>//assets/images/post-img.png" />
						</div>
						<div class="desc">
							<div class="text">
								<h3>Lorem ipsum dolor</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisc; sed do eiusmod tempor incididunt ut laboreet dolore magna</p>
							</div>
							<a class="mm-button primary" href="">Learn more</a>
							<a class="mm-button secondary"  href="">Learn more</a>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="inner-item">
						<div class="image">
							<img src="<?php echo get_template_directory_uri(); ?>//assets/images/post-img.png" />
						</div>
						<div class="desc">
							<div class="text">
								<h3>Lorem ipsum dolor</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisc; sed do eiusmod tempor incididunt ut laboreet dolore magna</p>
							</div>
							<a class="mm-button primary" href="">Learn more</a>
							<a class="mm-button secondary"  href="">Learn more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
