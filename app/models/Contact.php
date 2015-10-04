<?php
class Contact extends Eloquent{
	
	protected $table = 'contacts';
	
	public static $rules = array(
			'name' => 'required',
			'email'=>'required|email|unique:contacts',
			'mobile'=>'required|max:10|unique:contacts',
			'region' => 'required',
			'address' => 'required'
	);
	
}