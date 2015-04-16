<?php
/**
 * giroptic functions and definitions
 *
 * @package giroptic
 */

add_filter( 'menu_image_default_sizes', function($sizes){
  // remove the default 36x36 size
  unset($sizes['menu-36x36']);
  // add a new size
  $sizes['menu-50x50'] = array(50,50);
  // return $sizes (required)
  return $sizes;
});


function register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' ),
      'extra-menu' => __( 'Extra Menu' )
    )
  );
}
add_action( 'init', 'register_my_menus' );


function arphabet_widgets_init() {

	register_sidebar( array(
		'name'          => 'Home right sidebar',
		'id'            => 'home_right_1',
		'before_widget' => '<div>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="rounded">',
		'after_title'   => '</h2>',
	) );

}
add_action( 'widgets_init', 'arphabet_widgets_init' );



/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';


/**
 * Widgets additions.
 */
require get_template_directory() . '/inc/widgets.php';
