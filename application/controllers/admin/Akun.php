<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Akun extends CI_Controller {

    function __construct()
    {
        parent::__construct();
    }

    function index(){
        $data['active']     = 'dash';
        $data['judul_1']    = 'Dashboard';
        $data['judul_2']    = 'Selamat Datang';
        // $data['page']       = 'v_profile';
        $data['menu'] = $this->Menus->generateMenu();
        $data['breadcumbs'] = array(
            array(
                'nama'=>'Dashboard',
                'icon'=>'fa fa-dashboard',
                'url'=>'admin/dashboard'
            ),
        );

        $this->load->view('admin/'.$this->session->userdata('theme').'/v_index',$data);
    }

    function setting(){
        
    }

    public function reset_password()
    {
    	if($_POST){

    	} else {
    		$data['active']     = 'dash';
	        $data['judul_1']    = 'Dashboard';
	        $data['judul_2']    = 'Selamat Datang';
	        $data['page']       = 'v_setting';
	        $data['menu'] = $this->Menus->generateMenu();
	        $data['breadcumbs'] = array(
	            array(
	                'nama'=>'Dashboard',
	                'icon'=>'fa fa-dashboard',
	                'url'=>'admin/dashboard'
	            ),
	        );

	        $this->load->view('admin/'.$this->session->userdata('theme').'/v_index',$data);	
    	}
    }
}