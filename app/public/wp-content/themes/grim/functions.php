<?php
function grim_assets()
{

    wp_register_style("google-font", "https://fonts.googleapis.com/css?family=Montserrat:400,700,200", array(), false, 'all');
    wp_register_style("bootstrap", get_template_directory_uri() . "./assets/css/bootstrap.min.css", array(), "5-2-3", 'all');
    wp_register_style("grim", get_template_directory_uri() . "./assets/css/grim.css?v=1.3.0", array(), "", 'all');
    wp_register_style("font-awesome", "https://use.fontawesome.com/releases/v5.7.1/css/all.css", array(), "", 'all');

    wp_enqueue_style("estilos", get_template_directory_uri() . "./assets/css/styles.css", array("google-font", "bootstrap", "font-awesome", "grim"));



    wp_register_script("popper", get_template_directory_uri()."./assets/js/core/popper.min.js", array(), "j-query", "all");
    wp_register_script("bootstrap-js", get_template_directory_uri()."./assets/js/core/bootstrap.min.js", array(), "5-2-3", "all");
    wp_register_script("j-query", get_template_directory_uri()."./assets/js/core/jquery.min.js", array(), false, "all");
    wp_register_script("fontawesome", "https://kit.fontawesome.com/10e3ee885e.js", array(), false, "all");


    wp_enqueue_script("grim-js", get_template_directory_uri() . "./assets/js/scripts.js?v=1.3.0", array("popper", "j-query", "bootstrap-js","fontawesome"));
}

add_action("wp_enqueue_scripts", "grim_assets");

function grim_menus(){
    register_nav_menus(array(
        'menu-principal' => __('Menu Principal', 'grim')
    ));
}

add_action('init', 'grim_menus');


function grim_setup(){
    // Imagenes Destacadas
    add_theme_support('post-thumbnails');

    //Titulos para SEO
    add_theme_support('title-tag');

}
add_action('after_setup_theme', 'grim_setup');

//Post Type Slideer

function bootstrapSlider() {
    $labels = [
	'name'               => _x( 'Bootstrap Slider Wordpress', 'txt-domain'), // Contiene el nonbre del post. usaremos _x para cambiar el idioma. Similar a __
	'singular_name'      => _x( 'Slide', 'post type singular name'), 
	'menu_name'          => _x( 'Diapositivas', 'txt-domain'),	
	'add_new'            => _x( 'Incluir', 'txt-domain'), // texto para incluir 
	'add_new_item'       => __( 'Incluir diapositiva', 'txt-domain'), // Nombre
	'new_item'           => __( 'Nueva diapositiva', 'txt-domain'), //
	'edit_item'          => __( 'Editar diapositiva', 'txt-domain'),
	'view_item'          => __( 'Ver diapositiva', 'txt-domain'),
	'all_items'          => __( 'Todas las diapositivas', 'txt-domain'),
	'featured_image'     => __( 'Imagen destacada', 'txt-domain' ),
	'search_items'       => __( 'Buscar diapositiva', 'txt-domain'),
	'parent_item_colon'  => __( 'Padre de la diapositova:', 'txt-domain'),
	'not_found'          => __( 'No se encontraron diapositivas.', 'txt-domain'),
	'not_found_in_trash' => __( 'No se encontraron diapositivas en la papelera.', 'txt-domain') ];
 
    $args = [
	'labels'             => $labels,
	'menu_icon'	     => 'dashicons-format-gallery',
        'description'        => __( 'Description.', 'txt-domain'),
	'public'             => true,
	'publicly_queryable' => true,
        'exclude_from_search' => true,
	'show_ui'            => true, // genera un UI para administrar este tipo en el gestor de WordPress.
	'show_in_menu'       => true, // Lo muestra en el menú de administración de WordPres.        
	'query_var'          => true,
	'rewrite'            => true,
	'capability_type'    => 'post', 
	'has_archive'        => true,
	'hierarchical'       => true,
	'menu_position'      => null, // posición en el menú.
	'supports'           => array('title','editor','author','thumbnail','revisions','page-attributes') ];
        
 
    // Podremos usar esta funcion para themes y plugins.  
    // Cuidado con usar palabras reservadas por WordPres (post, page, attachment, revision, nav_menu_item, custom_css ...) 
    // Los argumentos son el tipo de post que queremos registrar y sus argumentos (array).
    // - El tipo de post sin mayusculas, simbolos y espacios. Que no supere los 20 caracteres.
    // - argumentos (array)
    register_post_type( 'slider', $args );
}
add_action( 'init', 'bootstrapSlider' );



//Imagenes dinámicas como BG
function grim_hero_imagen(){
    //Obtener el id de la pagina de inicio
    $front_id = get_option('page_on_front');

    $id_page = get_the_id();

    //Obtener la imagen
    $id_imagen = get_field('hero_imagen', $front_id);

    //Obtener ruta de imagen
    $imagen = wp_get_attachment_image_src($id_imagen, 'full')[0];

    //Crear Css
    wp_register_style('custom', false);
    wp_enqueue_style('custom');

    $imagen_destacada_css = "
        #header-inicio {
            background-image: url($imagen);
        }
    ";

    //Inyectar Css
    wp_add_inline_style('custom', $imagen_destacada_css );

}
add_action('init', 'grim_hero_imagen');

//DashIcons

add_action( 'wp_enqueue_scripts', 'dcms_load_dashicons_front_end' );

function dcms_load_dashicons_front_end() {
	wp_enqueue_style( 'dashicons' );
}

//Migas de navegacion

function breadcrumbs() {
    echo '<div class="breadcrumbs">';
    if (!is_home()) {
      echo '<a href="' . home_url('/') . '">Inicio</a> / ';
      if (is_category() || is_single()) {
        the_category(' / ');
        if (is_single()) {
          echo ' / ';
          the_title();
        }
      } elseif (is_page()) {
        echo the_title();
      }
    }
    echo '</div>';
  }
  

    //Redireccion Pagina de Agradecimiento COntact Form 7
  
add_action( 'wp_footer', 'redirect_cf7' );
 
function redirect_cf7() {
?>
<script type="text/javascript">
document.addEventListener( 'wpcf7mailsent', function( event ) {
       location = 'https://grimsoluciones.com.ar/formulario-enviado/';
}, false );
</script>
<?php
}