<?php
/*
* Template Name: Pagina de Inicio
*/
get_header();
?>

<div class="wrapper">
    <?php get_template_part('template-parts/inicio/head'); ?>
    <?php get_template_part('template-parts/inicio/service'); ?>
    <?php get_template_part('template-parts/inicio/proceso'); ?>
    <?php get_template_part('template-parts/inicio/especialistas'); ?>
    <?php get_template_part('template-parts/inicio/contact'); ?>
</div>

<?php get_footer(); ?>