<section class="row">
    <div class="col-full">
        <div class="social">
            <?php if (get_theme_mod('giroptic_social_disabled') == false): ?>
                <?php
                if (sizeof(get_theme_mod(giroptic_social)) > 0) {
                    $social_array = get_theme_mod(giroptic_social);
                   
                    if (is_array($social_array) && (sizeof(array_filter($social_array)) > 0)) {
                        foreach ($social_array as $this_social => $social_link) {
                            $img_icon = "fa fa-" . str_replace("tf_", "", $this_social) . "-square";
                            if ($social_link) {
                                print "<a href=\"$social_link\">";
                                print "<i class=\"$img_icon\">$social_link</i>";
                                print "</a>";
                                print " ";
                            }
                        }
                    } else {
                        $dummy = array('github', 'linkedin', 'facebook', 'twitter');
                        foreach ($dummy as $this_social) {
                            print '<a href="#"><i class="fa fa-' . $this_social . '-square"></i></a>';
                        }
                    }
                }
                ?>
            <?php endif; ?>	
        </div>

        <p>
            <?php
                $giroptic_copyright = get_theme_mod('giroptic_copyright');
                if($giroptic_copyright){
                    echo $giroptic_copyright;
                }
            ?>
        </p>
    </div>
</section>
<?php wp_footer(); ?>


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
    if(!window.jQuery)
    {
        document.write('<script src="js/vendor/jquery.1.11.min.js"><\/script>');
    }
</script>

<script src="<?php bloginfo('template_directory'); ?>/script/vendor/jquery.fluidbox.min.js"></script>
<script src="<?php bloginfo('template_directory'); ?>/script/main.js"></script>

</body>
</html>