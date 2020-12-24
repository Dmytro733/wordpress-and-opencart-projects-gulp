<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'database_jeverly' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'SLEg{+DDiChoLf6OBH^wPZGR5TS-4W#~d3CBe<8+wq?yK],#vj49!]uZ|w){[RU>' );
define( 'SECURE_AUTH_KEY',  'WT,rR8DD?>=1XP6[|lB6N/-,*#-/Xp.!e=1R|x1P.//l)wX&/a%F#;q7[~~S+F~g' );
define( 'LOGGED_IN_KEY',    '>bv:m*LC6CoF+j29q*jXd38-7g:tM_a+J/AE5@fZ53qb=eg,TJA[>NGKe0?(e1mg' );
define( 'NONCE_KEY',        ':070xKk-(.6&!&J[sR+h6R#=dEx}dz72=2Uu,*`}nRO{[Z a><p!y:qF1?f}K;@V' );
define( 'AUTH_SALT',        '@mqLu4YUT#Z 7;lUpow$Jap~hXE:Sg,gF7sJ3NSWJ&R8t-3Mgl{XYmE%_pwG5nIw' );
define( 'SECURE_AUTH_SALT', ':6(NWUcB{n*EJ8.&r/_k3fxdHXYpF-3!@s<D|1xs-{HkY_`3sjWv&tstN8ta8E+5' );
define( 'LOGGED_IN_SALT',   '?sNJXB&4LRy=w%ow[C4cdX2XlZ^}z>m KX,#2$9-}/ U6hR.a6ug34~v=eG2NPL1' );
define( 'NONCE_SALT',       '^bqM1Uzh%SVBN@0/gU1/0eBkQwPp7@pDUVtZ%zK~+,+oPW[i`hQ:3;y#Il7/5lUd' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
