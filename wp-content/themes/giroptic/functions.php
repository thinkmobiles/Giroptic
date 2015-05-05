<?php

/**
 * giroptic functions and definitions
 *
 * @package giroptic
 */
add_filter('menu_image_default_sizes', function($sizes) {
    // remove the default 36x36 size
    unset($sizes['menu-36x36']);
    // add a new size
    $sizes['menu-50x50'] = array(50, 50);
    // return $sizes (required)
    return $sizes;
});

/**
 * Load media files needed for Uploader
 */
function load_wp_media_files() {
  wp_enqueue_media();
}
add_action( 'admin_enqueue_scripts', 'load_wp_media_files' );

function register_my_menus() {
    register_nav_menus(
        array(
            'header-menu' => __('Header Menu'),
            'frontpage-menu' => __('Frontpage menu with image'),
            'sitemap-menu' => __('Site Map Menu'),
            'default-footer-menu' => __('Default footer Menu'),
            'professionals-menu' => __('Professionals Menu'),
            'support-menu' => __('Support Menu')
        )
    );
}

add_action('init', 'register_my_menus');

function giroptic_widgets_init() {

    register_sidebar(array(
        'name' => 'Home sidebar',
        'id' => 'home_sidebar',
        'before_widget' => '<div>',
        'after_widget' => '</div>',
        'before_title' => '<h2 class="rounded">',
        'after_title' => '</h2>',
    ));
    
     register_sidebar(array(
        'name' => 'Footer sidebar',
        'id' => 'footer_sidebar',
        'before_widget' => '<div>',
        'after_widget' => '</div>'
    ));
}

add_action('widgets_init', 'giroptic_widgets_init');


/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';


/**
 * Widgets additions.
 */
require get_template_directory() . '/inc/widgets.php';

