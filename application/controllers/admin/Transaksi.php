<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Super.php');

class Transaksi extends Super
{
    
    function __construct()
    {
        parent::__construct();
        $this->language       = 'english'; /** Indonesian / english **/
        $this->tema           = "flexigrid"; /** datatables / flexigrid **/
        $this->tabel          = "transaksi";
        $this->active_id_menu = "transaksi";
        $this->nama_view      = "Transaksi";
        $this->status         = true; 
        $this->field_tambah   = array(); 
        $this->field_edit     = array(); 
        $this->field_tampil   = array(); 
        $this->folder_upload  = 'assets/uploads/files';
        $this->add            = true;
        $this->edit           = true;
        $this->delete         = true;
        $this->crud;
    }

    function index(){
		if($this->crud->getState() == "read")
			redirect (base_url('admin/transaksi/detail/'.$this->uri->segment(5)));
            $data = [];
            /** Bagian GROCERY CRUD USER**/


            /** Relasi Antar Tabel 
            * @parameter (nama_field_ditabel_ini, tabel_relasi, field_dari_tabel_relasinya)
            **/
            $this->crud->set_relation('id_pembeli','pembeli','nama');
            $this->crud->set_relation('id_kota','kota','kota');

            /** Upload **/
            // $this->crud->set_field_upload('nama_field_upload',$this->folder_upload);  
            
            /** Ubah Nama yang akan ditampilkan**/
            // $this->crud->display_as('nama','Nama Setelah di Edit')
            //     ->display_as('email','Email Setelah di Edit'); 
            
            /** Akhir Bagian GROCERY CRUD Edit Oleh User**/
            $data = array_merge($data,$this->generateBreadcumbs());
            $data = array_merge($data,$this->generateData());
            $this->generate();
            $data['output'] = $this->crud->render();
            $this->load->view('admin/'.$this->session->userdata('theme').'/v_index',$data);
    }

    private function generateBreadcumbs(){
        $data['breadcumbs'] = array(
                array(
                    'nama'=>'Dashboard',
                    'icon'=>'fa fa-dashboard',
                    'url'=>'admin/dashboard'
                ),
                array(
                    'nama'=>'Admin',
                    'icon'=>'fa fa-users',
                    'url'=>'admin/useradmin'
                ),
            );
        return $data;
    }
	function detail ($id){
		 $data = [];
		 $data = array_merge($data,$this->generateBreadcumbs());
         $data = array_merge($data,$this->generateData());
         $this->generate();
		 $data['page']='detailtransaksi';
		 
		 $this->db->join('pembeli','transaksi.id_pembeli=pembeli.id_pembeli');
		 $data['pembeli']=$this->db->get_where('transaksi',array('id_transaksi'=>$id))->row();
		 $this->db->join('transaksi_detail','transaksi_detail.id_produk=produk.id_produk');
		 $data['produk']=$this->db->get_where('produk',array('transaksi_detail.id_transaksi'=>$id));
		 $this->db->join('transaksi','transaksi.id_kota=kota.id_kota');
		 $data['kota']=$this->db->get_where('kota',array('transaksi.id_transaksi'=>$id))->row();
		 $this->load->view("admin/".$this->session->userdata('theme').'/v_index',$data);
	}
}