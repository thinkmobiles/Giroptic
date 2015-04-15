<?php
/* * ************************* */

/* * **** clients widget * */

/* * ************************ */

add_action('init', 'sample_widget::check_widget');

add_action('widgets_init', 'giroptic_register_widgets');

function giroptic_register_widgets() {
    register_widget('zerif_clients_widget');
    register_widget('homep_widget');
}

add_action('customize_controls_print_scripts', 'zerif_clients_widget_scripts');

function zerif_clients_widget_scripts() {
    wp_enqueue_media();
    wp_enqueue_script('zerif_clients_widget_script', get_template_directory_uri() . '/js/widget-clients.js', false, '1.0', true);
}

class zerif_clients_widget extends WP_Widget {

    function zerif_clients_widget() {

        $widget_ops = array('classname' => 'zerif_clients');

        $this->WP_Widget('zerif_clients-widget', 'Zerif - Clients widget', $widget_ops);
    }

    function widget($args, $instance) {

        extract($args);


        echo $before_widget;
        ?>

        <a href="<?php
        if (!empty($instance['link'])): echo apply_filters('widget_title', $instance['link']);
        endif;
        ?>"><img
                src="<?php
                if (!empty($instance['image_uri'])): echo esc_url($instance['image_uri']);
                endif;
                ?>" alt="Client"></a>



        <?php
        echo $after_widget;
    }

    function update($new_instance, $old_instance) {

        $instance = $old_instance;

        $instance['link'] = strip_tags($new_instance['link']);

        $instance['image_uri'] = strip_tags($new_instance['image_uri']);

        return $instance;
    }

    function form($instance) {
        ?>
        <p>
            <label for="<?php echo $this->get_field_id('link'); ?>"><?php _e('Link', 'zerif-lite'); ?></label><br/>
            <input type="text" name="<?php echo $this->get_field_name('link'); ?>"
                   id="<?php echo $this->get_field_id('link'); ?>" value="<?php
                   if (!empty($instance['link'])): echo $instance['link'];
                   endif;
                   ?>"
                   class="widefat"/>

        </p>
        <p>
            <label for="<?php echo $this->get_field_id('image_uri'); ?>"><?php _e('Image', 'zerif-lite'); ?></label><br/>
            <?php
            if (!empty($instance['image_uri'])) :
                echo '<img class="custom_media_image_clients" src="' . $instance['image_uri'] . '" style="margin:0;padding:0;max-width:100px;float:left;display:inline-block" /><br />';
            endif;
            ?>
            <input type="text" class="widefat custom_media_url_clients"
                   name="<?php echo $this->get_field_name('image_uri'); ?>"
                   id="<?php echo $this->get_field_id('image_uri'); ?>" value="<?php
                   if (!empty($instance['image_uri'])): echo $instance['image_uri'];
                   endif;
                   ?>"
                   style="margin-top:5px;">
            <input type="button" class="button button-primary custom_media_button_clients"
                   id="custom_media_button_clients" name="<?php echo $this->get_field_name('image_uri'); ?>"
                   value="<?php _e('Upload Image', 'zerif-lite'); ?>" style="margin-top:5px;"/>
        </p>
        <?php
    }

    

}

// Creating the widget 
class homep_widget extends WP_Widget {

    function __construct() {
        parent::__construct(
// Base ID of your widget
            'homep_widget',
// Widget name will appear in UI
            __('Homepage Widget', 'homep_widget_domain'),
// Widget description
            array('description' => __('Use on homepage', 'homep_widget_domain'),)
        );
    }

// Creating widget front-end
// This is where the action happens
    public function widget($args, $instance) {
        $title = apply_filters('widget_title', $instance['title']);
        $link = apply_filters('widget_link', $instance['link']);
// before and after widget arguments are defined by themes
        echo $args['before_widget'];
        if (!empty($link))
            echo $args['before_link'] . $link . $args['after_link'];

        if (!empty($title))
            echo $args['before_title'] . $title . $args['after_title'];

// This is where you run the code and display the output

        echo $args['after_widget'];
    }

// Widget Backend 
    public function form($instance) {
        if (isset($instance['title'])) {
            $title = $instance['title'];
        } else {
            $title = __('New title', 'homep_widget_domain');
        }

        if (isset($instance['link'])) {
            $link = $instance['link'];
        } else {
            $link = __('http://mysite.com', 'homep_widget_domain');
        }

// Widget admin form
        ?>
        <p>
            <label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title:'); ?></label> 
            <input 
                class="widefat" 
                id="<?php echo $this->get_field_id('title'); ?>" 
                name="<?php echo $this->get_field_name('title'); ?>" 
                type="text" 
                value="<?php echo esc_attr($title); ?>" 
                />
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('link'); ?>"><?php _e('Link:'); ?></label> 
            <input 
                class="widefat" 
                id="<?php echo $this->get_field_id('link'); ?>" 
                name="<?php echo $this->get_field_name('link'); ?>" 
                type="text" 
                value="<?php echo esc_attr($link); ?>" 
                />
        </p>


        <?php
    }

// Updating widget replacing old instances with new
    public function update($new_instance, $old_instance) {
        $instance = array();
        $instance['title'] = (!empty($new_instance['title']) ) ? strip_tags($new_instance['title']) : '';
        $instance['link'] = (!empty($new_instance['link']) ) ? strip_tags($new_instance['link']) : '';
        return $instance;
    }

}
