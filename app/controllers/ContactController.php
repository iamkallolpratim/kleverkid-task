<?php
class ContactController extends Controller {
	public function __construct() {
		$this->beforeFilter ( 'csrf', array (
				'on' => 'post' 
		) );
	}
	
	public function postSave(){
		$validator = Validator::make ( Input::all (), Contact::$rules );
		if ($validator->passes ()) {
			$user_id = Session::get('user_id');
			
			$contact = new Contact ();
			$contact->name = Input::get ( 'name' );
			$contact->email = Input::get ( 'email' );
			$contact->mobile = Input::get ( 'mobile' );
			$contact->region = Input::get ( 'region' );
			$contact->address = Input::get ( 'address' );
			$contact->user_id = $user_id;
			$contact->save ();
			return Response::json ( $contact );
		} else {
			return 0;
		}
	}
	
	public function getAllcontacts(){
		$user_id = Session::get('user_id');
		
		$contact = Contact::where('user_id', $user_id)->get();
		return Response::json($contact);
	}
}