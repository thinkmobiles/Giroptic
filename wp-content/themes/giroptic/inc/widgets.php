<?php
/* * ************************* */

/* * **** clients widget * */

/* * ************************ */

add_action('widgets_init', 'giroptic_register_widgets');

function giroptic_register_widgets() {
    register_widget('homep_widget');
}

add_filter( 'widget_name', function( $title ) { return '<b>' . $title . '</b>'; } );

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

    
// FRONT-END Backend 
    public function widget($args, $instance) {
        $name = apply_filters('widget_name', $instance['name']);
        $title = apply_filters('widget_title', $instance['title']);
        $link = apply_filters('widget_link', $instance['link']);
        $description = apply_filters('widget_description', $instance['description']);
        $image_uri = esc_url($instance['image_uri']);
        
        echo $args['before_widget'];

        if (!empty($name))
            echo $args['before_name'] . $name . $args['after_name'].'<br>';
        
        
        if (!empty($link))
            echo $args['before_link'] . $link . $args['after_link'].'<br>';

        if (!empty($title))
            echo $args['before_title'] . $title . $args['after_title'].'<br>';
            
        if (!empty($image_uri)):
    ?>
            <img
                src="<?php
                if (!empty($image_uri)):
                    echo $image_uri;
                endif;
                ?>" 
                alt="img"
            ><br>
    <?php
        endif;
        
        if (!empty($description))
            echo $args['before_description'] . $description . $args['after_description'];
        
        echo $args['after_widget'];
    }

// Widget Backend 
    public function form($instance) {
        if (isset($instance['name'])) {
            $name = $instance['name'];
        } else {
            $name = __('New name', 'homep_widget_domain');
        }
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
        
        if (isset($instance['description'])) {
            $description = $instance['description'];
        } else {
            $description = __('Short description', 'homep_widget_domain');
        }
        
        
        wp_enqueue_script('widget-clients', get_template_directory_uri() . '/js/widget-clients.js', FALSE, FALSE, FALSE);
// 
// Widget admin form
        ?>
        <p>
            <label for="<?php echo $this->get_field_id('name'); ?>"><?php _e('Title:', 'giroptic'); ?></label> 
            <input 
                class="widefat" 
                id="<?php echo $this->get_field_id('name'); ?>" 
                name="<?php echo $this->get_field_name('name'); ?>" 
                type="text" 
                value="<?php echo esc_attr($name); ?>" 
                />
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title:', 'giroptic'); ?></label> 
            <input 
                class="widefat" 
                id="<?php echo $this->get_field_id('title'); ?>" 
                name="<?php echo $this->get_field_name('title'); ?>" 
                type="text" 
                value="<?php echo esc_attr($title); ?>" 
                />
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('link'); ?>"><?php _e('Link:', 'giroptic'); ?></label> 
            <input 
                class="widefat" 
                id="<?php echo $this->get_field_id('link'); ?>" 
                name="<?php echo $this->get_field_name('link'); ?>" 
                type="text" 
                value="<?php echo esc_attr($link); ?>" 
                />
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('image_uri'); ?>"><?php _e('Image', 'giroptic'); ?></label><br/>

            <input type="text" 
                   class="widefat custom_media_url"
                   name="<?php echo $this->get_field_name('image_uri'); ?>"
                   id="<?php echo $this->get_field_id('image_uri'); ?>" 
                   value="<?php
                        if (!empty($instance['image_uri'])): 
                            echo $instance['image_uri'];
                        endif;
                   ?>"
                   style="margin-top:5px;">

            <input 
                type="button" 
                class="button button-primary custom_media_button"
                id="custom_media_button" 
                name="<?php echo $this->get_field_name('image_uri_button'); ?>"
                value="<?php _e('Upload Image', 'zerif-lite'); ?>" 
                style="margin-top:5px;"/>
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('description'); ?>"><?php _e('Short description:', 'giroptic'); ?></label><br/>
            <textarea
                id="<?php echo $this->get_field_id('description'); ?>" 
                class="widefat"
                name="<?php echo $this->get_field_name('description'); ?>"
            ><?php echo esc_attr($description); ?></textarea>
        </p>

        <?php
        if (!empty($instance['image_uri'])) :
            echo '<img class="custom_media_image" src="' . $instance['image_uri'] . '" style="margin:0;padding:0;max-width:100px;float:left;display:inline-block" /><br />';
        endif;
    }

// Updating widget replacing old instances with new
    public function update($new_instance, $old_instance) {
        $instance = array();
        $instance['name'] = (!empty($new_instance['name']) ) ? strip_tags($new_instance['name']) : '';
        $instance['title'] = (!empty($new_instance['title']) ) ? strip_tags($new_instance['title']) : '';
        $instance['link'] = (!empty($new_instance['link']) ) ? strip_tags($new_instance['link']) : '';
        $instance['image_uri'] = (!empty($new_instance['image_uri']) ) ? strip_tags($new_instance['image_uri']) : '';
        $instance['description'] = (!empty($new_instance['description']) ) ? strip_tags($new_instance['description']) : '';
        return $instance;
    }

}
