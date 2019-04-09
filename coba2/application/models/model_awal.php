<?php  
	//Model_data.php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Model_awal extends CI_Model{

	public function load_kec(){
		$sql = $this->db->query("SELECT * FROM isi join kecamatan where isi.id_kec=kecamatan.id_kec");
		return $sql->result_array();
	}
	
	public function load_normsk(){
		$sql = $this->db->query("SELECT * FROM normsk");
		return $sql->result_array();
	}
	public function load_nor(){
		$sql = $this->db->query("SELECT * FROM nor");
		return $sql->result_array();
	}
	public function load_jumlk(){
		$sql = $this->db->query("SELECT * FROM jumlk");
		return $sql->result_array();
	}
public function load_tpv(){
		$sql = $this->db->query("SELECT * FROM bobot where nama='tpv'");
		return $sql->result_array();
	}
	

public function load_norm(){
		$sql = $this->db->query("SELECT * FROM normalisasi");
		return $sql->result_array();
	}
public function load_normw(){
		$sql = $this->db->query("SELECT * FROM nw");
		return $sql->result_array();
	}
public function load_ap(){
		$sql = $this->db->query("SELECT * FROM ap");
		return $sql->result_array();
	}
public function load_am(){
		$sql = $this->db->query("SELECT * FROM am");
		return $sql->result_array();
	}

	public function load_d(){
		$sql = $this->db->query("SELECT * FROM d");
		return $sql->result_array();
	}
	public function load_h($limit){
		$sql = $this->db->query("SELECT * FROM hasil order by hasil desc limit $limit");
		return $sql->result_array();
	}

	public function load_user(){
		$sql = $this->db->query("SELECT * FROM user");
		return $sql->result_array();
	}

	public function load_profile(){
		$username= $this->session->userdata("nama");
		$sql = $this->db->query("SELECT * FROM user where username='$username'");
		return $sql->result_array();
	}
	
	

	public function insert($data){
		$insert = $this->db->insert('user',$data);
		if($insert){
			return $this->db->insert_id();
		}
		else{
			return false;
		}
	}

	public function inserti($data){
		$insert = $this->db->insert('isi',$data);
		if($insert){
			return $this->db->insert_id();
		}
		else{
			return false;
		}
	}

	public function insertk($data){
		$insert = $this->db->insert('kecamatan',$data);
		if($insert){
			return $this->db->insert_id();
		}
		else{
			return false;
		}
	}

	public function editu($data,$id){
		$this->db->where('username',$id);
        $this->db->update('user', $data);
        return TRUE;
	}

	public function deleteu($username){
		$sql = $this->db->query("DELETE FROM user WHERE username = '$username' ");
		return $sql;
	}

	public function deletek($id){
		$sql = $this->db->query("DELETE FROM kecamatan WHERE id_kec = '$id' ");
		return $sql;
	}
	public function deletei($id){
		$sql = $this->db->query("DELETE FROM isi WHERE id_kec = '$id' ");
		return $sql;
	}

	public function edit($data,$id){
		$this->db->where('id',$id);
        $this->db->update('isi', $data);
        return TRUE;
	}

	public function editk($data,$id){
		$this->db->where('id_kec',$id);
        $this->db->update('kecamatan', $data);
        return TRUE;
	}

	public function editp($data,$id){
		$this->db->where('username',$id);
        $this->db->update('user', $data);
        return TRUE;
	}

}	
?>