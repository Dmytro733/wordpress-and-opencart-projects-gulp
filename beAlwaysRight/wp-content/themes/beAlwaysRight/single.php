<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package beAlwaysRight
 */

get_header();
?>

	<div id="primary" class="site-main">

		<?php the_post(); ?>

		
		<?php the_post_thumbnail('full'); ?>
		
		<h1 class='site-main_title_post'><?php the_title(); ?></h1>
		<div class='site-main_info-post'>
			<ul>
				<li><?php the_time( 'M.j.Y' ); ?></li>
				<li><?php the_author(); ?></li>
			</ul>
		</div>
		<div class='site-main_content'>
			<?php the_post_thumbnail('full'); ?>
			<?php the_content(); ?>
		</div>
		

	</div><!-- #main -->

<?php
get_sidebar();
get_footer();
