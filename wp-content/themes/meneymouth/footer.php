
<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Money Mouth
 */
?>



<?php wp_footer(); ?>
<footer>
	<div class="component-container">
		<div class="inner-component">
			<div class="footer-bg">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer-bg.png" />
			</div>

			<div class="wrap-footer-widgets">
				<div class="widget">
					<?php
						if(is_active_sidebar('footer-widget-1')){
							dynamic_sidebar('footer-widget-1');
						}
					?>
				</div>
				<div class="widget">
					<?php
						if(is_active_sidebar('footer-widget-2')){
							dynamic_sidebar('footer-widget-2');
						}
					?>
				</div>

			</div>
			<div class="wrap-bottom-widgets">
				<div class="widget">
					<?php
						if(is_active_sidebar('footer-widget-4')){
							dynamic_sidebar('footer-widget-4');
						}
					?>
				</div>
				<div class="widget">
					<?php
						if(is_active_sidebar('footer-widget-5')){
							dynamic_sidebar('footer-widget-5');
						}
					?>
				</div>
			</div>
		</div>
	</div>
</footer>


</body>

</html>
