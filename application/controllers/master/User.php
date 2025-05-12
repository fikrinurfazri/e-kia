<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->load->model('auth_model');
        if (!$this->auth_model->current_user()) {
            redirect('auth');
        }
    }

    public function index()
    {
        $us = $this->user_model->getuser();
        $data = [
            'title'  => "Master User",
            'user'   => $this->user_model->getuser(),
            'alluser'   => $this->user_model->getalluser(),
        ];
        $this->load->view('pages/head', $data);
        $this->load->view('pages/nav');
        $this->load->view('master/user/index', $data);
        $this->load->view('pages/footer');
    }

    public function store()
    {
        $data = [
            'username' => $this->input->post('username'),
            'level' => '2',
            'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT)
        ];
        $this->db->insert('user', $data);
        $this->session->set_flashdata('success', 'Data berhasil ditambah.');

        redirect('master/user');
    }
}
