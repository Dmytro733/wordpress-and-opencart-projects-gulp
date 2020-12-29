<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package beAlwaysRight
 */

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
	<title><?php bloginfo( 'name' ); wp_title(); ?></title>
	<meta name="description" content="">
	<meta name="author" content="saptarang">
	
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- Google Font Code -->
	<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/css/bootstrap-grid.css">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<?php wp_head(); ?>
</head>

<body>
<!-- start HEADER -->
	<section id="top" class="page-block">
	  	<header class="header">
	  	  	<div class="contain">
	  	  	  	<div class="row top-main">
	  	  	  	  	<div class="col-lg-6 left-block">
						<div class='left-block_brend'>
							<?php
								the_custom_logo();
								if ( is_front_page() && is_home() ) :
									?>
									<p class="left-block_description"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
									<?php
								else :
									?>
									<p class="left-block_description"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
									<?php
								endif;
								$beAlwaysRight_description = get_bloginfo( 'description', 'display' );
								if ( $beAlwaysRight_description || is_customize_preview() ) :
							?>
								<p class="site-description"><?php echo $_description; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></p>
							<?php endif; ?>
						</div>
						<div class='left-block_big-brend'>
							<img src="wp-content/themes/beAlwaysRight/img/icon_big1.svg" alt="">
						</div>		
					</div><!-- end col-lg-6 -->
	  	  	  	  	<div class="col-lg-6 right-block">
						<?php wp_nav_menu([
							'theme_location' => 'header-menu',
							'container' => 'nav',
							'menu_class' => 'list-inline collapse navbar-collapse',
							'menu_id' => 'Navigation'	
						] ); ?>
						<div class='right-block_text'>
							<h1><?php the_field('right_text') ?></h1>
							<p><?php the_field('right_desc') ?></p>
						</div>
						<a href="#finish" class='drag-handle'><button><img src="wp-content/themes/beAlwaysRight/img/drag-handle.svg" alt=""></button></a>
	  	  	  	  	</div><!-- end col-lg-6 --> 	  
	  	  	  	</div><!-- end row --> 
	  	  	</div><!-- end contain -->
	  	</header>
	</section>
<!-- end HEADER --> 


