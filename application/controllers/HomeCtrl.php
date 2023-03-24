<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class HomeCtrl extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('HomeMod');
	}

	public function index()
	{
		$data['featurd_products'] = $this->HomeMod->getFetaturproducts(); 
		$data['top_products'] = $this->HomeMod->getTopproducts(); 
		$data['offer_products'] = $this->HomeMod->getOfferproducts(); 
		$data['best_products'] = $this->HomeMod->getBestproducts(); 
		//echo "<pre>";print_r($data);exit;	
		$this->load->view('home',$data);
	}
}
