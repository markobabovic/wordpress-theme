<div class="my-credit-account">
	<?php
	$user_id = get_current_user_id();
	$is_accredited = get_field('is_accredited', 'user_'.$user_id);
	$accreditation_submitted = get_field('accreditation_data_submitted', 'user_'.$user_id);
	if($is_accredited || $accreditation_submitted ) :
		echo "Your form is pending review";
	else :
	?>
	<p>To be able to <a href="">Pay by invoice, please fill and submit the form below.</a></p>
	<?php
		$options = array(
			'field_groups' => ['group_5fa4754abb1f6'],
			'post_id' => 'new_post',
			'new_post' => array(
				'post_type'		=> 'accreditation',
				'post_status'	=> 'publish'
			),
			'post_title'      => 'test title',
			'post_content'    => false,
			'submit_value'    => __('Submit', 'mm'),
			'updated_message' => __('Accreditation submission sent', 'mm'),
			'form' => true
		);

		acf_form($options);
	?>
</div>
<?php endif; ?>
