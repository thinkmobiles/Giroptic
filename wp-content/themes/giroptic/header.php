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
        <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style/bloсks-media.css" type="text/css" />
        <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style/main.css" type="text/css" />
        <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style/media.css" type="text/css" />
        <?php wp_head(); ?>
    </head>
    <body>
        <header id="header" role="header">
            <div class="first">
                <div class="navigation" role="navigation">
                    <ul>
                        <li>
                            <a>
                                <div class="login">S’identifier</div>
                                <div class="hover login">S’identifier</div>
                            </a>
                        </li>
                        <li class="popup">
                            <a class="language">
                                <div>France<i class="arrow-down"></i></div>
                                <div class="hover">France<i class="arrow-down"></i></div>
                            </a>
                            <ul class="popup-menu">
                                <li>
                                    <a>English</a>
                                </li>
                                <li>
                                    <a>Spanich</a>
                                </li>
                                <li>
                                    <a>Japan</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="social-block">
                                <span class="social"></span>
                                <span class="social-active"></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="second">
                <div class="logo" role="logo"></div>
                <a class="rectangle">
                    <img src="<?php bloginfo('template_directory'); ?>/image/rectangle.png" />
                </a>
                <div id="search">
                </div>

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
