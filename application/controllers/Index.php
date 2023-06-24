<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends CI_Controller {


	function __construct(){
		parent::__construct();
		// $this->load->library('fpdf');
	}

	public function index()
	{
		$nowDate = date('Y-m-d');

		$this->db->limit('1');
		$this->db->where('tgl_antrian',$nowDate);
		$this->db->order_by('no_antrian','DESC');
		$antrian = $this->db->get('antrian')->row();
		if($antrian){
			$data['no_antrian'] = $antrian->no_antrian;

		}else{
			$data['no_antrian'] = 0;
		}

		if(!empty($this->session->userdata('id_pasien'))){
			$this->db->limit(1);
			$this->db->order_by('id_antrian_poli','DESC');
			$this->db->where('id_pasien',$this->session->userdata('id_pasien'));
			$this->db->where('tgl_antrian_poli',$nowDate);
			$this->db->join('kategori_poli','kategori_poli.id_poli=antrian_poli.id_poli');
			$rowdata=$this->db->get('antrian_poli')->row();
			if ($rowdata){
				$data['antrian_pasien']=$rowdata->no_antrian_poli;
				$data['nama_poli']=$rowdata->nama_poli;
				$data['id_antrian_poli'] = $rowdata->id_antrian_poli;
			}else{
				$data['antrian_pasien']='-';
				// $data['antrian_pasien']='anda belum mengambil nomor antrian poli';
				$data['nama_poli']='-';
				$data['id_antrian_poli'] ="";
			}

			$rowPoli = $this->db->get('kategori_poli')->result();
			$data['getPoli'] = $rowPoli;

			$getPoli = $this->db->get('kategori_poli')->result();
			foreach ($getPoli as $key) {
				$this->db->limit('1');
				$this->db->where('id_poli',$key->id_poli);
				$this->db->where('tgl_antrian_poli',$nowDate);
				$this->db->order_by('no_antrian_poli','DESC');
				$antrianpoli = $this->db->get('antrian_poli')->row();

				if($key->id_poli == 1){
					if($antrianpoli){
						$data['poli_umum'] = $antrianpoli->no_antrian_poli;

					}else{
						$data['poli_umum'] = 0;
					}
				}elseif($key->id_poli == 2){
					if($antrianpoli){
						$data['poli_gigi'] = $antrianpoli->no_antrian_poli;

					}else{
						$data['poli_gigi'] = 0;
					}
				}elseif($key->id_poli == 3){
					if($antrianpoli){
						$data['poli_im'] = $antrianpoli->no_antrian_poli;

					}else{
						$data['poli_im'] = 0;
					}
				}elseif($key->id_poli == 4){
					if($antrianpoli){
						$data['poli_tb'] = $antrianpoli->no_antrian_poli;

					}else{
						$data['poli_tb'] = 0;
					}
				}
			}
		}
		// var_dump($data); die();
		$this->load->view ('user/home',$data);
	}

	public function regis()
	{
		
		$this->load->view ('user/registrasi');
	}

	public function registrasi()
	{
		$no_identitas = $this->input->post('no_identitas'); //langkah 2
		$nama = $this->input->post('nama');
		$jenis_kelamin = $this->input->post('jenis_kelamin');
		// $usia = $this->input->post('usia');
		$tgl_lahir = $this->input->post('tgl_lahir');
		$alamat = $this->input->post('alamat');
		$no_telp = $this->input->post('no_telp');
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));

		$this->db->set('no_identitas',$no_identitas);//langkah ke 3
		$this->db->set('nama',$nama);
		$this->db->set('jenis_kelamin',$jenis_kelamin);
		// $this->db->set('usia',$usia);
		$this->db->set('tgl_lahir',$tgl_lahir);
		$this->db->set('alamat',$alamat);
		$this->db->set('no_telp',$no_telp);
		$this->db->set('username',$username);
		$this->db->set('password',$password);


		$this->db->insert('pasien');

		$this->session->set_flashdata("notif",true);
		$this->session->set_flashdata("pesan",'Registrasi Berhasil');
		$this->session->set_flashdata("type",'success');

		redirect(base_url());

	}

	public function proses_login(){
		print_r($_POST);
		$username=$this->input->post('username');
		$password=md5($this->input->post('password'));

		$this->db->where('username',$username);
		$this->db->where('password',$password);
		$getpasien=$this->db->get('pasien')->row();

		if($getpasien){
			$this->session->set_userdata('id_pasien',$getpasien->id_pasien);
			$this->session->set_userdata('nama',$getpasien->nama);

			$this->session->set_flashdata("notif",true);
			$this->session->set_flashdata("pesan",'Login Berhasil');
			$this->session->set_flashdata("type",'success');
			redirect(base_url());
		}else{
			$this->session->set_flashdata("notif",true);
			$this->session->set_flashdata("pesan",'Username atau Password Salah');
			$this->session->set_flashdata("type",'warning');
			redirect(base_url());
		}

	}

	public function logout(){
		$this->session->sess_destroy();
		redirect(base_url());
	}

	public function getNoAntrian(){
		$id_poli = $this->input->post('id_poli');
		$tanggal = date("Y-m-d");

		$this->db->where('antrian_poli.id_poli',$id_poli);
		$this->db->where('antrian_poli.tgl_antrian_poli',$tanggal);
		$sql = $this->db->get('antrian_poli');
        $getPoli = $sql->num_rows();//cek jumlah row


        

        if($getPoli==0){//kondisi jika belum ada yg daftar perhari
        	$this->db->where('id_poli',$id_poli);
        	$sql2 = $this->db->get('kategori_poli');
        	$rowPoli = $sql2->row();
        	$no = 1;
        	$kode=$rowPoli->kode_poli;
        	$noAntrian = $kode.$no;
        	$maks = $rowPoli->jumlah_maksimal;

        }else{
            //kondisi jika sudah ada data per hari
        	$this->db->limit(1);
        	$this->db->order_by('no_antrian_poli',"DESC");
        	$this->db->where('antrian_poli.id_poli',$id_poli);
        	$this->db->where('antrian_poli.tgl_antrian_poli',$tanggal);
        	$sql = $this->db->get('antrian_poli');
        	$rowNo = $sql->row();


        	$this->db->where('id_poli',$id_poli);
        	$sql2 = $this->db->get('kategori_poli');
        	$rowPoli = $sql2->row();
        	$kode = $rowPoli->kode_poli;
        	$no = $rowNo->no_antrian_poli + 1;
        	$maks = $rowPoli->jumlah_maksimal;

            // var_dump($rowNo); exit();
        	$noAntrian = $kode.$no;
        }

        $hasil = array("no_hasil"=>$noAntrian, "no"=>$no, "maks"=>$maks);
        echo json_encode($hasil);
    }

    public function saveAntrian(){
    	$id_poli = $this->input->post('id_poli');
    	$no_antrian_poli = substr($this->input->post('no_antrian_poli'),4);
    	$id_pasien = $this->session->userdata('id_pasien');
    	$tanggal = date("Y-m-d");

        // echo $tanggal; exit();

    	$this->db->set('id_poli',$id_poli);
    	$this->db->set('no_antrian_poli',$no_antrian_poli);
    	$this->db->set('id_pasien',$id_pasien);
    	$this->db->set('tgl_antrian_poli',$tanggal);
    	$this->db->insert('antrian_poli');

    	$no_antrian = $this->input->post('no_antrian');
    	$this->db->set('no_antrian',$no_antrian+1);
    	$this->db->set('tgl_antrian',$tanggal);
    	$this->db->insert('antrian');

    	redirect(base_url());

    }

    public function cetak($id_antrian_poli = NULL){
    	$this->db->limit(1);
		$this->db->order_by('id_antrian','DESC');
		$this->db->where('id_antrian_poli',$id_antrian_poli);
		$this->db->join('kategori_poli','kategori_poli.id_poli=antrian_poli.id_poli');
		$data['row']=$this->db->get('antrian_poli')->row();
    	$this->load->view('user/cetak',$data);
    }

    public function cetak2(){
    	require(APPPATH."/libraries/fpdf.php");
    	// print_r(dirname(__FILE__) . '/./tcpdf/tcpdf.php'); die();
    	try {
    		$pdf = new FPDF('l','mm','A5');
	// Menambah halaman baru
	    		$pdf->AddPage();
	// Setting jenis font
	    		$pdf->SetFont('Arial','B',16);
	// Membuat string
	    		$pdf->Cell(190,7,'Daftar Harga Motor Dealer Maju Motor',0,1,'C');
		// $pdf->SetFont('Arial','B',9);
	    		$pdf->Cell(190,7,'Jl. Abece No. 80 Kodamar, jakarta Utara.',0,1,'C');

	// print_r($pdf); die();
	    		$path = './assets/pdf/'.date('YmdHis').".pdf";
	    		$pdf->Output('F',$path);
	    		http_response_code(200);
	    		header('Content-Length: '.filesize($path));
	    		header("Content-Type: application/pdf");
				header('Content-Disposition: attachment; filename="downloaded.pdf"'); // feel free to change the suggested filename
				readfile($path);

				exit; 
				    		// redirect(base_url($path));
				//     		$filename = 'pdf.pdf';
				//     		header('Content-type:application/pdf');
				// header('Content-disposition: inline; filename="'.$filename.'"');
				// header('content-Transfer-Encoding:binary');
				// header('Accept-Ranges:bytes');
							// $pdf->Output('I',$filename);
				} catch(Exception $e){
					print_r($e->getMessage());
				}

	}


}