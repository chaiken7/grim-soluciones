<?php
/*
* Template Name: Pagina de Agradecimiento
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
                <h3>Gracias por completar el formulario</h3>
                <?php breadcrumbs(); ?>
            </div>
        </div>
    </div>
<?php endwhile;
?>
<div class="section">
    <div class="container">
        <div class="text-center mb-4">
            <p>En la brevedad un asesor se contactará para conversar mas en profundidad sobre el proyecto.</p>
            <a href="/" class="btn btn-primary btn-round btn-lg">Volver</a>
        </div>
    </div>
</div>

<?php get_footer(); ?>