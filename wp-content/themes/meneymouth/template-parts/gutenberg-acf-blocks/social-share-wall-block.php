<?php
	$heading_text = get_field("heading_text");
	$shortcode = get_field("shortcode");
	$blockClass = (isset($block['className'])) ? $block['className'] : "";
?>
<section class="social-share-wall-component <?= $blockClass; ?>">
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
