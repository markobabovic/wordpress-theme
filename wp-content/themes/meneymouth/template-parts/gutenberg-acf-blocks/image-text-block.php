<?php
	$heading_text = get_field("heading_text");
	$image = get_field("image");
	$text_content = get_field("text_content");
	$blockClass = (isset($block['className'])) ? $block['className'] : "";
?>
<section class="image-text-component <?= $blockClass; ?>">
	<div class="component-container">
		<div class="inner-component">
			<div class="component-heading">
				<?= $heading_text; ?>
			</div>
			<div class="image-text-wrapper">
				<?php if($image) { ?>
					<div class="image">
						<img src="<?= $image['url']; ?>" alt="<?= $image['alt']; ?>" />
					</div>
				<?php } ?>
				<div class="desc">
					<div class="text">
						<?= $text_content; ?>
					</div>

					<?php if( have_rows('button_1') ): ?>
						<?php while( have_rows('button_1') ): the_row();
							// Get sub field values.
							$button_label = get_sub_field('button_label');
							$button_url = get_sub_field('button_url');
							?>
							<?php if($button_label): ?>
							<a class="mm-button mm-bg-color--gold" href="<?= $button_url; ?>"><?= $button_label; ?></a>
							<?php endif; ?>

						<?php endwhile; ?>
					<?php endif; ?>

					<?php if( have_rows('button_2') ): ?>
						<?php while( have_rows('button_2') ): the_row();
							// Get sub field values.
							$button_label = get_sub_field('button_label');
							$button_url = get_sub_field('button_url');
							?>
							<?php if($button_label): ?>
							<a class="mm-button primary" href="<?= $button_url; ?>"><?= $button_label; ?></a>
							<?php endif; ?>

						<?php endwhile; ?>
					<?php endif; ?>

				</div>
			</div>
		</div>
	</div>
</section>
