<?php

/**
 * Página de Error 404 personalizada para WordPress
 */

get_header();
?>

<div class="wrapper">
    <div class="page-header-page clear-filter" filter-color="orange">
        <div class="page-header-image" data-parallax="true" id="header-inicio">
        </div>
        <div class="container">
            <div class="content-center brand">
            </div>
        </div>
    </div>
    <div class="container mb-5 mt-5">
        <div class="row justify-content-md-center">
            <h1 class="title">La pagina solicitada no existe</h1>
            <p class="text-center texto-item">"Lo sentimos, la página que estás buscando no se encuentra disponible en nuestro sitio web. Por favor, intenta realizar una nueva búsqueda o navega a través de nuestro menú de opciones para encontrar el contenido que necesitas".</p>
            <a href="/" class="btn btn-primary btn-round btn-lg">Ir al Inicio</a>
        </div>
    </div>

</div>

<?php
get_footer();
