<?php
/**
 * Gutenberg blocks
 */


// Register gutenberg blocks hook
if( function_exists('acf_register_block') ) {
	add_action('acf/init', 'mm_acf_init');
}

// Register individual gutenber blocks. We need to register them before we can add custom fields through ACF interface
function mm_acf_init() {
	acf_register_block_type(array(
		'name'				=> 'demo-block',
		'title'				=> __('Demo block', 'moneymouth'),
		'description'		=> __('Demo block', 'moneymouth'),
		'render_template'	=> 'template-parts/gutenberg-acf-blocks/demo-block.php',
		'icon'				=> 'text',
		'keywords'			=> array( 'image', 'text'),
		)
	);
	acf_register_block_type(array(
		'name'				=> 'page-banner-block',
		'title'				=> __('Page banner block', 'moneymouth'),
		'description'		=> __('Page banner block', 'moneymouth'),
		'render_template'	=> 'template-parts/gutenberg-acf-blocks/page-banner-block.php',
		'icon'				=> 'cover-image',
		'keywords'			=> array( 'image', 'text'),
		)
	);
	acf_register_block_type(array(
		'name'				=> 'image-text-block',
		'title'				=> __('Image with text block', 'moneymouth'),
		'description'		=> __('Image with text block', 'moneymouth'),
		'render_template'	=> 'template-parts/gutenberg-acf-blocks/image-text-block.php',
		'icon'				=> 'welcome-widgets-menus',
		'keywords'			=> array( 'image', 'text'),
		)
	);
	acf_register_block_type(array(
		'name'				=> 'posts-list-block',
		'title'				=> __('Posts list block', 'moneymouth'),
		'description'		=> __('Posts list block', 'moneymouth'),
		'render_template'	=> 'template-parts/gutenberg-acf-blocks/posts-list-block.php',
		'icon'				=> 'columns',
		'keywords'			=> array( 'image', 'text', 'post'),
		)
	);
	acf_register_block_type(array(
		'name'				=> 'social-share-wall-block',
		'title'				=> __('Social share wall block', 'moneymouth'),
		'description'		=> __('Social share wall block', 'moneymouth'),
		'render_template'	=> 'template-parts/gutenberg-acf-blocks/social-share-wall-block.php',
		'icon'				=> 'columns',
		'keywords'			=> array( 'image', 'wall', 'share', 'social'),
		)
	);
	acf_register_block_type(array(
		'name'				=> 'accordion-tabs-block',
		'title'				=> __('Accordian tabs block', 'moneymouth'),
		'description'		=> __('Accordian tabs block', 'moneymouth'),
		'render_template'	=> 'template-parts/gutenberg-acf-blocks/accordion-tabs-block.php',
		'icon'				=> 'columns',
		'keywords'			=> array( 'accordion', 'tabs', 'text', 'faq'),
		)
	);
	acf_register_block_type(array(
		'name'				=> 'feedback-form-block',
		'title'				=> __('Feedback form block', 'moneymouth'),
		'description'		=> __('Feedback form block', 'moneymouth'),
		'render_template'	=> 'template-parts/gutenberg-acf-blocks/feedback-form-block.php',
		'icon'				=> 'columns',
		'keywords'			=> array( 'feeback', 'form', 'text'),
		)
	);
}
