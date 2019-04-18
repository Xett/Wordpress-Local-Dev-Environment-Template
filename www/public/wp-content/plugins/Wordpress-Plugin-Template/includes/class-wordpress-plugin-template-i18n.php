<?php

/**
 * Define the internationalization functionality
 *
 * Loads and defines the internationalization files for this plugin
 * so that it is ready for translation.
 *
 * @link       https://github.com/Xett
 * @since      1.0.0
 *
 * @package    Wordpress_Plugin_Template
 * @subpackage Wordpress_Plugin_Template/includes
 */

/**
 * Define the internationalization functionality.
 *
 * Loads and defines the internationalization files for this plugin
 * so that it is ready for translation.
 *
 * @since      1.0.0
 * @package    Wordpress_Plugin_Template
 * @subpackage Wordpress_Plugin_Template/includes
 * @author     Ethan Jones <ethan.jones@my.jcu.edu.au>
 */
class Wordpress_Plugin_Template_i18n {


	/**
	 * Load the plugin text domain for translation.
	 *
	 * @since    1.0.0
	 */
	public function load_plugin_textdomain() {

		load_plugin_textdomain(
			'wordpress-plugin-template',
			false,
			dirname( dirname( plugin_basename( __FILE__ ) ) ) . '/languages/'
		);

	}



}
