<?php

class hasil extends CI_Controller {

	
	public function index(){
			$this->load->model("model_awal");
			$limit=5;
			$data['list_kec'] = $this->model_awal->load_h($limit);
			$data1['list_profile'] = $this->model_awal->load_profile();

			$this->load->view("sidebar", $data1);

			$this->load->view("nav");
			$this->load->view("hasil",$data);
			$this->load->view("foot");
		}
}
?>
