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


<section class="banner-component">
	<div class="banner-bg" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/banner-component-bg.png);">
	<img src="<?php echo get_template_directory_uri(); ?>//assets/images/banner-component-bg.png" />
</div>
	<div class="component-container">
		<div class="inner-component">
			<div class="banner-heading-form">
				<div class="text">
					<h1>MoneyMouth - the Easiest way to bet on anything!</h1>
					<p>Enter your email below to get the latest updates on MoneyMouth</p>
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



<?php get_footer(); ?>
