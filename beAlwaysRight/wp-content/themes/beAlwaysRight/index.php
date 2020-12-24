<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package beAlwaysRight
 */
?>

<?php get_header(); ?>

<section class="info"> 	
	<div class="contain">
	  	<div class="row info-top">
	  	  	  	<div class="col-lg-6 info-top_left-block">
					<div class='info-top_left'>
						<p class="left-block_description"><?php the_field('left-block_team-desc') ?></p>
					</div>	
				</div><!-- end col-lg-6 -->
	  	  	  	<div class="col-lg-6 info-top_right">
					<h1><?php the_field('right-block_team-header') ?></h1>
	  	  	  	</div><!-- end col-lg-6 --> 	  
		</div><!-- end row -->
		<div class="row industries">
		
			<?php
				$categories = get_terms(array(
					'hide_empty'	=> 0,
					'orderby'		=> 'name',
					'order'			=> 'ASC',
					'taxonomy'		=> 'category',
				));
			?>
			<?php foreach( $categories as $category ){?>
				<div class="col-lg-6 industries_category">
					<div class='industries_category-img'>
						<?php if($img_taksonimy=get_field("img_taksonimy",get_category($category))){?>
							<img src="<?php echo $img_taksonimy;?>"/>
						<?php }?>
						<h1>
							<?php echo $category -> name; ?>
						</h1>
					</div>
					
					<p><?php echo $category->description; ?></p>
					<div class="dropdown">
  						<button class="dropbtn">Переглянути спеціалістів</button>
						<ul class="dropdown-content">
							<?php 
							$args = array(
								'orderby' => 'comment_count',
								'cat' =>$category->term_id
							);
							$query = new WP_Query( $args ); ?>
							<?php if ( $query->have_posts() ) : ?>
								<?php while ( $query->have_posts() ) : $query->the_post(); ?>
									<li><?php the_title(); ?></li>
								<?php endwhile; ?>
								<?php wp_reset_postdata(); ?>
							
							<?php else : ?>
								<span><?php esc_html_e( 'Список порожній!' ); ?></span>
							<?php endif; ?>
						</ul>	
					</div>
				</div>
			<?php } ?>
				
			
		</div><!-- end row -->
	</div><!-- end contain -->
</section>

<script src="wp-content/themes/beAlwaysRight/js/my.js"></script>
<?php get_footer(); ?>
