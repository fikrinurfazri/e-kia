<?php

class User_model extends CI_Model
{
    public function getuser()
    {
        return $this->db->get_where('user', ['id_user' => $this->session->userdata('id_user')])->row_array();
    }
    public function getalluser()
    {
        return $this->db->get('user')->result_array();
    }
}
