<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pasien extends CI_Controller
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
        $user = $this->user_model->getuser();
        $id_user = $user['id_user'];
        $data = [
            'title'  => "Identitas",
            'user'   => $user,
            'identitas' => $this->db->get_where('identitas', ['id_user' => $id_user])->row()
        ];

        $identitas = $this->db->get_where('identitas', ['id_user' => $id_user])->row();

        if (!$identitas) {
            $this->db->insert('identitas', ['id_user' => $id_user]);
        }

        $this->load->view('pages/head', $data);
        $this->load->view('pages/nav');
        $this->load->view('pasien/profile', $data);
        $this->load->view('pages/footer');
    }

    public function update()
    {
        $id = $this->input->post('id_user');
        $data = [
            'nama' => $this->input->post('nama'),
            'nik' => $this->input->post('nik'),
            'tempat_lahir' => $this->input->post('tempat_lahir'),
            'tanggal_lahir' => $this->input->post('tanggal_lahir'),
            'pendidikan' => $this->input->post('pendidikan'),
            'telepon' => $this->input->post('telepon'),
            'goldar' => $this->input->post('goldar'),
            'alamat_rumah' => $this->input->post('alamat_rumah'),
            'telepon' => $this->input->post('telepon'),
            'suami_keluarga' => $this->input->post('suami_keluarga'),
            'pembiayaan' => $this->input->post('pembiayaan'),
            'no_jkn' => $this->input->post('no_jkn'),
            'faskes_tingkat1' => $this->input->post('faskes_tingkat1'),
            'faskes_rujukan' => $this->input->post('faskes_rujukan'),
            'puskesmas_domisili' => $this->input->post('puskesmas_domisili'),
            'no_kohor' => $this->input->post('no_kohor'),

        ];
        $this->db->where('id_user', $id);
        $this->db->update('identitas', $data);
        $this->session->set_flashdata('success', 'Data berhasil Di Ubah.');
        redirect('pasien');
    }
}
