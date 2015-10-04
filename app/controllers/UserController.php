<?php
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
class UserController extends BaseController {
	public function postLogin() {
		$userinput = Input::get ( 'username' );
		$field = filter_var ( $userinput, FILTER_VALIDATE_EMAIL ) ? 'email' : 'mobile';
		if (Auth::attempt ( array (
				$field => $userinput,
				'password' => Input::get ( 'password' ) 
		) )) {
			
			Session::put ( 'user_id', Auth::user ()->id );
			Session::put ( 'name', Auth::user ()->name );
			Session::put ( 'email', Auth::user ()->email );
			Session::put ( 'mobile', Auth::user ()->mobile );
			Session::put ( 'role', Auth::user ()->role );
			Session::put ( 'status', Auth::user ()->status );
			// return 1;
			if (Auth::user ()->role == 'admin') {
				return Redirect::to ( 'admin' );
			} else if (Auth::user ()->role == 'user') {
				return Redirect::to ( 'user' );
			} else {
				return Redirect::to ( '/' );
			}
		} else {
			return Redirect::to ( '/' );
		}
	}
	public function postRegister() {
		$validator = Validator::make ( Input::all (), User::$required );
		if ($validator->passes ()) {
			$password = Input::get ( 'password' );
			$register = new User ();
			$register->name = Input::get ( 'name' );
			$register->email = Input::get ( 'email' );
			$register->mobile = Input::get ( 'mobile' );
			$register->role = Input::get ( 'role' );
			$register->password = Hash::make ( $password );
			$register->save ();
			return Response::json ( $register );
		} else {
			return 0;
		}
	}
	public function anyLogout() {
		Auth::logout ();
		Session::flush ();
		return Redirect::to ( '/' );
	}
}
