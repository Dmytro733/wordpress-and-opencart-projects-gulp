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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'bealwaysright' );

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
define( 'AUTH_KEY',         'L=zY_g5k~q-?hiakd[z*8W&r`So9vhJyMWbPA$R-4Aq~/,AR-5+~2v#I5 i<^t07' );
define( 'SECURE_AUTH_KEY',  '&yJj-+)Dm@Lj[qwd*[BK;p6#2X12h66o3!FW&5Uay|Z{AhBj)hZ#R8qwjG%Pf/9*' );
define( 'LOGGED_IN_KEY',    'FML$2{^6yqefWiNw@R[Wz/f8q-=n7mul`K^^!?_}AB?qyimtPfGxt&fL&i1uoAne' );
define( 'NONCE_KEY',        '7]m*nGV{Y|f&gF/HDIBvZe!b@=/Wr8VW3f K|G(B+Y#sn.C<l^P{`uwL$PdzI*`;' );
define( 'AUTH_SALT',        'buq*z)91u*X[dd|[F3Q[%*T/MY%OB(eXh91;}vI!kXt9cjtrm#),1A3d*PEk<Hs,' );
define( 'SECURE_AUTH_SALT', 'xqHZjNgiD:w9^Wiu7M6*c)aeeeIMc+(Q6Nngc|tirlY}k}&}4ZEL/nn+toslNL4x' );
define( 'LOGGED_IN_SALT',   'k()j|~h-a@y/,78Nji/nxi57?PY*rQ0,5{(u;n^~mh yA <^7Eg=-L/~$ZHWP$Bt' );
define( 'NONCE_SALT',       '_4$r2@?b.vz03n HDc-r+E@<BTEl`~4_Ra6:Hgw;IG3[<:]nI,4CT`ypXL~aD??#' );
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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
