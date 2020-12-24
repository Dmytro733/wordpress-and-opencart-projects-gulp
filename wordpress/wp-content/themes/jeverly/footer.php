<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package jeverly
 */

?>

<footer id="colophon" class="site-footer">
	<div class="contain">
		<div class="row">
			<div class="col-2 col-sm-1 col-md-1 col-lg-1 col-xl-1">
				<div class="site-branding">
					<?php
					the_custom_logo();
					if ( is_front_page() && is_home() ) :
						?>
						<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
						<?php
					else :
						?>
						<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
						<?php
					endif;
					$jeverly_description = get_bloginfo( 'description', 'display' );
					if ( $jeverly_description || is_customize_preview() ) :
						?>
						<p class="site-description"><?php echo $jeverly_description; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></p>
					<?php endif; ?>
				</div>			
			</div>
		
			<div class="col-10 col-sm-7 col-md-7 col-lg-7 col-xl-8">
				<div class="site-info">
					<nav id="site-navigation" class="site-info_main-navigation">
						<?php
						wp_nav_menu(
							array(
								'theme_location' => 'menu-footer',
								'menu_id'        => 'footer',
							)
						);
						?>
					</nav><!-- #site-navigation -->
				</div><!-- .site-info -->
			</div>

			<div class="col-10 col-sm-4 col-md-4 col-lg-4 col-xl-3">		
				<aside class="widget-area_footer">
					<?php dynamic_sidebar( 'sidebar-footer' ); ?>
				</aside><!-- #secondary -->		
			</div>
		</div>
	</div>		
</footer><!-- #colophon -->

<?php wp_footer(); ?>

</body>
</html>
