<?php
/**
 * giroptic Theme Customizer
 *
 * @package giroptic
 */

/**
 * Header-Social icons using customizer
 */
function giroptic_social_customizer( $wp_customize ) {
    $wp_customize->add_section(
        'giroptic_social',
        array(
            'title'     => 'General information',
            'priority'  => 203
        )
    );
    
    // disabling
    $wp_customize->add_setting(
        'giroptic_social_disabled',
        array(
            'default'      => 'false',
            'sanitize_callback'  => 'esc_url_raw',
            'transport'    => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social_disabled',
        array(
            'label'    => 'Disable TF social-icons',
            'section'  => 'giroptic_social',
            'type'     => 'checkbox',
        )
    );
    
    // facebook
    $wp_customize->add_setting(
        'giroptic_social[tf_facebook]',
        array(
            'default'      => 'http://www.facebook.com',
            'sanitize_callback'  => 'esc_url_raw',
            'transport'    => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social[tf_facebook]',
        array(
            'label'    => 'Facebook URL',
            'section'  => 'giroptic_social',
            'type'     => 'text',
        )
    );
    
    //twitter
    $wp_customize->add_setting(
        'giroptic_social[tf_twitter]',
        array(
            'default'      => 'http://www.twitter.com',
            'sanitize_callback'  => 'esc_url_raw',
            'transport'    => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social[tf_twitter]',
        array(
            'label'    => 'Twitter URL',
            'section'  => 'giroptic_social',
            'type'     => 'text',
        )
    );
    
    //linkedin
    $wp_customize->add_setting(
        'giroptic_social[tf_linkedin]',
        array(
            'default'      => 'http://www.linkedin.com',
            'sanitize_callback'  => 'esc_url_raw',
            'transport'    => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social[tf_linkedin]',
        array(
            'label'    => 'linkedin URL',
            'section'  => 'giroptic_social',
            'type'     => 'text',
        )
    );
    
    //google-plus
    $wp_customize->add_setting(
        'giroptic_social[tf_google-plus]',
        array(
            'default'      => 'http://www.google.com',
            'sanitize_callback'  => 'esc_url_raw',
            'transport'    => 'postMessage'
        )
    );
    $wp_customize->add_control(
        'giroptic_social[tf_google-plus]',
        array(
            'label'    => 'google-plus URL',
            'section'  => 'giroptic_social',
            'type'     => 'text',
        )
    );
    
    
    
}
add_action( 'customize_register', 'giroptic_social_customizer' );


/**
 * Footer copyright
 */
function giroptic_copyright_customizer( $wp_customize ) {
    $wp_customize->add_section(
        'giroptic_copyright',
        array(
            'title'     => 'Copyright',
            'priority'  => 204
        )
    );
    
    $wp_customize->add_setting(
        'giroptic_copyright',
        array(
            'sanitize_callback'  => 'zerif_sanitize_text'
        )
    );
    
    $wp_customize->add_control(
        'giroptic_copyright',
        array(
            'label'    => 'Сopyright',
            'section'  => 'giroptic_copyright',
            'type'     => 'text',
        )
    );
}
add_action( 'customize_register', 'giroptic_copyright_customizer' );
