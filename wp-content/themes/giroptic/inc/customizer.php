<?php
/**
 * giroptic Theme Customizer
 *
 * @package giroptic
 */

/**
 * Header-Social icons using customizer
 */
function giroptic_social_customizer($wp_customize) {
    $wp_customize->add_section(
        'giroptic_social', array(
        'title' => 'Social information',
        'priority' => 203
        )
    );


    // facebook
    $wp_customize->add_setting(
        'giroptic_social[tf_facebook]', array(
        'default' => 'http://www.facebook.com',
        'sanitize_callback' => 'esc_url_raw',
        'transport' => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social[tf_facebook]', array(
        'label' => 'Facebook URL',
        'section' => 'giroptic_social',
        'type' => 'text',
        )
    );

    //twitter
    $wp_customize->add_setting(
        'giroptic_social[tf_twitter]', array(
        'default' => 'http://www.twitter.com',
        'sanitize_callback' => 'esc_url_raw',
        'transport' => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social[tf_twitter]', array(
        'label' => 'Twitter URL',
        'section' => 'giroptic_social',
        'type' => 'text',
        )
    );

    //Youtube
    $wp_customize->add_setting(
        'giroptic_social[tf_youtube]', array(
        'default' => 'http://www.youtube.com',
        'sanitize_callback' => 'esc_url_raw',
        'transport' => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social[tf_youtube]', array(
        'label' => 'Youtube URL',
        'section' => 'giroptic_social',
        'type' => 'text',
        )
    );

    //google-plus
    $wp_customize->add_setting(
        'giroptic_social[tf_googleplus]', array(
        'default' => 'http://www.google.com',
        'sanitize_callback' => 'esc_url_raw',
        'transport' => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social[tf_googleplus]', array(
        'label' => 'Google-plus URL',
        'section' => 'giroptic_social',
        'type' => 'text',
        )
    );
}

add_action('customize_register', 'giroptic_social_customizer');

/**
 * Footer copyright
 */
function giroptic_copyright_customizer($wp_customize) {
    $wp_customize->add_section(
        'giroptic_copyright', array(
        'title' => 'Copyright',
        'priority' => 204
        )
    );

    // copyright
    $wp_customize->add_setting(
        'giroptic_copyright', array(
        'default' => 'All right is reselve',
        'sanitize_callback' => 'geroptic_sanitize_text'
        )
    );
    $wp_customize->add_control(
        'giroptic_copyright', array(
        'label' => 'Copyright text',
        'section' => 'giroptic_copyright',
        'type' => 'text',
        )
    );
}

add_action('customize_register', 'giroptic_copyright_customizer');

function geroptic_sanitize_text($input) {
    return wp_kses_post(force_balance_tags($input));
}



function giroptic_theme_customizer($wp_customize) {
    /* LOGO	 */
    
    $wp_customize->add_section('giroptic_logo_section', array(
        'title' => __('Logo', 'giroptic'),
        'priority' => 30,
        'description' => 'Upload a logo to replace the default site name and description in the header',
    ));

    $wp_customize->add_setting('giroptic_logo');

    $wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'giroptic_logo', array(
        'label' => __('Logo', 'giroptic'),
        'section' => 'giroptic_logo_section',
        'settings' => 'giroptic_logo',
    )));




    /* TEXTAREA */

    class Giroptic_Customize_Textarea_Control extends WP_Customize_Control {

        public $type = 'textarea';

        public function render_content() {
            ?>

            <label>
                <span class="customize-control-title"><?php echo esc_html($this->label); ?></span>
                <textarea rows="5" style="width:100%;" <?php $this->link(); ?>><?php echo esc_textarea($this->value()); ?></textarea>
            </label>

            <?php
        }

    }

    $wp_customize->add_section('footer_content_section', array(
        'title' => __('Footer Content', 'Giroptic'),
    ));

    $wp_customize->add_setting('footer_content', array('default' => 'Please enter here footer content text'));

    $wp_customize->add_control(new Giroptic_Customize_Textarea_Control($wp_customize, 'footer_content', array(
        'label' => 'Footer content',
        'section' => 'footer_content_section',
        'settings' => 'footer_content',
    )));
}

add_action('customize_register', 'giroptic_theme_customizer');


