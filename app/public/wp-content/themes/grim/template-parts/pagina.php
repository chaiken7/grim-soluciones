<?php
while (have_posts()) : the_post();
?>
    <div class="page-header-page clear-filter" filter-color="orange">
        <div class="page-header-image" data-parallax="true">

            <?php if (has_post_thumbnail()) {
                the_post_thumbnail();
            } ?>
        </div>
        <div class="container">
            <div class="content-center brand">
                <h1 class="h1-seo"><?php the_title() ?></h1>
                <h3>A beautiful Bootstrap 4 UI kit. Yours free.</h3>
                <btn class="btn btn-neutral">CONTACTANOS</btn>
            </div>
        </div>
    </div>
    <?php the_content() ?>
<?php endwhile;
?>
