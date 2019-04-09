<?php

class kriteria extends CI_Controller {

	
	public function index(){
			$this->load->model("model_awal");
			$data['list_profile'] = $this->model_awal->load_profile();
			
			$data1['list_n'] = $this->model_awal->load_normsk();
			$data2['list_j'] = $this->model_awal->load_jumlk();
			$data3['list_nor'] = $this->model_awal->load_nor();
			$data4['list_tpv'] = $this->model_awal->load_tpv();
			$this->load->view("sidebar",$data);
			$this->load->view("nav");
			$this->load->view("kri",$data1);
			$this->load->view("kri+",$data2);
			$this->load->view("nor",$data3);
			$this->load->view("tpv",$data4);
			$this->load->view("foot");
		}
}
?>
