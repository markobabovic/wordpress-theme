<?php
	$heading_text = get_field("heading_text");
	$shortcode = get_field("shortcode");
	$blockClass = (isset($block['className'])) ? $block['className'] : "";
?>
<section class="textarea-field-component <?= $blockClass; ?>">
	<div class="component-container">
		<div class="inner-component">
			<div class="component-heading">
				<?= $heading_text; ?>
			</div>

			<div class="wrap-feedback-form">
				<?= $shortcode; ?>
			</div>
		</div>
	</div>
</section>
