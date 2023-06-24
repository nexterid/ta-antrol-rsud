<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Antrian extends CI_Controller {


	function __construct(){
		parent::__construct();
		// $this->load->library('fpdf');
	}

	public function index()
	{
		$nowDate = date('Y-m-d');

		$this->db->limit('1');
		$this->db->where('tgl_antrian',$nowDate);
		$this->db->order_by('no_antrian','DESC');
		$antrian = $this->db->get('antrian')->row();
		if($antrian){
			$data['no_antrian'] = $antrian->no_antrian;

		}else{
			$data['no_antrian'] = 0;
		}
		$this->load->view ('user/antrian',$data);
	}

	public function getNoAntrian(){
		$noAntrian=1;
		$nowDate = date('Y-m-d');

		$this->db->limit('1');
		$this->db->where('tgl_antrian',$nowDate);
		$this->db->order_by('no_antrian','DESC');
		$antrian = $this->db->get('antrian')->row();

		if($antrian){
			$no= $antrian->no_antrian;

		}else{
			$no = 0;
		}

		$no = $no + 1;
		$this->db->set('no_antrian',$no);
		$this->db->set('tgl_antrian', $nowDate);
		$getRow = $this->db->insert('antrian');

		$hasil = array("no"=> $no);
        echo json_encode($hasil);
	}

	public function cetak($no){
    	$data['row'] =   array('no'=>$no, 'tgl'=>date('Y-m-d'));
    	$this->load->view('user/cetak_antrian_1',$data);

	}
}