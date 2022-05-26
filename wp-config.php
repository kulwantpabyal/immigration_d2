<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'testt' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'yqpLFe1lI#}[xqz6:Bw @vze?m>Nlm}7fYR`%}kO1Vf}pTZ#Ew-+A1z*p:jG5uT%' );
define( 'SECURE_AUTH_KEY',  'A B=j!s]+QM)QET<:TwWFiVm( }-62e|1XaZYclh&Zu(&rMprskgr7nGegW4MDf|' );
define( 'LOGGED_IN_KEY',    '_PC,&,)+%0YN]HGQ#VA[R]smw2E?K9gVC`j(aK2H9O~W`g%DWyI~(#FlMX?9Kw@~' );
define( 'NONCE_KEY',        'aYjK)j[#jy(?kc5G,6>NgBAGsU2C/e|!DVMI:*PjKU7;EYp(_[mXxcPpOI6lq__{' );
define( 'AUTH_SALT',        'lO:bWQG=e.0+^Xlv=^9;3iUN#4uOpEBzf5w|yV16_;UMk$p Z0mX,2FqU5U FPW+' );
define( 'SECURE_AUTH_SALT', '={k,0^-B>Lhm[ur+v3x|^ oir=b24P|z|&m-XW/*<[Bp]?INp=ROl%^iNa?qHdo|' );
define( 'LOGGED_IN_SALT',   '*dIERBM+1LG,(qJm4UT}g7IsE@e4x+13jGez;9=AKaz9TqQ?B&s2*|>1A,:S99(Z' );
define( 'NONCE_SALT',       'oFGNVmOZo>K;vz&VRcJp*]~!YgkAK@K-dT,H>5T $E%Cs;3?ahiUG<mO9SC!YR&W' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
ini_set('display_errors','Off');
ini_set('error_reporting', E_ALL );
define('WP_DEBUG', false);
define('WP_DEBUG_DISPLAY', false);
/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}


define( 'WP_MEMORY_LIMIT', '256M' );

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
