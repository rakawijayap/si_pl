<?php

class tanah extends CI_Controller {

	
	public function index(){
			$this->load->model("model_awal");
			$data['list_kec'] = $this->model_awal->load_kec();
			$data1['list_profile'] = $this->model_awal->load_profile();

			$this->load->view("sidebar", $data1);

			$this->load->view("nav");
			$this->load->view("jt",$data, $data1);
			$this->load->view("foot");
		}

	public function edit(){
		$this->load->model("model_awal");
		if(isset($_POST['submit'])){
			$id = $_POST['id'];
			$userData = array(
				'jt' => $this->input->post('jt'),
				'edit' => $this->input->post('user'),
			);
		}
		

		$editUserData = $this->model_awal->edit($userData,$id);

		if($userData){
			$this->session->set_flashdata('success_msg','Berhasil');
			redirect('tanah');
		}
		else{
			$this->session->set_flashdata('error_msg','gagal');
		}
	}
}
?>
