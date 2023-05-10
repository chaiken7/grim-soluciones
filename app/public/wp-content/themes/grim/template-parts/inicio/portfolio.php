<div class="section" id="carousel">
    <div class="container text-center">
        <div class="title">
            <h2 class="title">Transformamos ideas en diseños web innovadores que cautivan y conectan con el usuario</h2>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-12">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <!-- Indicadores de las diapositivas  -->
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <?php
                        $args = [
                            'post_type' => 'slider',
                            'posts_per_page' => 5,
                            'orderby' => 'date',
                            'order' => 'desc',
                            'exclude' => '',
                            'post_status' => 'publish',
                        ];

                        $slider = get_posts($args);
                        ?>
                        <?php $count = 0; ?>
                        <?php foreach ($slider as $slide) : ?>
                            <div class="carousel-item <?php echo ($count == 0) ? 'active' : ''; ?>">
                                <div class="carousel-caption-template d-none d-md-block" style="animation-name: fadeInUp;animation-delay: 1s;animation-duration: 2s;">
                                    <p><?php echo $slide->post_content; ?></p>
                                </div>
                            </div>
                            <?php $count++; ?>
                        <?php endforeach; ?>
                    </div>

                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>