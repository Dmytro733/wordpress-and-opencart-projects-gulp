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

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function beAlwaysRight_widgets_init() {
	register_sidebar(
		array(
			'name'          => 'sidebar-1',
			'id'            => 'sidebar-1',
			'description'   => 'Add widgets here.',
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);

}
add_action( 'widgets_init', 'beAlwaysRight_widgets_init' );

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


	wp_enqueue_style( 'beAlwaysRight-style', get_stylesheet_uri());

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'beAlwaysRight_scripts' );


add_theme_support('post-thumbnails');


?>
