<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customers extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('customers_model','customers');
	}

	public function index()
	{
		$this->load->helper('url');
		$this->load->view('customers_view');
	}

	public function ajax_list()
	{
		$list = $this->customers->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $customers) {
			$no++;
			$row = array();
			$row[] = '<td><input type="checkbox" class="checks" name="check[]" value='."$customers->id".'></td>';
			$row[] = $no;
			$row[] = $customers->name;
			$row[] = $customers->email;
			if(!empty($customers->profile_pic))
			{
				$row[] = "<img src='$customers->profile_pic' width=70 height=70>";
			}else
			{
				$row[] = "No image found";
			}
			
			$row[] = $customers->father_name;
			$row[] = $customers->mother_name;
			$row[] = $customers->dob;
			$row[] = $customers->created_at;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->customers->count_all(),
			"recordsFiltered" => $this->customers->count_filtered(),
			"data" => $data,
		);
		//output to json format
		echo json_encode($output);
	}

	public function delete_selected_item()
	{
		$id = $this->input->post('id');
		$implode = explode(" ",$id);
		foreach ($implode as $value) {
			$this->db->where('id',$value);
			$query = $this->db->update('admin',['status'=>5]);
		}

		if($query)
		{
			echo json_encode(['msg'=>'Data deleted successfully of '.count($implode).' Candidates']);
		}else{
			echo json_encode(['msg'=>'Some thing is wrong!']);
		}
		
	}

}
