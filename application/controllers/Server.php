<?php

class Server extends CI_Controller
{
    function __construct(){
        parent::__construct();
        $this->db = $this->load->database('bedahrumah',true);
        $this->load->library('session');
        // $this->load->library('form_validation');
    }

    function login(){
        redirect('server/index');
    }

    function index(){
        if($this->session->username){
            redirect('server/dashboard');
        }else{
            $data['title'] = "User Login";
            $this->load->view('myview/templates/header', $data);
            $this->load->view('myview/login');
            $this->load->view('myview/templates/footer');
        }   
    }

    function login_engine(){
        $email = $this->input->post('email');
        $password = hash("sha512",$this->input->post('password'));

        $result = $this->db->get_where('user',['email' => $email, 'password' => $password]);
        $checkrow = $result->num_rows();

        if ($checkrow){
            $userdata = $result->result_array();
            foreach ($userdata as $key => $val) {
                $this->session->user_id = $val['id'];
                $this->session->username = $val['name'];
                $this->session->email = $val['email'];
                $this->session->image = $val['image'];
                $this->session->role_id = (int)$val['role_id'];
            }
            redirect('server/dashboard');
        }else{
            redirect('server/login');
        }
    }

    function dashboard(){
        if($this->session->username){
            $userdata = $this->db->query("SELECT a.id, a.name, a.email, b.role FROM `user` as a join `user_role` as b on a.role_id = b.id")->result_array();
            $metadata = ['userdata'=> $userdata];

            $data['title'] = "Dashboard";
            $this->load->view('myview/templates_dashboard/header',$data);
            $this->load->view('myview/templates_dashboard/sidebar');
            $this->load->view('myview/dashboard', $metadata);
        }else{
            redirect('server/login');
        }
    }

    function register(){
        if($this->session->username){
            redirect('server/dashboard');
        }else{
            $data['title'] = "User Registration";
        
            // $this->form_validation->set_rules('name', 'Name', 'required|trim');
            // $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]',
            //     [
            //         'is_unique'     => 'This email has already registered!'
            //     ]
            // );
            // $this->form_validation->set_rules('password1','Password','required|trim|min_length[3]|matches[password2]',
            //     [
            //         'matches'       => 'Password doesn\'t match!',
            //         'min_length'    => 'Password too short!'
            //     ]
            // );
            // $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');
            $this->load->view('myview/templates/header', $data);
            $this->load->view('myview/register');
            $this->load->view('myview/templates/footer');
        }

    }
    function register_engine(){
        $name           = htmlspecialchars($this->input->post('name'));
        $email          = htmlspecialchars($this->input->post('email'));
        $image          = 'default-profile.png';
        $password       = hash("sha512",$this->input->post('password1'));
        $role_id        = 1;
        $is_active      = 1;

        if($name != "" || $email != ""){
            $result = $this->db->query('INSERT INTO user (name,email,image,password,role_id,is_active) VALUES (?,?,?,?,?,?)',[$name,$email,$image,$password,$role_id,$is_active]);
        
            if($result){
                $this->session->message = '<div class="alert alert-success" role="alert"> Congratulation! your account has been created. Please login</div>';
                redirect('server/login');
            }else{
                redirect('server/register');
            }
        }else{
            redirect('server/register');
        }
        
    }

    function show404(){
        $this->load->view('myview/404');
    }

    function logout(){
        $this->session->sess_destroy();
        redirect('server/index');
    }

    function formUser(){
        $data['title'] = "Input Data User";
        $this->load->view('myview/templates_dashboard/header',$data);
        $this->load->view('myview/templates_dashboard/sidebar');
        $this->load->view('myview/formUser');
	}

    function fileupload(){
		$config['upload_path']          = './uploads/';
		$config['allowed_types']        = 'gif|jpg|png';
		// $config['max_size']             = 100;
		// $config['max_width']            = 1024;
		// $config['max_height']           = 768;
		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload('userfile')){
			$error = array('error' => $this->upload->display_errors());
			print_r($error);
		}
		else{
            // Upload File
			$data = array('upload_data' => $this->upload->data());
            $filename = $data['upload_data']['file_name'];
            $penghasilan = $this->input->post('penghasilan');
            $jml_anak = $this->input->post('anak');

            $result = $this->db->query("INSERT INTO data_pemohon (penghasilan, jml_anak, dokumen) values (?,?,?)",[ $penghasilan,$jml_anak,$filename ]);  
            
            redirect('Server/dashboard');
		}
    }

    function formRT(){
        if ($this->session->role_id >= 2) {
            $data['title'] = "Form Data RT";
            $this->load->view('myview/templates_dashboard/header',$data);
            $this->load->view('myview/templates_dashboard/sidebar');
            $this->load->view('myview/formRT');
            
        }else{
            redirect('server/dashboard');
        }
    }

    function tabel_RT(){
        if($this->session->role_id >= 2){
            $data_pemohon = $this->db->get('data_pemohon')->result_array();
            $metadata = ['data_pemohon'=> $data_pemohon];

            $data['title'] = "Tabel Data RT";
            $this->load->view('myview/templates_dashboard/header',$data);
            $this->load->view('myview/templates_dashboard/sidebar');
            $this->load->view('myview/tabeldata_RT',$metadata);
        }else{
            redirect('server/dashboard');
        } 
    }

    function spkRT(){
        if ($this->session->role_id >= 2) {
               
            $qry = <<<EOD
select *,round((usia + penghasilan + luas_tanah + hak_tanah + bayar_pbb + id_digital + lokal + kondisi_rumah),2) as 'total' from 
(select id,nama,berkas,
round(((usia / maxusia) * 3),2) 	as 'usia',
round(((penghasilan / maxpenghasilan) * 5),2) 	as 'penghasilan',
round(((luas_tanah / maxluas_tanah) * 4),2) 	as 'luas_tanah',
round(((hak_tanah / maxhak_tanah) * 7),2) 	as 'hak_tanah',
round(((bayar_pbb / maxbayar_pbb) * 6),2) 	as 'bayar_pbb',
round(((id_digital / maxid_digital) * 5),2) 	as 'id_digital',
round(((lokal / maxlokal) * 4),2) 	as 'lokal',
round(((kondisi_rumah / maxkondisi_rumah) * 4),2) 	as 'kondisi_rumah' from data_pemohon,
(SELECT usia as 'Maxusia' FROM data_pemohon order by usia desc limit 1) as SubMaxusia,
(SELECT penghasilan as 'Maxpenghasilan' FROM data_pemohon order by penghasilan desc limit 1) as SubMaxpenghasilan,
(SELECT luas_tanah as 'Maxluas_tanah' FROM data_pemohon order by luas_tanah desc limit 1) as SubMaxluas_tanah,
(SELECT hak_tanah as 'Maxhak_tanah' FROM data_pemohon order by hak_tanah desc limit 1) as SubMaxhak_tanah,
(SELECT bayar_pbb as 'Maxbayar_pbb' FROM data_pemohon order by bayar_pbb desc limit 1) as SubMaxbayar_pbb,
(SELECT id_digital as 'Maxid_digital' FROM data_pemohon order by id_digital desc limit 1) as SubMaxid_digital,
(SELECT lokal as 'Maxlokal' FROM data_pemohon order by lokal desc limit 1) as SubMaxlokal,
(SELECT kondisi_rumah as 'Maxkondisi_rumah' FROM data_pemohon order by kondisi_rumah desc limit 1) as SubMaxkondisi_rumah) as subsubq
EOD;

            $hasil = $this->db->query($qry)->result_array();
            $metadata = ['spk' => $hasil];
            $data['title'] = "SPK Data RT";
            $this->load->view('myview/templates_dashboard/header',$data);
            $this->load->view('myview/templates_dashboard/sidebar');    
            $this->load->view('myview/spkRT',$metadata);
            
        }else{
            redirect('server/dashboard');
        }
    }

    function kelurahan(){
        if($this->session->role_id >= 3){
            $data_pemohon = $this->db->get('data_pemohon')->result_array();
            $metadata = ['data_pemohon'=> $data_pemohon];

            $data['title'] = "Tabel Data Kelurahan";
            $this->load->view('myview/templates_dashboard/header',$data);
            $this->load->view('myview/templates_dashboard/sidebar');
            $this->load->view('myview/kelurahan',$metadata);
        }else{
            redirect('server/dashboard');
        }
    }

    function kecamatan(){
        if($this->session->role_id >= 4){
            $data_pemohon = $this->db->get('data_pemohon')->result_array();
            $metadata = ['data_pemohon'=> $data_pemohon];
    
            $data['title'] = "Tabel Data Kecamatan";
            $this->load->view('myview/templates_dashboard/header',$data);
            $this->load->view('myview/templates_dashboard/sidebar');
            $this->load->view('myview/kecamatan',$metadata);
        }else{
            redirect('server/dashboard');
        }
    }

    function kota(){
        if($this->session->role_id >= 5){
            $data_pemohon = $this->db->get('data_pemohon')->result_array();
            $metadata = ['data_pemohon'=> $data_pemohon];

            $data['title'] = "Tabel Data Kota";
            $this->load->view('myview/templates_dashboard/header',$data);
            $this->load->view('myview/templates_dashboard/sidebar');
            $this->load->view('myview/kota',$metadata);
        }else{
            redirect('server/dashboard');
        }
    }

    function escalate(){
        $userid = $this->input->get('userid');
        $roleBefore = $this->db->query("select role_id from user where id = ?",[$userid])->result_array();
        
        if($roleBefore[0]['role_id'] < 5){
            $roleAfter = $roleBefore[0]['role_id'] + 1;
            $this->db->query("update user set role_id=? where id=?",[$roleAfter, $userid]);
        }

        $this->refreshSession();
        redirect('server/dashboard');
    }

    function descalate(){
        $userid = $this->input->get('userid');
        $roleBefore = $this->db->query("select role_id from user where id = ?",[$userid])->result_array();
        
        if($roleBefore[0]['role_id'] > 1){
            $roleAfter = $roleBefore[0]['role_id'] - 1;
            $this->db->query("update user set role_id=? where id=?",[$roleAfter, $userid]);
        }
        $this->refreshSession();
        redirect('server/dashboard');
    }

    function delete(){
        $userid = $this->input->get('userid');

        $result = $this->db->query("delete from user where id = ?",[$userid]);
        if ($result){
            redirect('server/dashboard');
        }else{
            echo "<script>alert('Hapus member gagal')</script>";
        }
    }

    function update(){
        $userid = $this->input->get('userid');
        $result = $this->db->query('SELECT * FROM user WHERE id = ?',[$userid])->result_array();
        $metadata = ['result' => $result];

        $this->load->view('myview/update', $metadata);
    }

    function update_engine(){
        $userid     = $this->input->get('userid');
        $name       = $this->input->post('name');
        $email      = $this->input->post('email');
        $result     = $this->db->query('UPDATE user SET name=?, email=? WHERE id = ?',[$name, $email, $userid]);
        if ($result){
            redirect('server/dashboard');
        }else{
            echo "<script>alert('Update member gagal')</script>";
        }
    }

    function refreshSession(){
        $userdata = $this->db->query('select * from user where id = ?',[$this->session->user_id])->result_array();
        foreach ($userdata as $key => $val) {
            $this->session->username = $val['name'];
            $this->session->email = $val['email'];
            $this->session->image = $val['image'];
            $this->session->role_id = (int)$val['role_id'];
        }
    }
}