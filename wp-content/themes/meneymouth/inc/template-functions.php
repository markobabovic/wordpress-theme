<?php
/**
 * Theme helper functions
 */


/**
 * Helper function for pretty printing arrays
 */
function mm_print_pr($array){
	echo "<pre>";
	print_r($array);
	echo "</pre>";
}

/**
 * Helper function for printing inline background image css
 */
function mm_get_inline_background_image($url) {
	return isset($url) ? 'style="background-image: url('. $url .');"' : '';
}

/**
 * Function for printing a list of taxonomies
 */
function mm_echo_taxonomy_list($terms) {
	if ( $terms ) : ?>
		<?php foreach( $terms as $key => $term ) : ?>
			<?php if ($key != 0) :
				echo ',';
			endif; ?>
			<span><?=$term->name;?></span>
		<?php endforeach; ?>
	<?php endif;
}

/**
 * Responsive Image Helper Function
 *
 * @param string $image array of image values from the ACF field
 * @param string $image_size the size of the thumbnail image or custom image size
 * @param string $image_class CSS classes for the image
 */
function mm_acf_responsive_image($image,$image_size, $image_class){

    $image_id       = $image['id'];
    $max_width      = $image['width'] . 'px';
    $image_alt      = $image['alt'];

    // if $image_size is empty or image format is 'gif' use 'full' as default
    if (empty($image_size) || $image['subtype'] == 'gif') {
        $image_size = 'full';
    }

	// check if the image ID is not blank
	if($image_id != '') {

		// set the default 'src' image size
		$image_src = wp_get_attachment_image_url( $image_id, $image_size );

		// set the 'srcset' with various image sizes
		$image_srcset = wp_get_attachment_image_srcset( $image_id, $image_size );

		// generate the markup for the responsive image
		echo '<img class="'.$image_class.'" src="'.$image_src.'" srcset="'.$image_srcset.'" sizes="(max-width: '.$max_width.') 100vw, '.$max_width.'" alt="'.$image_alt.'" />';

	}
}

/**
* Load an inline SVG.
*
* @param string $filename The filename of the SVG you want to load.
* @return string The content of the SVG you want to load.
*/
function mm_load_inline_svg($filename) {

    // Add the path to your SVG directory inside your theme.
	$svg_path = '/assets/images/';

	// Get the SVG file location
	$svg_file = get_stylesheet_directory() . $svg_path . $filename . '.svg';

    // Check the SVG file exists
    if ( file_exists( $svg_file ) ) {

        // Load and return the contents of the file
        echo file_get_contents( $svg_file );

    } else {

        // Return a blank string if we can't find the file.
        return '';

    }
}

/**
* Pagination
*/
function mm_global_pagination($pages = '', $range = 2)
{
     $showitems = ($range * 2)+1;

     global $paged;
     if(empty($paged)) $paged = 1;

     if($pages == '')
     {
         global $wp_query;
         $pages = $wp_query->max_num_pages;
         if(!$pages)
         {
             $pages = 1;
         }
     }

     if(1 != $pages)
     {
         echo "<ul class='page-pagination'>";

         if($paged > 1 && $showitems < $pages) echo "<a href='".get_pagenum_link($paged - 1)."'class='prev'><i class='far fa-angle-left'></i></a>";

         for ($i=1; $i <= $pages; $i++)
         {
             if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
             {
                 echo ($paged == $i)? "<li class='current'><span >".$i."</span></li>":"<li><a href='".get_pagenum_link($i)."' class='inactive' >".$i."</a></li>";
             }
         }

         if ($paged < $pages && $showitems < $pages) echo "<a href='".get_pagenum_link($paged + 1)."' class='next'><i class='far fa-angle-right'></i></a>";

         echo "</ul>\n";
     }
}

/**
* Generate custom excerpt length
*/
add_filter( 'get_the_excerpt', function( $excerpt, $post ) {
    if ( has_excerpt( $post ) ) {
        $excerpt_length = apply_filters( 'excerpt_length', 18 );
        $excerpt_more   = apply_filters( 'excerpt_more', ' ' . '...' );
        $excerpt        = wp_trim_words( $excerpt, $excerpt_length, $excerpt_more );
    }
    return $excerpt;
}, 10, 2 );



