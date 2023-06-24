<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_loginadmin');
    }

    public function index(){
        // halaman login, kalau sudah login, maka pindah ke halaman dashboard admin
        if($this->session->userdata('login_admin'))
            redirect('admin/dashboard');

        if(isset($_POST['login'])){
            $data['result'] = $this->M_loginadmin->login();
            $this->load->view('admin/v_login',$data);
        } else {
            $this->load->view('admin/v_login');
        }

    }

    public function logout(){
        $this->session->sess_destroy();
        redirect('admin/login');
    }
}