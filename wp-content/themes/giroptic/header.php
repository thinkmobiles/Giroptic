<?php
/**
 * @package giroptic
 * @since giroptic 1.0
 * @license GPL 2.0
 */
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
    <head lang="en">
        <meta charset="UTF-8">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>360</title>
        <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style/main.css" type="text/css" />
        <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style/blocks-media.css" type="text/css" />
        <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style/media.css" type="text/css" />
        <?php wp_head(); ?>
    </head>
    <body>
        <header id="header" role="header">
            <div class="first">
                <div class="navigation" role="navigation">
                    <ul>
                        <li><a>S’identifier</a></li>
                        <li><a class="language">France<i class="arrow-down"></i></a></li>
                        <li><span class="social"></span></li>
                    </ul>
                </div>
            </div>
            <div class="second">
                <div class="logo" role="logo"></div>
                <div class="navigation" role="navigation">
                      <?php wp_nav_menu(array('theme_location' => 'header-menu')) ?>
                </div>
                
            </div>
        </header>
        <header id="scroll-header">
            <div class="logo" role="logo"></div>
            <div class="navigation" role="navigation">
                <ul>
                    <li><a>technologie</a></li>
                    <li><a>our expertise</a></li>
                    <li><a>features</a></li>
                    <li><a>about us</a></li>
                    <li><span class="search"></span></li>
                    <li><a class="language">Fr<i class="arrow-down"></i></a></li>
                    <li><span class="social"></span></li>
                </ul>
            </div>
        </header>
