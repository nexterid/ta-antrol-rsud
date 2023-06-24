<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_loginadmin extends CI_Model {

    function login(){

        try {
            $email = $this->input->post('email', true);
            $password = $this->input->post('password', true);
            $result = $this->db->get_where('admin',array(
                                'email' => $email,
                                'password' => $password,
                                'status' => 1))->row();

            if($result){
                $this->session->set_userdata('login_admin',true);
                $this->session->set_userdata('email',$result->email);
                $this->session->set_userdata('nama',$result->nama);
                $this->session->set_userdata('gambar',$result->gambar);
                $this->session->set_userdata('theme','sb_admin');


                redirect('admin/dashboard');
            } else {
                return "Maaf, Email atau Password Anda Salah !";
            }

        } catch(Exception $e){
            return $e->getMessage();
        }
    }
}