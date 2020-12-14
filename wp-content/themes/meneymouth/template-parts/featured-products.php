<?php

if(!$args['tax']){
	return false;
}

$featured_products_field = strtolower($args['tax']->name).'_featured_products';

$featured_products = get_field($featured_products_field, 'option');

?>

<?php if ( $featured_products && sizeof($featured_products) > 0 ) :  ?>

<section class="products-slider_component animate-top">
	<div class="container">
		<div class="row">

			<div class="wrap-products-slider">
				<div class="shop-products-slider">

				<?php  foreach($featured_products as $product) : ?>
				<?php
					$product 		= wc_get_product( $product->ID );
					$price 			= $product->get_price();
                    $product_name	= $product->name;
                    $product_image  = wp_get_attachment_image_url( $product->get_image_id(), 'large');
				?>
					<div class="slide">
						<a href="<?php the_permalink(); ?>" class="inner-slide">
							<div class="image">
								<?php if ( has_post_thumbnail() ) : ?>
									<img src="<?= $product_image; ?>" alt="" />
								<?php else : ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/images/image-placeholder.png" alt="">
								<?php endif; ?>
							</div>

							<div class="desc">
								<h5><?= $product_name; ?></h5>
								<h6><?= wc_price($price); ?></h6>
							</div>
						</a>
					</div>
					<?php endforeach; ?>

				</div>
				<div class="slider-arrows">
					<button class="prev"><?= __('Prev', 'moneymouth') ?></button>
					<button class="next"><?= __('Next', 'moneymouth') ?></button>
				</div>

			</div>

		</div>
	</div>
</section>

<?php endif; ?>
