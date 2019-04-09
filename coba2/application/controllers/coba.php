<?php

class coba extends CI_Controller {

	

	public function index(){
			$this->load->model("model_awal");
			$data['list_nor'] = $this->model_awal->load_nor();
			$this->load->view("cob",$data);
			$this->load->view("foot");
		}

}