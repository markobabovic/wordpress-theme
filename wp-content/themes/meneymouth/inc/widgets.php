<?php

/**
* Register widgets
*/
add_action( 'widgets_init', 'theme_slug_widgets_init' );
function theme_slug_widgets_init() {
    register_sidebar( array(
        'name' => __( 'Footer widget', 'moneymouth' ),
        'id' => 'footer-widget-1',
        'description' => __( 'Widgets in this area will be shown on all posts and pages.', 'moneymouth' ),
        'before_widget' => '',
        'after_widget' => '',
    ) );

    register_sidebar( array(
        'name' => __( 'Footer widget 2', 'moneymouth' ),
        'id' => 'footer-widget-2',
        'description' => __( 'Widgets in this area will be shown on all posts and pages.', 'moneymouth' ),
        'before_widget' => '',
        'after_widget' => '',
    ));

    register_sidebar( array(
        'name' => __( 'Footer widget 3', 'moneymouth' ),
        'id' => 'footer-widget-3',
        'description' => __( 'Widgets in this area will be shown on all posts and pages.', 'moneymouth' ),
        'before_widget' => '',
        'after_widget' => '',
    ));

    register_sidebar( array(
        'name' => __( 'Footer widget 4', 'moneymouth' ),
        'id' => 'footer-widget-4',
        'description' => __( 'Widgets in this area will be shown on all posts and pages.', 'moneymouth' ),
        'before_widget' => '',
        'after_widget' => '',
	));

    register_sidebar( array(
        'name' => __( 'Subscribe form', 'moneymouth' ),
        'id' => 'subscribe-form',
        'description' => __( 'Widgets in this area will be shown on all posts and pages.', 'moneymouth' ),
        'before_widget' => '',
        'after_widget' => '',
	));

	register_sidebar( array(
		'name' => __( 'Shop sidebar', 'moneymouth' ),
		'id' => 'shop-sidebar'
	) );

	register_widget( 'My_Widget' );
}


/**
* Social media widget
*/
class My_Widget extends WP_Widget {

	/**
	 * Sets up the widgets name etc
	 */
	public function __construct() {
	  $widget_ops = array(
		'classname' => 'my_widget',
		'description' => 'Social Media',
	  );
	  parent::__construct( 'my_widget', 'Social Media', $widget_ops );
	}

	/**
	 * Outputs the content of the widget
	 *
	 * @param array $args
	 * @param array $instance
	 */
	public function widget( $args, $instance ) {  ?>

	  <ul class="social-media">
		<?php if(get_field('instagram_url', 'option')) : ?>
			<li class="instagram"><a href="<?php the_field('instagram_url', 'option') ?>" target="_blank"></a></li>
		<?php endif; ?>

		<?php if(get_field('facebook_url', 'option')) : ?>
			<li class="facebook"><a href="<?php the_field('facebook_url', 'option') ?>" target="_blank" ></a></li>
		<?php endif; ?>
	  </ul>

  <?php  }

	/**
	 * Outputs the options form on admin
	 *
	 * @param array $instance The widget options
	 */
	public function form( $instance ) {
	  // outputs the options form on admin



	}

	/**
	 * Processing widget options on save
	 *
	 * @param array $new_instance The new options
	 * @param array $old_instance The previous options
	 *
	 * @return array
	 */
	public function update( $new_instance, $old_instance ) {
	  // processes widget options to be saved
	}
}

?>
