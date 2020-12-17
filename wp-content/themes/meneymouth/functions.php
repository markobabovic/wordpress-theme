<?php

/**
 * mm functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Money Mouth
 */

if ( ! function_exists( 'mm_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function mm_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on mm, use a find and replace
		 * to change 'mm' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'mm', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'primary-menu' => esc_html__( 'Primary', 'mm' ),
			//'footer-menu' => esc_html__( 'Mobile header menu', 'mm' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );


		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );


		// Add theme support for gutenberg wide alignment.
		add_theme_support( 'align-wide' );

	}
endif;
add_action( 'after_setup_theme', 'mm_setup' );


/**
 * Enqueue scripts and styles.
 */
function mm_scripts() {

	//wp_enqueue_style( 'mm-google-fonts-merriweather', 'https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,900&display=swap');

	wp_enqueue_style( 'mm-style', get_stylesheet_uri() );
	wp_enqueue_script( 'mm-script', get_template_directory_uri() . '/js/script.js', array('jquery'), '20200720', true );

	wp_localize_script( 'mm-script', 'mm_settings', array(
		'ajax_url' => admin_url( 'admin-ajax.php' ),
		'shop' => mm_get_shop_data()
	) );

	// wp_register_script('mm-gma', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAY4lcw5iDUIw4ID4uDHGlVMNGq77IPJM0&callback=initMap&libraries=&v=weekly', '', true );
	// wp_enqueue_script('mm-gma');

	// wp_register_script( 'scroll-reveal', 'https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js', '', '4.0.0', false );
	// wp_enqueue_script('scroll-reveal');
}
add_action( 'wp_enqueue_scripts', 'mm_scripts' );


// Method 1: Filter.
// function my_acf_google_map_api( $api ){
//     $api['key'] = 'AIzaSyAY4lcw5iDUIw4ID4uDHGlVMNGq77IPJM0';
//     return $api;
// }
// add_filter('acf/fields/google_map/api', 'my_acf_google_map_api');

// Method 2: Setting.
// function my_acf_init() {
//     acf_update_setting('google_api_key', 'AIzaSyAY4lcw5iDUIw4ID4uDHGlVMNGq77IPJM0');
// }
// add_action('acf/init', 'my_acf_init');

/**
 * Add livereload js if localhost
 */
function mm_footer_script() {
	if($_SERVER["REMOTE_ADDR"] == '127.0.0.1'):?>
		<script id="__bs_script__">//<![CDATA[
			document.write("<script async src='http://HOST:3000/browser-sync/browser-sync-client.js?v=2.17.5'><\/script>".replace("HOST", location.hostname));
		//]]></script>
	<?php
	endif;
}
add_action( 'wp_footer', 'mm_footer_script' );

/**
 * Load needed stylesheets for Gutenberg backend editor
 */
function mm_load_block_editor_assets() {
	wp_enqueue_style( 'mm-backend', get_stylesheet_directory_uri().'/admin.css' );
};
add_action( 'enqueue_block_editor_assets', 'mm_load_block_editor_assets');

/**
 * Create theme options page
 */
if( function_exists('acf_add_options_page') ) {

    acf_add_options_page(
        array(
            'page_title' => 'Website options',
        )
    );

}

/**
 * Gutenberg blocks
 */
require get_template_directory() . '/inc/blocks.php';

/**
 * Custom post types
 */
require get_template_directory() . '/inc/cpt.php';

/**
 * Theme helper functions
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Widgets
 */
require get_template_directory() . '/inc/widgets.php';

/**
 * Woocommerce additional functions
 */
require get_template_directory() . '/inc/woocommerce-extend.php';


add_filter( 'woocommerce_available_payment_gateways', 'bbloomer_paypal_disable_manager' );

function bbloomer_paypal_disable_manager( $available_gateways ) {
   if ( isset( $available_gateways['paypal'] ) && current_user_can( 'manage_woocommerce' ) ) {
      unset( $available_gateways['paypal'] );
   }
   return $available_gateways;
}

function  mm_get_shop_data(){

	$taxonomies = array(
		'commercial-category',
		'range',
		'special-offers',
		'product-line',
		'season'
	);

	$data = array();

	foreach($taxonomies as $tax){
		$terms = get_terms([
			'taxonomy' => $tax,
			'hide_empty' => false,
		]);
		foreach($terms as $term) :
			$data[$term->term_id] = $term;
		endforeach;

	};

	return $data;

}


remove_filter( 'the_content', 'wpautop' );
remove_filter( 'the_excerpt', 'wpautop' );
remove_filter( 'comment_text', 'wpautop', 30 );
