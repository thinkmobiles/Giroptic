<?php get_header(); ?>
<div id="content">

    <section class="intro">
        <h1><?php wp_title(''); ?></h1>
        <p>
            <?php while (have_posts()) : the_post(); ?>

                <?php get_template_part('content', 'page'); ?>

            <?php endwhile; // end of the loop. ?>
            <?php the_content(); ?>
        </p>
    </section>
    
    <section class="row">
        <div class="col-full">
            <?php
                $second_title = get_field('second_title');
                if (!empty($second_title)):
            ?>
                <h2><?php the_field('second_title'); ?></h2>
            <?php endif; ?>
            <p>
                <?php the_field('text'); ?>
            </p>
        </div>
    </section>
 
    <?php include_once( 'slider.php' ); ?>
    
    

    <?php get_footer(); ?>
</div>
