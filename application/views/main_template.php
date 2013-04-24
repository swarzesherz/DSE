<?php
	
	/* Se construye la vista indicando los recursos que se necesitan en el header correspondiente */
	/* Pagina principal */
	if ($pagina == 'view_principal'){

		$this->carabiner->css('layout.css');
		$this->carabiner->css('navi.css');
		$this->carabiner->css('featured_slide.css');
		$this->carabiner->css('homepage.css');

		$this->carabiner->js('jquery-1.4.1.min.js');
		$this->carabiner->js('jquery-s3slider.js');
		$this->carabiner->js('jquery-s3slider.setup.js');

	}

	/* Pre-registro */

    if ($pagina == 'view_pre_registro'){

		$this->carabiner->css('layout.css');
		
		$this->carabiner->js('jquery-1.4.1.min.js');
		$this->carabiner->js('validacion.js');
	}

	/* Login */

	if ($pagina == 'view_login'){

		$this->carabiner->css('login.css');
		
	}

	/* Se arma la plantilla a visualizar */
	
    include('header.php');
	include($pagina.'.php');
	include('footer.php');
	
?>