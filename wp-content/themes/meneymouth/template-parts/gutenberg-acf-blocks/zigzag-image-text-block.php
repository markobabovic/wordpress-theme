
<?php
	$blockClass = (isset($block['className'])) ? $block['className'] : "";
?>
<section class="image-text-posts-component <?= $blockClass; ?>">
	<div class="component-container">
		<div class="inner-component">
			<div class="wrap-posts">

			<?php if( have_rows('zig_zagg_item') ): ?>
				<?php while ( have_rows('zig_zagg_item') ) : the_row(); ?>
				<?php
					$image_content = get_sub_field('image_content');
					$text_content = get_sub_field('text_content');
				?>

					<div class="item">
						<div class="inner-item">
							<div class="image">
							<?php if($image_content): ?>
								<img src="<?= $image_content['url']; ?>" alt="<?= $image_content['alt']; ?>" />
							<?php endif; ?>
							</div>
							<div class="desc">
								<div class="text">
									<?= $text_content; ?>
								</div>

								<?php if( have_rows('cta_button_1') ): ?>
									<?php while( have_rows('cta_button_1') ): the_row();
										// Get sub field values.
										$button_label = get_sub_field('button_label');
										$button_url = get_sub_field('button_url');
										?>
										<?php if($button_label): ?>
										<a class="mm-button primary" href="<?= $button_url; ?>"><?= $button_label; ?></a>
										<?php endif; ?>

									<?php endwhile; ?>
								<?php endif; ?>

								<?php if( have_rows('cta_button_2') ): ?>
									<?php while( have_rows('cta_button_2') ): the_row();
										// Get sub field values.
										$button_label = get_sub_field('button_label');
										$button_url = get_sub_field('button_url');
										?>
										<?php if($button_label): ?>
										<a class="mm-button secondary" href="<?= $button_url; ?>"><?= $button_label; ?></a>
										<?php endif; ?>

									<?php endwhile; ?>
								<?php endif; ?>

							</div>
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
