<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */
define('FS_METHOD', 'direct');

define( 'SUNRISE', 'on' );
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
//define('DB_NAME', 'phpmyadmin.ovh.net');

/** MySQL database username */
//define('DB_USER', 'camusvokxjukr');

define('DB_NAME', 'giroptic');
define('DB_USER', 'root');
define('DB_PASSWORD', 'Sasha123');
define('DB_HOST', 'localhost');

/** MySQL database password */
//define('DB_PASSWORD', 'UkrGiro360');

/** MySQL hostname */
//define('DB_HOST', 'camusvokxjukr.mysql.db');
/** Database Charset to use in creating database tables. */

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');
define('DB_CHARSET', 'utf8');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'u5/y;az%0 3h${!uP*aqd?x Njw6u.8x?Q9Lw/p5n+.3J^@w:Wa#_Olj4R.q3f97');
define('SECURE_AUTH_KEY',  '}El,RQ3|H7nQqzBSLggk62KOwPuW<f+UNFm~}YX,Q&@AlhddG{tFh|S/j&+ -/yK');
define('LOGGED_IN_KEY',    '0qmM*Dx9km|K,!Wi0/&jtgS{M:B{ofTgpWS6d~*4%JT?O3Xz9[| X$<A|e_[5Mt`');
define('NONCE_KEY',        '%4t &_I[BT}uG]8i#:2lJChcnTHbI&uFz):.:?F]7UCkf84xfc0]c&|$2M/$o@-}');
define('AUTH_SALT',        'qf{DuQZd+yn+u(<X:@}z940w9n6iN;`>w35g}ka2`A1c-)[kKMsZ -Gob@X6:. +');
define('SECURE_AUTH_SALT', 'a-sw,OkTR7G%Da=UBxk-TSeH{?=]4YcZ9)-_.-T+KOBrG0!{6X o!aIEJms={Am$');
define('LOGGED_IN_SALT',   '{JBg^Ul*Kj@Q[I ))s:%/p3>83$Y0eDK-xeita+xN/XR$cIPI||9Y;W^^K8gbAH,');
define('NONCE_SALT',       'a}g*Zw7z)bfmzVx:BG~+-+|5hKgOP#7#zGqD9fxfxsQ$%Z$C:SBGdjn}+Fa:tk^`');
define( 'MULTISITE', true );

define('ADMIN_COOKIE_PATH', '/');
//define('COOKIE_DOMAIN', '');
define('COOKIEPATH', '');
define('SITECOOKIEPATH', '');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);


/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

