<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Super.php');

class Jadwaldokter extends Super
{
    
    function __construct()
    {
        parent::__construct();
        $this->language       = 'english'; /** Indonesian / english **/
        $this->tema           = "flexigrid"; /** datatables / flexigrid **/
        $this->tabel          = "jadwal_dokter";
        $this->active_id_menu = "Jadwal Dokter";
        $this->nama_view      = "Jadwal Dokter";
        $this->status         = true; 
        $this->field_tambah   = array(); 
        $this->field_edit     = array(); 
        $this->field_tampil   = array(); 
        // $this->folder_upload  = 'assets/uploads/files';
        $this->add            = true;
        $this->edit           = true;
        $this->delete         = true;
        $this->crud;
    }

    function index(){
            $data = [];           
            if($this->crud->getState()== "save"){
                redirect(base_url('admin/Dokter/save_data')); 
            }
               
            $data = array_merge($data,$this->generateBreadcumbs());
            $data = array_merge($data,$this->generateData());   
            $this->generate();
            // $this->crud->set_table('dokter');
             $this->crud->set_relation('hari','hari','nama_hari');
            $this->crud->set_relation('kode_poli','kategori_poli','nama_poli');
            $this->crud->set_relation('kode_dokter','dokter','nama');
            $this->crud->display_as('kode_dokter','Nama Dokter'); 
            $this->crud->display_as('kode_poli','Nama Poli');            
            $data['output'] = $this->crud->render();
            // var_dump($output);die;
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
}