<nav>
    <?php
        /**
         * Displays a navigation menu
         * @param array $args Arguments
         */
        $args = array(
            'container' => 'ul',
            'theme_location' => 'primary-menu'
        );

        wp_nav_menu( $args );
    ?>
</nav>
