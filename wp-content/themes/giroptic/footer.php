<footer id="footer" role="footer">
    <div class="footer-row">
        <div class="footer-container">
            <div class="follow-us">
                <h3>FOLLOW US</h3>
                <p></p>
                <ul>
                    <?php
                    if (sizeof(get_theme_mod(giroptic_social)) > 0) {
                        $social_array = get_theme_mod(giroptic_social);

                        if (is_array($social_array) && (sizeof(array_filter($social_array)) > 0)) {
                            foreach ($social_array as $this_social => $social_link) {
                                $img_class = str_replace("tf_", "", $this_social) . "-icon";
                                if ($social_link) {
                                    print "<li>";
                                    print "<a href=\"$social_link\" class=\"$img_class\" target='_blank'>";
                                    print "</a>";
                                    print "</li>";
                                }
                            }
                        } else {
                            $dummy = array('linkedin', 'facebook', 'twitter', 'youtube', 'googleplus');
                            foreach ($dummy as $this_social) {
                                print '<li><a href="#" class="'.$this_social.'-icon"></a></li>';
                            }
                        }
                    }
                    ?>
                </ul>
            </div>
            


            <div class="newsletter">
                <h3>NEWSLETTER</h3>
                <p>Register and get the latest news and promotions</p>
                <?php
                    if( function_exists( 'mc4wp_form' ) ) {
                        mc4wp_form();
                    }
                ?>
            </div>
            <hr/>
        </div>
    </div>
    <div class="footer-row">
        <div class="footer-container">
            <div class="column logo-content">
                <div class="logo"></div>
                <p>
                    <?php
                        $footer_content = get_theme_mod('footer_content');
                        if($footer_content){
                            echo $footer_content;
                        }
                    ?>
                </p>     
                <?php wp_nav_menu(array('theme_location' => 'default-footer-menu')); ?>
            </div>
            <div class="column">
                <h3>SITE MAP</h3>
                <?php wp_nav_menu(array('theme_location' => 'sitemap-menu')); ?>
            </div>
            <div class="column">
                <h3>PROFESSIONALS</h3>
                <?php wp_nav_menu(array('theme_location' => 'professionals-menu')); ?>
            </div>
            <div class="column">
                <h3>SUPPORT</h3>
                <?php wp_nav_menu(array('theme_location' => 'support-menu')); ?>
            </div>
        </div>
    </div>
    <div class="copyright">
        <span>
            <?php
                $giroptic_copyright = get_theme_mod('giroptic_copyright');
                if($giroptic_copyright){
                    echo $giroptic_copyright;
                }
            ?>
        </span>
    </div>
</footer>
<div class="search-block">
    <div class="search-wrapper"></div>
    <div class="search-area">
        <input type="text" placeholder="Rechercher">
        <input type="submit" value="&nbsp;"/>
    </div>
</div>
<div class="login-block">
    <div class="login-wrapper"></div>
    <div class="login-area">
        <div class="login-header">
            <span>Login Giroptic</span>
        </div>
        <div class="login-content">
            <input class='fields' type="email" placeholder="Email*"/>
            <input class='fields' type="password" placeholder="Password"/>
            <div class="accept">
                <input type="checkbox" id="login-accept"/>
                <label class="login-accept" for="login-accept">
                    I have read and accept the
                    <a>Terms an Conditions</a>
                </label>
            </div>
            <button class="btn blue">Valider</button>
        </div>
        <div class="login-footer">
            <button class="btn grey">Demande d’accès</button>
        </div>
    </div>
</div>
<script src="<?php bloginfo('template_directory'); ?>/script/jquery.js"></script>
<script src="<?php bloginfo('template_directory'); ?>/script/main.js"></script>
<?php wp_footer(); ?>

</body>
</html>