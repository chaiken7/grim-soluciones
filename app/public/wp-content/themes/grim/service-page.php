<?php
/*
* Template Name: Servicios
*/
get_header();
?>
<?php
while (have_posts()) : the_post();
?>
    <div class="page-header-page clear-filter" filter-color="orange">
        <div class="page-header-image" data-parallax="true" id="header-inicio">
        </div>
        <div class="container">
            <div class="content-center brand">
                <h1 class="h1-seo"><?php the_title() ?></h1>
                <h3>Descubre nuestras opciones de diseño web para tu negocio.</h3>
                <?php breadcrumbs(); ?>
                <a href="/contacto/" class="btn btn-col">CONTACTANOS</a>
            </div>
        </div>
    </div>
<?php endwhile;
?>

<div class="wrapper">
    <?php get_template_part('template-parts/servicios/diseño-web'); ?>
    <?php get_template_part('template-parts/servicios/ecommerce-precios'); ?>
    <?php get_template_part('template-parts/servicios/seo'); ?>
</div>


<?php get_footer(); ?>