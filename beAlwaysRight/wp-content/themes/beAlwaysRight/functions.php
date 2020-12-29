<?php
/**
 * beAlwaysRight functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package beAlwaysRight
 */
// This theme uses wp_nav_menu() in one location.
register_nav_menus(
	array(
		'header-menu' => 'Primary'
	)
);

function wpspec_menu_desc( $item_output, $item, $depth, $args ) {
	if ($item->description) {
		$item_output = str_replace( '</a>', '<p class="description">' . $item->description . '</p></a>', $item_output );
	}
	
	return $item_output;
}
 
add_filter( 'walker_nav_menu_start_el', 'wpspec_menu_desc', 10, 4 );

add_theme_support(
	'custom-logo',
	array(
		'height'      => 250,
		'width'       => 250,
		'flex-width'  => true,
		'flex-height' => true,
	)
);

/**
 * Enqueue scripts and styles.
 */
function beAlwaysRight_scripts() {
	wp_style_add_data( 'beAlwaysRight-style', 'rtl', 'replace' );

	wp_enqueue_script( 'beAlwaysRight-navigation', get_template_directory_uri() . '/js/navigation.js');
	wp_enqueue_script( 'beAlwaysRight-my.js', get_template_directory_uri() . '/js/my.js');


	wp_enqueue_style( 'beAlwaysRight-style', get_template_directory_uri() . '/css/style.css');

}
add_action( 'wp_enqueue_scripts', 'beAlwaysRight_scripts' );


add_theme_support('post-thumbnails');


?>
