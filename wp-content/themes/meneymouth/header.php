<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Money Mouth
 */

?>

<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<?php if(get_field('favicon_header', 'option')){ ?>
        <link rel="icon" type="image/png" sizes="32x32" href="<?php echo the_field('favicon_header', 'option'); ?>">
    <?php } ?>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-4C2PGKFNL0"></script>
	<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());

	gtag('config', 'G-4C2PGKFNL0');
	</script>

	<?php wp_head(); ?>
</head>

<?php
$header_logo = get_field('logo_header', 'option');
$transparent_header = get_field('transparent_header');
?>

<body <?php body_class($transparent_header[0]); ?> >

<div class="body-bg" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/body-bg.png);"></div>
<header class="site-header">
	<div class="component-container">
		<div class="inner-component">
			<div class="wrap-header-elements">
				<div class="site-logo">
					<!-- Logo -->
					<?php if($header_logo) : ?>
						<a href="<?php bloginfo('url'); ?>" class="logo"><img src="<?= $header_logo['url']; ?>" alt=""></a>
					<?php endif; ?>
				</div>
				<div class="site-navigation">
					<!-- Main header navigation -->
					<?php get_template_part('template-parts/primary-navigation'); ?>
				</div>
				<a href="" class="hamburger-menu-btn">
					<span></span>
					<span></span>
					<span></span>
				</a>
			</div>
		</div>
	</div>
</header>


