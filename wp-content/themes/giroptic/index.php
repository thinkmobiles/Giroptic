<?php
/**
 * @package giroptic
 * @since giroptic 1.0
 * @license GPL 2.0
 */
get_header();
?>
<div id="slider">
    <h2><?php echo get_bloginfo('description');?></h2>
    <?php
    $img_url = get_theme_mod(giroptic_backgound_image);
    if (isset($img_url)):
        ?>
        <img src="<?php echo $img_url ?>" />
    <?php endif; ?>
</div>

<main id="main" role="main">


    <div class="content">
        <div class="slider-menu">
            <?php wp_nav_menu(
                array(
                    'theme_location' => 'frontpage-menu', 
                    'link_before' => '<span>',
                    'link_after' => '</span>'
                ));
            ?>
        </div>

        <?php
        if (is_active_sidebar('home_sidebar')) :
            dynamic_sidebar('home_sidebar');
        endif;
        ?>

    </div>
</main>


<?php get_footer(); ?>

