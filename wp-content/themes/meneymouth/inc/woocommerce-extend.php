<?php


/**
 * Woocommerce support
 */
add_action( 'after_setup_theme', 'mm_woocommerce_support' );
function mm_woocommerce_support() {
    add_theme_support( 'woocommerce' );
    add_theme_support( 'wc-product-gallery-zoom' );
    add_theme_support( 'wc-product-gallery-lightbox' );
    add_theme_support( 'wc-product-gallery-slider' );
}


/**
* add product description after product title in loop
*/
add_action('woocommerce_after_shop_loop_item_title', 'mm_description_in_shop_loop_item', 3 );
function mm_description_in_shop_loop_item() {
    global $product;

    // HERE define the number of characters
    $limit = 75;
    $description = $product->get_short_description();  // Product short description

    // Limit the characters length
    if (strlen($description) > $limit) {
        $excerpt = substr($description, 0, $limit) . '...';
    } else {
        $excerpt = $description;
    }

    echo '<div class="description">'.$excerpt.'</div>';
}


/**
* Remove after loop with add to cart on shop and product category page
*/
remove_action( 'woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart', 10 );


/**
* Register new registration fields
*/
add_action( 'woocommerce_register_form_start', 'mm_add_register_form_field' );
function mm_add_register_form_field(){

	woocommerce_form_field(
		'first_name',
		array(
			'type'        => 'text',
			'required'    => true, // just adds an "*"
			'label'       => false,
			'placeholder' => 'First Name'
		),
		( isset($_POST['first_name']) ? $_POST['first_name'] : '' )
	);

	woocommerce_form_field(
		'last_name',
		array(
			'type'        => 'text',
			'required'    => true, // just adds an "*"
			'label'       => false,
			'placeholder' => 'Last Name'
		),
		( isset($_POST['last_name']) ? $_POST['last_name'] : '' )
	);

	woocommerce_form_field(
		'company_name',
		array(
			'type'        => 'text',
			'required'    => false,
			'label'       => false,
			'placeholder' => 'Company Name'
		),
		( isset($_POST['company_name']) ? $_POST['company_name'] : '' )
	);

}

add_action( 'woocommerce_register_form', 'mm_add_register_form_field_after_defaults' );
function mm_add_register_form_field_after_defaults() {
	woocommerce_form_field(
		'password2',
		array(
			'type'        => 'password',
			'required'    => true, // just adds an "*"
			'label'       => false,
			'placeholder' => 'Repeat Your Password'
		),
		( isset($_POST['password2']) ? $_POST['password2'] : '' )
	);
}

/**
* Validate new registration fields
*/
add_action( 'woocommerce_register_post', 'mm_validate_fields', 10, 3 );
function mm_validate_fields( $username, $email, $errors ) {
	global $woocommerce;
	extract( $_POST );

	if ( empty( $_POST['first_name'] ) ) {
		$errors->add( 'name_error', 'Please insert your name!' );
	}

	if ( empty( $_POST['last_name'] ) ) {
		$errors->add( 'last_name', 'Please insert your last name!' );
	}

	if ( strcmp( $password, $password2 ) !== 0 ) {
		$errors->add( 'password2', 'Passwords do not match.' );
	}
}

add_action( 'woocommerce_created_customer', 'mm_save_register_fields' );
function mm_save_register_fields( $customer_id ){
	if ( isset( $_POST['first_name'] ) ) {
		update_user_meta( $customer_id, 'first_name', wc_clean( $_POST['first_name'] ) );
	}

	if ( isset( $_POST['last_name'] ) ) {
		update_user_meta( $customer_id, 'last_name', wc_clean( $_POST['last_name'] ) );
	}

	if ( isset( $_POST['company_name'] ) ) {
		update_user_meta( $customer_id, 'billing_company', wc_clean( $_POST['company_name'] ) );
		update_user_meta( $customer_id, 'shipping_company', wc_clean( $_POST['company_name'] ) );
	}
}


/**
* Placeholders for checkout fields
*/
add_filter( 'woocommerce_checkout_fields' , 'override_billing_checkout_fields', 20, 1 );
function override_billing_checkout_fields( $fields ) {
    $fields['billing']['billing_phone']['placeholder'] = 'Phone number';
    $fields['billing']['billing_email']['placeholder'] = 'Email';
	$fields['billing']['billing_company']['placeholder'] = 'Company name (optional)';
	$fields['account']['account_username']['placeholder'] = __( 'Username', 'woocommerce' );

    return $fields;
}

add_filter('woocommerce_default_address_fields', 'override_default_address_checkout_fields', 20, 1);
function override_default_address_checkout_fields( $address_fields ) {
    $address_fields['first_name']['placeholder'] = 'First Name';
    $address_fields['last_name']['placeholder'] = 'Last Name';
    $address_fields['address_1']['placeholder'] = 'Address';
    $address_fields['state']['placeholder'] = 'State';
    $address_fields['postcode']['placeholder'] = 'Postal Code';
	$address_fields['city']['placeholder'] = 'City';
    return $address_fields;
}

add_filter( 'woocommerce_billing_fields' , 'override_billing_account_fields', 20, 1 );
function override_billing_account_fields( $fields ) {
    $fields['billing_company']['placeholder'] = 'Company';
    $fields['billing_email']['placeholder'] = 'Email address';
    $fields['billing_phone']['placeholder'] = 'Phone ';
    return $fields;
}

add_filter( 'woocommerce_shipping_fields' , 'override_shipping_account_fields', 20, 1 );
function override_shipping_account_fields( $fields ) {
    $fields['shipping_company']['placeholder'] = 'Company';
    $fields['shipping_email']['placeholder'] = 'Email address';
    $fields['shipping_phone']['placeholder'] = 'Phone ';
    return $fields;
}


// WooCommerce Checkout Fields Hook
add_filter('woocommerce_checkout_fields','custom_wc_checkout_fields_no_label');

// Our hooked in function - $fields is passed via the filter!
// Action: remove label from $fields
function custom_wc_checkout_fields_no_label($fields) {
    // loop by category
    foreach ($fields as $category => $value) {
        // loop by fields
        foreach ($fields[$category] as $field => $property) {
            // remove label property
            unset($fields[$category][$field]['label']);
        }
    }
     return $fields;
}


/**
* Add new item in my account page
*/
add_action( 'init', 'mm_add_myaccount_items_endpoint' );
function mm_add_myaccount_items_endpoint() {
    add_rewrite_endpoint( 'my-files', EP_ROOT | EP_PAGES );
    add_rewrite_endpoint( 'clients', EP_ROOT | EP_PAGES );
    add_rewrite_endpoint( 'distributor-files', EP_ROOT | EP_PAGES );
    add_rewrite_endpoint( 'credit-account', EP_ROOT | EP_PAGES );
}

// ------------------
// 2. Add new query var
add_filter( 'query_vars', 'mm_add_myaccount_items_query_vars', 0 );
function mm_add_myaccount_items_query_vars( $vars ) {
    $vars[] = 'my-files';
    $vars[] = 'clients';
    $vars[] = 'distributor-files';
    $vars[] = 'credit-account';
    return $vars;
}

// ------------------
// 3. Insert the new endpoint into the My Account menu
add_filter( 'woocommerce_account_menu_items', 'mm_add_myaccount_items_link_my_account' );
function mm_add_myaccount_items_link_my_account( $items ) {
    $items['my-files'] = 'My Files';
    $items['clients'] = 'Clients';
    $items['distributor-files'] = 'Distributor Files';
    $items['credit-account'] = 'My Credit Account';
    return $items;
}

// ------------------
// 4. Add content to the new endpoint
add_action( 'woocommerce_account_my-files_endpoint', 'mm_my_files_content' );
function mm_my_files_content() {
	wc_get_template_part('myaccount/my-files');
}

add_action( 'woocommerce_account_clients_endpoint', 'mm_clients_content' );
function mm_clients_content() {
	wc_get_template_part('myaccount/clients');
}

add_action( 'woocommerce_account_distributor-files_endpoint', 'mm_distributor_files_content' );
function mm_distributor_files_content() {
	wc_get_template_part('myaccount/distributor-files');
}

add_action( 'woocommerce_account_credit-account_endpoint', 'mm_credit_account_content' );
function mm_credit_account_content() {
	wc_get_template_part('myaccount/credit-account');
}


/**
* Shop sidebar
*/
add_action( 'woocommerce_sidebar', 'mm_woocommerce_sidebar' );
function mm_woocommerce_sidebar() {
	if(is_active_sidebar('shop-sidebar') && !is_product()){
		dynamic_sidebar('shop-sidebar');
	}
}


//* change product excerpt and add to cart order in the single product page *//
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_excerpt', 20 );
add_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_excerpt', 50 );

/**
* Change order of add to cart
*/
remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_add_to_cart', 30 );
add_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_add_to_cart', 20 );

/**
* Add custom field to product page
*/
function add_product_sheet_field()
{
	$file = get_field('product_sheet');
	if( $file ) {
		echo '<div class="wrap-product_sheet"><a class="mm-button secondary mm-color--green" target="_blank" href="'.$file['url'].'">'.__("Product Sheet", "moneymouth").'</a></div>';
	}
}
add_action( 'woocommerce_before_add_to_cart_quantity', 'add_product_sheet_field', 21 );

/**
* Remove auto paragraphs adding in short description,
* Fixes an issue we had with product lists having empty <p> elements
*/
remove_filter( 'woocommerce_short_description', 'wpautop' );

add_action( 'woocommerce_single_product_summary', 'add_product_tags', 20 );

function add_product_tags(){

	$output = array();

	// get an array of the WP_Term objects for a defined product ID
	$terms = wp_get_post_terms( get_the_id(), 'product_tag' );

	if( count($terms) > 0 ){
		foreach($terms as $term){
			$term_id = $term->term_id; // Product tag Id
			$term_name = $term->name; // Product tag Name
			$term_slug = $term->slug; // Product tag slug
			$term_link = get_term_link( $term, 'product_tag' ); // Product tag link
			$term_color = get_field('tag_color', $term) ? get_field('tag_color', $term) : "#3b8e8a";

			// Set the product tag names in an array
			$output[] = '<a class="product-tag" style="color: '.$term_color.'" href="'.$term_link.'">'.$term_name.'</a>';
		}
		// Set the array in a coma separated string of product tags for example
		$output = "<div class='product-tags'>".implode( ' ', $output )."</div>";

		// Display the coma separated string of the product tags
		echo $output;
	}
}


add_action( 'init', 'custom_taxonomy_Item' );

// Register Custom Taxonomy
function custom_taxonomy_Item()  {

//Commercial category taxonomy

$labels = array(
    'name'                       => 'Category',
    'singular_name'              => 'Commercial category',
    'menu_name'                  => 'Categories (commercial)',
    'all_items'                  => 'All Items',
    'parent_item'                => 'Parent Item',
    'parent_item_colon'          => 'Parent Item:',
    'new_item_name'              => 'New Item Name',
    'add_new_item'               => 'Add New Item',
    'edit_item'                  => 'Edit Item',
    'update_item'                => 'Update Item',
    'separate_items_with_commas' => 'Separate Item with commas',
    'search_items'               => 'Search Items',
    'add_or_remove_items'        => 'Add or remove Items',
    'choose_from_most_used'      => 'Choose from the most used Items',
);
$args = array(
    'labels'                     => $labels,
    'hierarchical'               => true,
    'public'                     => true,
    'show_ui'                    => true,
    'show_admin_column'          => true,
    'show_in_nav_menus'          => true,
    'show_tagcloud'              => true,
);

register_taxonomy( 'commercial-category', 'product', $args );
register_taxonomy_for_object_type( 'commercial-category', 'product' );

// Range taxonomy

$labels = array(
    'name'                       => 'Range',
    'singular_name'              => 'Range',
    'menu_name'                  => 'Range',
    'all_items'                  => 'All Items',
    'parent_item'                => 'Parent Item',
    'parent_item_colon'          => 'Parent Item:',
    'new_item_name'              => 'New Item Name',
    'add_new_item'               => 'Add New Item',
    'edit_item'                  => 'Edit Item',
    'update_item'                => 'Update Item',
    'separate_items_with_commas' => 'Separate Item with commas',
    'search_items'               => 'Search Items',
    'add_or_remove_items'        => 'Add or remove Items',
    'choose_from_most_used'      => 'Choose from the most used Items',
);
$args = array(
    'labels'                     => $labels,
    'hierarchical'               => true,
    'public'                     => true,
    'show_ui'                    => true,
    'show_admin_column'          => true,
    'show_in_nav_menus'          => true,
    'show_tagcloud'              => true,
);

register_taxonomy( 'range', 'product', $args );
register_taxonomy_for_object_type( 'range', 'product' );

// Special offers taxonomy

$labels = array(
    'name'                       => 'Special offers',
    'singular_name'              => 'Special offers',
    'menu_name'                  => 'Special offers',
    'all_items'                  => 'All Items',
    'parent_item'                => 'Parent Item',
    'parent_item_colon'          => 'Parent Item:',
    'new_item_name'              => 'New Item Name',
    'add_new_item'               => 'Add New Item',
    'edit_item'                  => 'Edit Item',
    'update_item'                => 'Update Item',
    'separate_items_with_commas' => 'Separate Item with commas',
    'search_items'               => 'Search Items',
    'add_or_remove_items'        => 'Add or remove Items',
    'choose_from_most_used'      => 'Choose from the most used Items',
);
$args = array(
    'labels'                     => $labels,
    'hierarchical'               => true,
    'public'                     => true,
    'show_ui'                    => true,
    'show_admin_column'          => true,
    'show_in_nav_menus'          => true,
    'show_tagcloud'              => true,
);

register_taxonomy( 'special-offers', 'product', $args );
register_taxonomy_for_object_type( 'special-offers', 'product' );

// Product line taxonomy

$labels = array(
    'name'                       => 'Product line',
    'singular_name'              => 'Product line',
    'menu_name'                  => 'Product line',
    'all_items'                  => 'All Items',
    'parent_item'                => 'Parent Item',
    'parent_item_colon'          => 'Parent Item:',
    'new_item_name'              => 'New Item Name',
    'add_new_item'               => 'Add New Item',
    'edit_item'                  => 'Edit Item',
    'update_item'                => 'Update Item',
    'separate_items_with_commas' => 'Separate Item with commas',
    'search_items'               => 'Search Items',
    'add_or_remove_items'        => 'Add or remove Items',
    'choose_from_most_used'      => 'Choose from the most used Items',
);
$args = array(
    'labels'                     => $labels,
    'hierarchical'               => true,
    'public'                     => true,
    'show_ui'                    => true,
    'show_admin_column'          => true,
    'show_in_nav_menus'          => true,
    'show_tagcloud'              => true,
);

register_taxonomy( 'product-line', 'product', $args );
register_taxonomy_for_object_type( 'product-line', 'product' );

// Season taxonomy

$labels = array(
    'name'                       => 'Season',
    'singular_name'              => 'Season',
    'menu_name'                  => 'Season',
    'all_items'                  => 'All Items',
    'parent_item'                => 'Parent Item',
    'parent_item_colon'          => 'Parent Item:',
    'new_item_name'              => 'New Item Name',
    'add_new_item'               => 'Add New Item',
    'edit_item'                  => 'Edit Item',
    'update_item'                => 'Update Item',
    'separate_items_with_commas' => 'Separate Item with commas',
    'search_items'               => 'Search Items',
    'add_or_remove_items'        => 'Add or remove Items',
    'choose_from_most_used'      => 'Choose from the most used Items',
);
$args = array(
    'labels'                     => $labels,
    'hierarchical'               => true,
    'public'                     => true,
    'show_ui'                    => true,
    'show_admin_column'          => true,
    'show_in_nav_menus'          => true,
    'show_tagcloud'              => true,
);

register_taxonomy( 'season', 'product', $args );
register_taxonomy_for_object_type( 'season', 'product' );

}

function mm_get_current_product_category(){

	$woof_cat = isset( $_GET['really_curr_tax'] ) ? $_GET['really_curr_tax'] : false;

	if($woof_cat){
		$id = str_replace('-product_cat', '', $woof_cat);
		if($id!=''){
			$tax = get_term($id);
			return $tax;
		}
	}else{
		if (is_product_category()) {
			global $wp_query;
			$cat = $wp_query->get_queried_object();
			return $cat;
		}else{
			return false;
		}
	}

}

function mm_get_category_link(){
	$current_term = mm_get_current_product_category();
	if($current_term){
		if($current_term->name == 'Commercial'){
			return "<a class='shop-more' href='/shop/category/retail'>Shop Retail</a>";
		}else{
			return "<a class='shop-more' href='/shop/category/commercial'>Shop Commercial</a>";
		}
	}else{
		return false;
	}
}


// Add the opening div to the img
function mm_add_img_wrapper_start() {
    echo '<div class="woocommerce-thumbnail-wrap">';
}
add_action( 'woocommerce_before_shop_loop_item_title', 'mm_add_img_wrapper_start', 5, 2 );

// Close the div that we just added
function mm_add_img_wrapper_close() {
    echo '</div>';
}
add_action( 'woocommerce_before_shop_loop_item_title', 'mm_add_img_wrapper_close', 12, 2 );
