
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
					<div class="image">
						<a class="logo" href=""><img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-main.png" /></a>
					</div>
					<div class="text">
						<span class="white">Money Mouth</span>
						<p>Lorem ipsum dolor sit amet adipiscing Lorem ipsum </p>
						<span class="title">Support, Questions, Feedback:</span>
						<span class="white">support@themoneymouth.com</span>
						<span class="title">Investors, Partnerships, General Company Inquiries:</span>
						<span class="white">hq@themoneymouth.com</span>
					</div>
				</div>
				<div class="widget">
					<h6>Menu</h6>
					<ul>
						<li><a href="">Home</a></li>
						<li><a href="">What we do</a></li>
						<li><a href="">Blog</a></li>
						<li><a href="">Contact Us</a></li>
					</ul>
				</div>
				<div class="widget">
					<h6>Socials</h6>
					<ul>
						<li><a href="">Facebook</a></li>
						<li><a href="">Twitter</a></li>
						<li><a href="">Instagram</a></li>
						<li><a href="">Linkdin</a></li>
					</ul>
				</div>
			</div>
			<div class="wrap-bottom-widgets">
				<div class="widget">
					<ul class="social-profiles">
						<li class="facebook"><a style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/social-icons.png);" href=""></a></li>
						<li class="twitter"><a style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/social-icons.png);" href=""></a></li>
						<li class="instagram"><a style="background-image: url(<?php echo get_template_directory_uri(); ?>/assets/images/social-icons.png);" href=""></a></li>
					</ul>
				</div>
				<div class="widget">
					<p>© 2020 Easy. All right reserved.</p>
				</div>
			</div>
		</div>
	</div>
</footer>


</body>

</html>
