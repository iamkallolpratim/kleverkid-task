<?php
class AdminserviceController extends Controller 

{
// 	public function __construct() {
// 		$this->beforeFilter ( 'csrf', array (
// 				'on' => 'post' 
// 		) );
// 	}
	
	public function getAlluser(){
		$user = User::where('role', 'user')->get();
		return Response::json($user);
	}
	
	public function postContactsbyuser(){
		$user_id = Input::get('id');
		$contact = Contact::where ( 'user_id', $user_id )->get ();
		return Response::json ( $contact );
	}
	
	public function postSaveforuser(){
		$validator = Validator::make ( Input::all (), Contact::$rules );
		if ($validator->passes ()) {
			$user_id = Input::get ( 'user_id' );
			$contact = new Contact ();
			$contact->name = Input::get ( 'name' );
			$contact->email = Input::get ( 'email' );
			$contact->mobile = Input::get ( 'mobile' );
			$contact->type = Input::get ( 'type' );
			$contact->region = Input::get ( 'region' );
			$contact->address = Input::get ( 'address' );
			$contact->user_id = $user_id;
			$contact->save ();
			return Response::json ( $contact );
		} else {
			return 0;
		}
	}
}
