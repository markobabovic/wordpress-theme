<?php
	$heading_text = get_field("heading_text");
	$shortcode = get_field("shortcode");
?>
<section class="social-share-wall-component">
	<div class="component-container">
		<div class="inner-component">

			<div class="component-heading">
				<?= $heading_text; ?>
			</div>

			<div class="wrap-shortcode">
				<?= $shortcode; ?>
			</div>

			</div>
		</div>
	</div>
</section>
