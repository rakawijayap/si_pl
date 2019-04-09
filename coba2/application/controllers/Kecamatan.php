<?php

class kecamatan extends CI_Controller {

	function __construct(){
		parent::__construct();
	
		if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
	}
	public function index(){
			$this->load->model("model_awal");
			$data['list_kecamatan'] = $this->model_awal->load_kec();
			$data1['list_profile'] = $this->model_awal->load_profile();

			$this->load->view("sidebar",$data1);

			$this->load->view("nav");
			$this->load->view("kecamatan",$data,$data1);
			$this->load->view("foot");
		}

	public function edit(){
		$this->load->model("model_awal");
		if(isset($_POST['submit'])){
			$id = $_POST['id'];
			$userData = array(
				'nama' => $this->input->post('nama'),
				
			);
		}
		

		$editUserData = $this->model_awal->editk($userData,$id);

		if($userData){
			$this->session->set_flashdata('success_msg','Berhasil');
			redirect('kecamatan');
		}
		else{
			$this->session->set_flashdata('error_msg','gagal');
		}
	}

	public function tambah(){
		$this->load->model("model_awal");
		if(isset($_POST['submit'])){
			
			$userData = array(

			'nama' => $this->input->post('nama'),
			'add_by' => $this->input->post('user'),
		);}

			

		$insertUserData = $this->model_awal->insertk($userData);
		if($insertUserData){
			$query = $this->db->query("SELECT * from kecamatan order by id_kec desc limit 1");
    		$row = $query->row();

    		$isidata = array(
    		'id_kec' => $row->id_kec,
			'k' => $this->input->post('k'),
			'pl' => $this->input->post('pl'),
			'rbl' => $this->input->post('rbl'),
			'ch' => $this->input->post('ch'),
			'cat' => $this->input->post('cat'),
			'jt' => $this->input->post('jt'),
			'edit' => $this->input->post('user'),
		);
    	$insertIsiData = $this->model_awal->inserti($isidata);
		redirect('kecamatan');
		}
		else{
			$this->session->set_flashdata('error_msg','gagal');
		}
		
		
		
	}

	public function delete(){
		$id_kec = $this->input->post('id');

		$this->load->model("model_awal");
		$this->model_awal->deletek($id_kec);
		$this->model_awal->deletei($id_kec);	
		redirect("kecamatan");
	}
}
?>
