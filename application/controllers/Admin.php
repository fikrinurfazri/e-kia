<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
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
        $data = [
            'title'  => "Home/Dashboard",
            'user'   => $this->user_model->getuser(),
            'pegawai' => $this->db->count_all_results('user'),
        ];
        $this->load->view('pages/head', $data);
        $this->load->view('pages/nav');
        $this->load->view('admin/index', $data);
        $this->load->view('pages/footer');
    }

    public function delete($id)
    {
        $this->db->where('id_suratmasuk', $id);
        $this->db->delete('suratmasuk');
        $this->session->set_flashdata('success', 'Data berhasil dihapus.');
        redirect('surat-masuk');
    }
}
