<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package _stem
 */

?>


<!--BEGIN-FOOTER-->
	<footer class="footer">
		<div class="contain">
			<div class="col-lg-12 left-block">
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
			</div><!-- end col-lg-12 --> 
		</div>
	</footer>
	<!--END-FOOTER--> 

	<?php wp_footer(); ?>
	<div id='finish'></div>
</body>
</html>

