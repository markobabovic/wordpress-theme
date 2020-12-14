<?php
$categories = get_the_category();
$cat_id = $categories[0]->term_id;
$cat_color = get_field('category_color', 'category_' . $cat_id);
?>
<div class="article-item">
	<div class="article-item__inner">
		<a href="<?php the_permalink(); ?>" class="article-item__feature-image">
			<?php if ( has_post_thumbnail() ) { ?>
				<img src="<?php the_post_thumbnail_url('large'); ?>" alt="">
			<?php }else{ ?>
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/image-placeholder.png" alt="">
			<?php } ?>
		</a>
		<div class="article-item__details">
			<div class="details__cat-date">
				<span class="cat-name mm-bg-color--<?= $cat_color; ?>"><?= $categories[0]->name; ?></span>
				<span class="date"><?= get_the_date("m/d/Y"); ?></span>
			</div>
			<div class="details__desc">
				<div class="ver-one">
					<h5><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
					<div class="details__desc__excerpt"><?php the_excerpt(); ?></div>
				</div>
				<div class="ver-two">
					<h3><?php the_title(); ?></h3>
					<a href="<?php the_permalink(); ?>" class="mm-button secondary mm-color--<?= $cat_color; ?>">Product name</a>
					<div class="details__desc__excerpt"><?php the_excerpt(); ?></div>
				</div>
			</div>
		</div>
	</div>
</div>
