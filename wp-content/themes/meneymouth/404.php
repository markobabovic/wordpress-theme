<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package Money Mouth
 */

get_header();
?>
	<section class="single-text_component error404 animate-top">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2><?= __("Page not found!", "moneymouth"); ?></h2>
					<a href="<?php bloginfo('url'); ?>" class="mm-button primary"><?= __("Return to Home", "moneymouth"); ?></a>
				</div>
			</div>
		</div>
	</section>


<?php
get_footer();
