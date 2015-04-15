<?php
/**
 * @package giroptic
 * @since giroptic 1.0
 * @license GPL 2.0
 */

get_header(); ?>

<div id="content">

		<section class="intro">
			<h1>Hello, <span class="nl"></span>we are here to help you.</h1>
			<p>
				Gumba is a simple single-page website template. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by changing the text, photos and styles.
			</p>
		</section>

		<section class="row">
			<div class="col-full">
				<h2>Example title</h2>
				<p>
					Gumba is a fictional agency from Amsterdam, The Netherlands. This is the place where you would normally introduce yourself. You can easily change the template to fit your needs by adding text or changing the colors and styles.
				</p>
			</div>
		</section>

		<section class="row">
			<div class="photo-grid">
                <a href="<?php bloginfo('stylesheet_directory'); ?>/img/example-photo-b.jpg" rel="lightbox" class="col-2"><img src="<?php bloginfo('stylesheet_directory'); ?>/img/example-photo-b.jpg" alt="Example photo"></a>
				<a href="<?php bloginfo('stylesheet_directory'); ?>/img/example-photo-c.jpg" rel="lightbox" class="col-2"><img src="<?php bloginfo('stylesheet_directory'); ?>/img/example-photo-c.jpg" alt="Example photo"></a>
				<a href="<?php bloginfo('stylesheet_directory'); ?>/img/example-photo-a.jpg" rel="lightbox" class="col-1"><img src="<?php bloginfo('stylesheet_directory'); ?>/img/example-photo-a.jpg" alt="Example photo"></a>
			</div>
		</section>


		<section class="row">
			<div class="col">
				<h2>Contact</h2>
				<p>
					Want to work with us? Just send us an <a href="mailto:#">email</a>.
				</p>
			</div>
			<div class="col">
				<h2>Follow us</h2>
				<p>
					We are on <a href="http://twitter.com/rickwaalders">Twitter</a>, <a href="http://dribbble.com/rickwaalders">Dribbble</a> and <a href="http://instagram.com/rickwaalders">Instagram</a>.
				</p>
			</div>
		</section>

    <?php get_sidebar(); ?>

    <?php get_footer(); ?>
 
</div>

