<?php
	$this->load->helper("form");

	echo "<div class='container'>
	<section id='content'>";

	// Inicia el formulario
	echo form_open("login/comprobar_login");

	echo "<h1>Login Form</h1>";

	// Generamos el campo email del formulario
	echo "<input type='text' placeholder='Email' required='' id='username' name='email' size='50' />";
	echo form_error('email');
	echo "<br/>";

	// Generamos el campo password
	$PASS = array(
	   'name' => 'pass',
	   'id' => 'password',
	   'value' => '',
	   'size' => '50',
	   'placeholder' => 'Password',
	   'required' => ''
	);

	$PASS['value'] = set_value('id');
	echo form_password($PASS);
	echo form_error("pass");
	echo "<br/>";

	// Generamos el botón de submit
	echo form_submit("submit", "Entrar");

	// Termina el formulario
	echo form_close();

	echo "</section>
	</div>";
?>