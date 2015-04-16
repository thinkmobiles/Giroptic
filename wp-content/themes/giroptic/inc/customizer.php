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

    // disabling
    $wp_customize->add_setting(
        'giroptic_social_disabled', array(
        'default' => 'false',
        'sanitize_callback' => 'esc_url_raw',
        'transport' => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social_disabled', array(
        'label' => 'Disable TF social-icons',
        'section' => 'giroptic_social',
        'type' => 'checkbox',
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

    //linkedin
    $wp_customize->add_setting(
        'giroptic_social[tf_linkedin]', array(
        'default' => 'http://www.linkedin.com',
        'sanitize_callback' => 'esc_url_raw',
        'transport' => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social[tf_linkedin]', array(
        'label' => 'linkedin URL',
        'section' => 'giroptic_social',
        'type' => 'text',
        )
    );

    //google-plus
    $wp_customize->add_setting(
        'giroptic_social[tf_google-plus]', array(
        'default' => 'http://www.google.com',
        'sanitize_callback' => 'esc_url_raw',
        'transport' => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social[tf_google-plus]', array(
        'label' => 'google-plus URL',
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

/* LOGO	 */

function giroptic_theme_customizer($wp_customize) {
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
}

add_action('customize_register', 'giroptic_theme_customizer');



