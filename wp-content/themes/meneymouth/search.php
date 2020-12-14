<?php
get_header();
global $wp_query;

$paged = ( get_query_var('paged') ) ? get_query_var('paged') : 1;
?>

<section class="articles-list_component search-results animate-top">
    <div class="container">
    <div class="row">
    <div class="col-md-12">
    <h3 class="search-title"> <?php echo $wp_query->found_posts; ?>
        <?php _e( 'Search Results Found For', 'locale' ); ?>: "<?php the_search_query(); ?>" </h3>

        <div class="wrap-articles-list">
        <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
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

						</div>
						<div class="details__desc">
							<div class="ver-one">
								<h5><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
								<div class="details__desc__excerpt"><?php the_excerpt(); ?></div>
							</div>
							<div class="ver-two">
								<h3><?php the_title(); ?></h3>
								<a href="<?php the_permalink(); ?>" class="mm-button secondary mm-color--">Product name</a>
								<div class="details__desc__excerpt"><?php the_excerpt(); ?></div>
							</div>
						</div>
					</div>
                </div>
            </div>
        <?php endwhile; ?>
        <?php if ($wp_query->max_num_pages > 1) { // check if the max number of pages is greater than 1  ?>
            <div class="col-sm-12">
                <?php mm_global_pagination($wp_query->max_num_pages); ?>
            </div>
        <?php } ?>

        <?php wp_reset_postdata(); ?>

        <?php else : ?>
        <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
        <?php endif; ?>

        </div>
    </div>
    </div>
    </div>
</section>



<?php get_footer(); ?>
