<?php
	$heading_text = get_field("heading_text");
	$shortcode = get_field("shortcode");
?>
<section class="textarea-field-component">
	<div class="component-container">
		<div class="inner-component">
			<div class="component-heading">
				<?= $heading_text; ?>
			</div>

			<div class="wrap-feedback-form">
				<?= $shortcode; ?>
				<form action="">
					<div class="feedback-form">
						<div class="input-field">
							<textarea name="" id="" cols="30" rows="10" placeholder="Enter your comment"></textarea>
						</div>
						<div class="input-field submit-field">
							<input type="submit" value="Comment">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
