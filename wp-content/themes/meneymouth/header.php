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
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>
<div class="body-bg" style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/body-bg.png);"></div>


<header class="site-header">
	<div class="component-container">
		<div class="inner-component">
			<div class="wrap-header-elements">
				<div class="site-logo">
					<a class="logo" href=""><img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-main.png" /></a>
				</div>
				<div class="site-navigation">
					<nav>
						<ul>
							<li class="current-menu-item"><a href="">Home</a></li>
							<li><a href="">Who we are</a></li>
							<li><a href="">What we do</a></li>
							<li><a href="">Contact Us</a></li>
						</ul>
						<a class="mm-button primary" href="">Sing Up</a>
					</nav>
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

<body <?php //body_class('loading'); ?>>



