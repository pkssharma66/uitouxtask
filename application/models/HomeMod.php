<?php

defined('BASEPATH') or exit('No direct script access allowed');

class HomeMod extends CI_Model{

	public function getFetaturproducts()
	{
		$featurd = $this->db->select('*')
					->get('featured_products')
					->result_array();

		return $featurd;
	}
	public function getTopproducts()
	{
		$top = $this->db->select('*')
					->get('top_rated_products')
					->result_array();

		return $top;
	}
	public function getOfferproducts()
	{
		$offer = $this->db->select('*')
					->get('special_offer_products')
					->result_array();

		return $offer;
	}
	public function getBestproducts()
	{
		$best = $this->db->select('*')
					->get('best_seller_products')
					->result_array();

		return $best;
	}


}