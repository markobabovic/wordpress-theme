<?php
$banner_text = get_field("banner_text");
$form_shortcode = get_field("form_shortcode");
$blockClass = (isset($block['className'])) ? $block['className'] : "";
?>
<section class="banner-component <?= $blockClass; ?>">
	<div class="banner-bg" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/banner-component-bg.png);">
		<img src="<?php echo get_template_directory_uri(); ?>//assets/images/banner-component-bg.png" />
	</div>
	<div class="component-container">
		<div class="inner-component">
			<div class="banner-heading-form">
				<div class="text">
					<?= $banner_text; ?>
				</div>
				<div class="wrap-form">
					<?= $form_shortcode; ?>
				</div>
				<div class="wrap-store-buttons">
					<a class="mm-button gold-btn" href="">
						Google Play <span>(Comming Soon)</span>
					</a>
					<a class="mm-button gold-btn" href="">
						App store <span>(Comming Soon)</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
