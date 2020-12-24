<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package jeverly
 */

?>
<div class="dekor">
	<img src="/wp-content/themes/jeverly/build/images/06_jeverly_decor_post.jpg" alt="">
</div>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<?php jeverly_post_thumbnail(); ?>
	<header class="entry-header">
		<?php 
		if ( is_singular() ) :
			the_title( '<h1 class="entry-title">', '</h1>' );
		else :
			the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
		endif;
		if ( 'post' === get_post_type() ) :
			?>
			<div class="entry-meta">
					<span><?php the_time('d F')?></span> by <span><?php the_author()?></span>
			</div>
		<?php endif; ?>
	</header>
	<div class="entry-content">
		<?php
		the_content(
			sprintf(
				wp_kses(__( 'read post', 'jeverly' ),
					array(
						'span' => array(
							'class' => array(),
						),
					)
					
				),
				wp_kses_post( get_the_title() )
			)
		);

		wp_link_pages(
			array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'jeverly' ),
				'after'  => '</div>',
			)
		);
		?>
		<div class='comment'>
			<span>
				<?php comments_number('0', '1', '%'); ?>
				<i class="fa fa-comment" aria-hidden="true"></i>
			</span>
		</div>
		
	</div><!-- .entry-content -->
	
</article><!-- #post-<?php the_ID(); ?> -->
