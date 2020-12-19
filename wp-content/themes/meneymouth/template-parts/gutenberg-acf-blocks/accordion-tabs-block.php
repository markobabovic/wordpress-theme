<?php
	$heading_text = get_field("heading_text");
	$blockClass = (isset($block['className'])) ? $block['className'] : "";
?>
<section class="accordion-tabs-slider-component <?= $blockClass; ?>">
	<div class="component-container">
		<div class="inner-component">
			<div class="component-heading">
				<?= $heading_text; ?>
			</div>

			<div class="wrap-accordion-tabs-slider">
			<?php if( have_rows('accordian_item') ): ?>
				<?php while ( have_rows('accordian_item') ) : the_row(); ?>
				<?php
					$head_text = get_sub_field('head_text');
					$body_text = get_sub_field('body_text');
				?>
				<div class="tab">
					<div class="tab-heading">
						<div class="tab-heading-icon">
							<span></span>
							<span></span>
						</div>
						<h5><?= $head_text; ?></h5>
					</div>
					<div class="tab-text">
					<?= $body_text; ?>
					</div>
				</div>
				<?php endwhile; ?>
				<?php else :
						// no rows found
				endif; ?>

			</div>
		</div>
	</div>
</section>
