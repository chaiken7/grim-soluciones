</div>
<footer class="footer" data-background-color="black">
  <div class="container p-4">
    <div class="row mt-4 p-3">
      <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
        <h5 class="text-uppercase mb-4 pb-1">Contactános</h5>
        <ul>
          <li class="mb-3">
            <i class="fas fa-envelope"></i><a href="#">grimsoluciones@gmail.com</a>
          </li>
          <li class="mb-3">
            <i class="fas fa-phone"></i><a href="#">+ 59 11 5695-5068</a>
          </li>
        </ul>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 mb-md-0 ">
        <h5 class="text-uppercase mb-4 pb-1">Menú</h5>
        <?php
        $args = array(
          'theme_location' => 'menu-principal',
          'container' => 'nav'
        );
        wp_nav_menu($args);
        ?>
      </div>
      <div class="col-lg-4 col-md-12 mb-4 mb-md-0">
        <h5 class="text-uppercase mb-4">Sobre Nosotros</h5>

        <p class="texto-footer">
          Hemos estado en el negocio por 5 años y nos encanta lo que hacemos. Nuestra pasión es ayudar a nuestros clientes a crear sitios web impresionantes y efectivos que reflejen su marca y su visión.
        </p>
      </div>
    </div>
    <!--Grid row-->
  </div>
  <div class="container text-center">
    <div class="copyright" id="copyright">
      <p>Todos los derechos reservados. <?php echo get_bloginfo('name') . " " . date('Y') ?></p>
    </div>
  </div>
</footer>
<?php wp_footer() ?>
</body>

</html>