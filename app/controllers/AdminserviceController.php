<?php
class AdminserviceController extends Controller 

{
	public function __construct() {
		$this->beforeFilter ( 'csrf', array (
				'on' => 'post' 
		) );
	}
	
	public function getAlluser(){
		$user = User::where('role', 'user')->get();
		return Response::json($user);
	}
}
