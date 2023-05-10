<?php if (is_front_page()) {?>

<div class="page-header clear-filter" filter-color="orange">
      <div class="page-header-image" data-parallax="true" id="header-inicio">
      </div>
      <div class="container">
        <div class="content-center brand">
          <img class="n-logo" alt="">
          <h1 class="h1-seo"><?php the_field('encabezado_hero') ?></h1>
          <h2 class="h2-seo"><?php the_field('texto_hero') ?></h3>
        </div>
      </div>
    </div>

    <?php } ?>