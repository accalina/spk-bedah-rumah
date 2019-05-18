<?php

/**
* 
*/
require APPPATH . 'libraries/REST_Controller.php';
class Api extends REST_Controller
{
	
	function __construct()
	{
		parent::__construct();
	}

	function index_get(){
		$name = $this->get('name');
		$this->response(['msg'=>"hello", 'username' => $name]);

	}

	function index_post(){
		$name = $this->post('name');
		$this->response(['msg'=>"Hallo $name"],201);
	}

	function index_put(){
		$name = $this->put('name');
		$this->response(['msg'=>"Hallo $name, Put success!"],201);
	}
}