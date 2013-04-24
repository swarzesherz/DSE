<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct(){

		parent::__construct();

		$this->load->library('carabiner');
		$this->load->library('cssmin');
		$this->load->library('jsmin');

	}

	/* Visualiza la pantalla principal */

	public function index(){

		$data["pagina"] = "view_principal";

		$this->load->view("main_template", $data);
	 
	}

	public function registro(){

		$data["pagina"] = "view_pre_registro";

		$this->load->view("main_template", $data);
	 
	}

	public function login(){

		$data["pagina"] = "view_login";

		$this->load->view("main_template", $data);
	 
	}

	public function comprobar_login(){

		$this->load->library("form_validation");
		$this->form_validation->set_rules("email","Email", "required");
		$this->form_validation->set_rules("pass","Password", "required|min_length[5]");
		$this->form_validation->set_message("required", "El campo %s es obligatorio");

		if ($this->form_validation->run() == FALSE){

			$this->index();

		} else {

			$this->load->model("login_model");

			if ($this->login_model->comprobar_usuario($_REQUEST['email'], $_REQUEST['pass'])){

			    //$data["pagina"] = "main_app";
			    //$this->load->view("main_template", $data);
			    header('Location: http://localhost/CodeIgniter/index.php/principal');

			    //////////////////

			} else {

			    $this->index();
			    
			}

		}
	}



}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */