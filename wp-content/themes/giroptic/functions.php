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


/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';
