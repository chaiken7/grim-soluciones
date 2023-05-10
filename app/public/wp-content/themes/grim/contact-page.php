<?php
/*
* Template Name: Pagina de Contacto
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
                <h3>¡Hablemos sobre tu proyecto web!</h3>
                <?php breadcrumbs(); ?>
            </div>
        </div>
    </div>
<?php endwhile;
?>
<div class="section">
    <div class="container">
        <div class="text-center mb-4">
            <h3 class="card-title title-up">Te podemos ayudar!</h3>
            <p>Si tenés alguna pregunta o estás interesado en nuestros servicios, no dudes en ponerte en contacto con nosotros. Estamos siempre dispuestos a escuchar tus necesidades y ofrecerte la mejor solución.</p>
        </div>
        <div class="card shadow" data-background-color="orange">
            <?php echo do_shortcode('[contact-form-7 id="62" title="Formulario de contacto"]'); ?>
        </div>
    </div>
</div>

<?php get_footer(); ?>