<?php
use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class User extends Eloquent implements UserInterface, RemindableInterface
{
    
    use UserTrait, RemindableTrait;

    protected $table = 'user_master';
    
    public static $rules = array(
            'username' => 'required',
            'password' => 'required'
    );
    
    public static $required = array(
    	
    		'name'=>'required',
    		'email'=>'required|email|unique:user_master',
    		'mobile'=>'required|unique:user_master',
    		'password'=>'required|min:6'
    );

}
