<?php
/**
 * @package giroptic
 * @since giroptic 1.0
 * @license GPL 2.0
 */

get_header(); ?>
<div id="slider">
    <?php 
    $img_url = get_theme_mod(giroptic_backgound_image);
    if(isset($img_url)):
    ?>
        <img src="<?php echo $img_url?>" />
    <?php endif; ?>
</div>

<main id="main" role="main">
    
      
    <div class="content">
        <div class="slider-menu">
          <?php wp_nav_menu(array('theme_location' => 'frontpage-menu')); ?>
        </div>
        
        
        <div class="block full-block white table">
            <div class="img img-left">
                <img src="<?php bloginfo('stylesheet_directory'); ?>/image/360cams.png">
            </div>
            <h1 class="main-title"></h1>

            <div class="main-body">
                <h2 class="title"></h2>

                <p class="body">
                    GIROPTIC build native immersive solutions to capture at once our environment. From omniscient vision
                    to virtual reality, GIROPTIC leads the way to a new era where images won’t ever be limited by a
                    frame.
                </p>
            </div>
        </div>
        
        
        
        
        <?php
            if ( is_active_sidebar( 'home_sidebar' ) ) :
                dynamic_sidebar( 'home_sidebar' );
            endif;            
        ?>

        
        <div class="block full-block blue">
            <div class="img virtual">
            </div>
            <h1 class="main-title">Technologie</h1>

            <div class="main-body withDisc">
                <h2 class="title">GIROPTIC 360 Virtual Sensor Technology</h2>

                <p class="body">
                    GIROPTIC build native immersive solutions to capture at once our environment. From omniscient vision
                    to virtual reality, GIROPTIC leads the way to a new era where images won’t ever be limited by a
                    frame.
                </p>

                <a class="discover"></a>
            </div>
        </div>
        
        
        
        <div class="block half-block orange">
            <div class="img stabil">
            </div>
            <h1 class="main-title">Technologie</h1>

            <div class="main-body withDisc">
                <h2 class="title">360° video stabilization</h2>

                <p class="body">
                    Because if you don’t, it moves
                </p>

                <a class="discover"></a>
            </div>
        </div>
        <div class="block half-block black">
            <div class="img audio">
            </div>
            <h1 class="main-title">Technologie</h1>

            <div class="main-body withDisc">
                <h2 class="title">Immersive sound experience</h2>

                <p class="body">
                    Because if you don’t, it moves
                </p>

                <a class="discover"></a>
            </div>
        </div>
        <div class="block third-block black">
            <div class="img develop">
            </div>
            <h1 class="main-title">OUR EXPERTISe</h1>

            <div class="main-body withDisc">
                <h2 class="title">Product development</h2>

                <p class="body">
                    In house development of GIROPTIC branded products and collaboration
                </p>

                <a class="discover"></a>
            </div>
        </div>
        <div class="block third-block grey">
            <div class="img randd">
            </div>
            <h1 class="main-title"></h1>

            <div class="main-body withDisc">
                <h2 class="title">R&D</h2>

                <p class="body">
                    An engineering department providing custom solutions to high profile projects
                </p>

                <a class="discover"></a>
            </div>
        </div>
        <div class="block third-block light-blue">
            <div class="img licensing">
            </div>
            <h1 class="main-title"></h1>

            <div class="main-body withDisc">
                <h2 class="title">Licensing</h2>

                <p class="body">
                    Upgrading your video capabilities with GIROPTIC Technology
                </p>

                <a class="discover"></a>
            </div>
        </div>
        <div class="block two-row third-block light-blue">
            <div class="img camera">
            </div>
            <h1 class="main-title">CAMERA</h1>

            <div class="main-body withDisc">
                <h2 class="title">GIROPTIC 360cam</h2>

                <p class="body">
                    The World’s First True 360HD Camera
                </p>

                <a class="discover"></a>
            </div>
        </div>
        <div class="block two-thirds orange">
            <div class="img gEYE">
            </div>
            <h1 class="main-title">FEATURED PROJECTS</h1>

            <div class="main-body withDisc">
                <h2 class="title">G-Eye 360 by GIROPTIC</h2>

                <p class="body">
                    The Sport Edition
                </p>

                <a class="discover"></a>
            </div>
        </div>
        <div class="block third-block grey">
            <div class="img accessoires">
            </div>
            <h1 class="main-title">ACCESSOIRES</h1>

            <div class="main-body withDisc">
                <h2 class="title">G-Eye 360 by GIROPTIC</h2>

                <p class="body">
                    The Sport Edition
                </p>

                <a class="discover"></a>
            </div>
        </div>
        <div class="block third-block dark-grey">
            <div class="img app">
            </div>
            <h1 class="main-title">APP</h1>

            <div class="main-body withDisc">
                <h2 class="title">360CAM APP</h2>

                <p class="body">
                    The Sport Edition
                </p>

                <a class="discover"></a>
            </div>
        </div>
    </div>
</main>


<?php get_footer(); ?>

