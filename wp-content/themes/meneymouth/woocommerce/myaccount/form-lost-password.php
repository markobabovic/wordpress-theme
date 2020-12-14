<?php
/**
 * Lost password form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-lost-password.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.5.2
 */

defined( 'ABSPATH' ) || exit;

do_action( 'woocommerce_before_lost_password_form' );
?>

<?php if ( has_post_thumbnail(491) ) { ?>
<div class="page-bg" style="background-image: url('<?php the_post_thumbnail_url('large'); ?>');"></div>
<?php } ?>

<div class="wrap-login-resister-tabs reset-password" id="customer_login">

<div class="wrap-tabs">
	<div class="tab active" id="login-form">
		<h2><?php esc_html_e( 'LOST PASSWORD', 'woocommerce' ); ?></h2>

<form method="post" class="woocommerce-ResetPassword lost_reset_password">

	<p><?php echo apply_filters( 'woocommerce_lost_password_message', esc_html__( 'Lost your password? Please enter your username or email address. You will receive a link to create a new password via email.', 'woocommerce' ) ); ?></p><?php // @codingStandardsIgnoreLine ?>

	<p class="woocommerce-form-row woocommerce-form-row--first form-row form-row-first">
		<input class="woocommerce-Input woocommerce-Input--text input-text" placeholder="<?php esc_html_e( 'Email Address', 'woocommerce' ); ?>" type="text" name="user_login" id="user_login" autocomplete="username" />
	</p>

	<div class="clear"></div>

	<?php do_action( 'woocommerce_lostpassword_form' ); ?>

	<p class="woocommerce-form-row form-row text-center">
		<input type="hidden" name="wc_reset_password" value="true" />
		<button type="submit" class="woocommerce-Button button" value="<?php esc_attr_e( 'Request New Password', 'woocommerce' ); ?>"><?php esc_html_e( 'Request New Password', 'woocommerce' ); ?></button>
	</p>

	<?php wp_nonce_field( 'lost_password', 'woocommerce-lost-password-nonce' ); ?>

</form>

	</div>
	</div>
</div>
<?php
do_action( 'woocommerce_after_lost_password_form' );
