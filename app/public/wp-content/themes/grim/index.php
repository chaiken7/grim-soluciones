<?php
get_header();
?>
<div class="wrapper">
  <?php
  while (have_posts()) : the_post();

    the_title();

    the_content();

  endwhile;
  ?>
  
</div>

<?php get_footer(); ?>