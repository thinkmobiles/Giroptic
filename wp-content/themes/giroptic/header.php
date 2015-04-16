<?php
/**
 * @package giroptic
 * @since giroptic 1.0
 * @license GPL 2.0
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
    <head>
        <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style/vendor/fluidbox.css" type="text/css" />
        <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style/main.css" type="text/css" />
        <?php wp_head(); ?>
    </head>

    <body>
        <?php wp_nav_menu(array('theme_location' => 'header-menu')); ?>
        <header>  
            <?php if (get_theme_mod('giroptic_logo')) : ?>
                <div id="logo-container">
                    <div id="logo">
                        <a href="<?php echo get_option('home'); ?>">
                            <img src='<?php echo esc_url(get_theme_mod('giroptic_logo')); ?>' alt='<?php echo esc_attr(get_bloginfo('name', 'display')); ?>'>
                        </a>
                    </div>
                    <div id="subtitle"><?php bloginfo('description'); ?></div>
                </div>

            <?php else : ?>
                <div id="logo-container">
                    <div id="logo"><a href="<?php echo get_option('home'); ?>"><?php echo get_bloginfo('name'); ?></a></div>
                    <div id="subtitle"><?php bloginfo('description'); ?></div>
                </div>
            <?php endif; ?>
        </header>

