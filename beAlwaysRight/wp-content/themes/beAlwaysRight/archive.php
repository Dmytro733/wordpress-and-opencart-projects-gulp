<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package _stem
 */

get_header();
?>

	<main class="main-archive">
		<header class="page-header">
			<h3>НАШІ РОБОТИ</h3>
			<h4>Останні реалізовані проекти.</h4>
			<h3>Представлені СЕС різної потужності, способу монтажу, кутів нахилу.</h3>
		</header><!-- .page-header -->
				<section id="gallery" class="">
	  				<div class="container">
	  				  	<div class="row clearfix speaker-grid">	
							<?php if ( have_posts() ) : ?>
							<?php while ( have_posts() ) : the_post(); ?>
							<div class="col-md-4 col-sm-6 col-xs-6">
	  					  			<div class="section no-padding">
	  					  			  	<figure> 	
											<?php the_post_thumbnail(); ?>
	  					  			  	</figure>
	  					  			  	<div class="speaker clearfix">
	  					  			    	<div class="col-md-12 col-sm-12 col-xs-12">
												<a href="<?php the_permalink(); ?>"><h6><?php the_title(); ?></h6></a>
	  					  			    	</div>
	  					  				</div>
	  					  			</div>
	  						</div>
							<?php endwhile; ?>
			
							<?php wp_reset_postdata(); ?>
			
							<?php else : ?>
							<p><?php esc_html_e( 'Нет постов по вашим критериям.' ); ?></p>
							<?php endif; ?>
	  				  	</div>
	  				  	<!--end-row--> 		
	  				</div>
				</section>
	</main><!-- #main -->

<?php
get_footer();
