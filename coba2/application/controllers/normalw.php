<?php

class normalw extends CI_Controller {

	
	public function index(){
			$this->load->model("model_awal");
			$data['list_normw'] = $this->model_awal->load_normw();
			$data1['list_profile'] = $this->model_awal->load_profile();

			$this->load->view("sidebar", $data1);

			$this->load->view("nav");
			$this->load->view("normw",$data);
			$this->load->view("foot");
		}
}
?>
