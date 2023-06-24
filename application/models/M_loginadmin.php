<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_loginadmin extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('bcrypt');
    }

    function login()
    {
        $email = $this->input->post('email', true);
        $password = $this->input->post('password', true);
        $result = $this->db->get_where('admin', array('email' => $email, 'status' => 1))->row();
        // var_dump($this->bcrypt->hash_password($password));
        // die;
        if ($result) {
            $paswd = $result->password;
            if ($this->bcrypt->check_password($password, $paswd)) {
                $data = array(
                    'login_admin' => true,
                    'email' => $result->email,
                    'nama' => $result->nama,
                    'gambar' => $result->gambar,
                    'uid' => $result->id,
                    'theme' => 'sb_admin',
                );
                $this->session->set_userdata($data);
                redirect('admin/dashboard', 'refresh');
            } else {
                $this->session->set_flashdata('error', 'User atau  Password salah, Silahkan coba lagi ');
                redirect('admin/login');
            }
        } else {
            $this->session->set_flashdata('error', 'User atau  Password salah, Silahkan coba lagi ');
            redirect('admin/login');
        }
    }
}
