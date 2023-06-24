<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* 
*/
class Menus extends CI_Model
{

	public function generateMenu($type='Admin')
	{
		$data = [];
		$this->db->order_by('urutan','asc');
		$query = $this->db->get_where("tjm_menu",array('status'=>1,'parent_menu'=>1,'type'=>$type));
		foreach ($query->result() as $key) {
			//find anak
			$anak1 = $this->db->get_where("tjm_menu",array('status'=>1,'parent_menu'=>$key->id));
			$tmp = [];
			if($anak1->num_rows()){	
				foreach ($anak1->result() as $keyanak1) {
					$tmp[$keyanak1->id] = array(
						'nama'=>$keyanak1->nama_menu,
						'url'=>$keyanak1->url_menu,
						'parent'=>$keyanak1->parent_menu,
						'icon'=>$keyanak1->icon,
						'child'=>''
					);
				}
			}

			$data[$key->id] = array(
				'nama'=>$key->nama_menu,
				'url'=>$key->url_menu,
				'parent'=>$key->parent_menu,
				'icon'=>$key->icon,
				'child'=>$tmp
			);
		}
		return $data;
	}

}