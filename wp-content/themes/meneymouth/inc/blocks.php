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
}
