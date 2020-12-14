<div class="articles-filter col-md-12">
	<label for=""><?= __("Filter By:", "moneymouth"); ?></label>
	<?php
		$terms = get_terms( array(
			'taxonomy' => 'category', // to make it simple I use default categories
			'orderby' => 'name'
		));

		if($terms) :
			// if categories exist, display the dropdown
			echo '<select name="categoryfilter" class="category-selector"><option value="" disabled selected>'. __("Select", "moneymouth"). '</option><option value="all">'. __("All", "moneymouth"). '</option>';
			foreach ( $terms as $term ) :
				$selected = ($cat_id == $term->term_id) ? "selected" : "";
				echo '<option value="' . $term->slug . '" '.$selected.'>' . $term->name. '</option>'; // ID of the category as an option value
			endforeach;
			echo '</select>';
		endif;
	?>
</div>
