<?php

class user extends CI_Controller {

function __construct(){
		parent::__construct();
	
		if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
	}
	
	public function index(){
			$this->load->model("model_awal");
			$data['list_user'] = $this->model_awal->load_user();
			$data1['list_profile'] = $this->model_awal->load_profile();

			$this->load->view("sidebar", $data1);

			$this->load->view("nav", $data1);
			$this->load->view("user",$data, $data1);
			$this->load->view("foot");
		}

	public function tambah(){
		$this->load->model("model_awal");
		if(isset($_POST['submit'])){
			if($_POST['pass']==$_POST['cpass']){
			$hash = password_hash($_POST['pass'] , PASSWORD_BCRYPT);
			$userData = array(
			'username' => $this->input->post('username'),
			'nama' => $this->input->post('nama'),
			'sebagai' => $this->input->post('sebagai'),
			'pass' => $hash
		);

		$insertUserData = $this->model_awal->insert($userData);

				if($userData){
				$this->session->set_flashdata('success_msg','Berhasil');
				redirect('user');
				}
				else{$this->session->set_flashdata('error_msg','gagal');}
			}
		else {echo "password salah !";}
		
		}	
	}

	public function edit(){
		$this->load->model("model_awal");
		if(isset($_POST['submit'])){
			$username = $_POST['username'];
			$userData = array(
				'nama' => $this->input->post('nama'),
				
			);
		}
		

		$editUserData = $this->model_awal->editu($userData,$username);

		if($userData){
			$this->session->set_flashdata('success_msg','Berhasil');
			redirect('user');
		}
		else{
			$this->session->set_flashdata('error_msg','gagal');
		}
	}

	public function delete(){
		$username = $this->input->post('username');

		$this->load->model("model_awal");
		$this->model_awal->deleteu($username);
		redirect("user");
	}

	function ganti_pass(){
		$this->load->model("model_awal");
		$username = $this->input->post('username');
		$pl = $this->input->post('pl');
		$pb = $this->input->post('pb');
		$kpb = $this->input->post('kpb');
		$hash = password_hash($_POST['pb'] , PASSWORD_BCRYPT);
		$query = $this->db->query("SELECT * from user where username = '$username'");
    		$row = $query->row();
		if($pb==$kpb){
			if(password_verify($pl,$row->pass)){
				$userData = array(
				'pass' => $hash
				);
				$editUserData = $this->model_awal->editp($userData,$username);
				echo '<script language="javascript">
                    window.alert("Ganti Password Berhasil");
                    window.history.back();
                  </script>';
				}
				
		else{
			echo '<script language="javascript">
                    window.alert("Password Lama");
                    window.history.back();
                  </script>';
		}
			
		}
		else{
			echo '<script language="javascript">
                    window.alert("Konfirmasi Password salah");
                    window.history.back();
                  </script>';
		}
		}
}
?>
