<?php


Route::get('/', function()
{
	return View::make('index');
});
Route::get('/register', 'HomeController@register');

Route::controller('users', 'UserController');
Route::controller('admin', 'AdminController');

Route::controller('user', 'UserserviceController');
Route::controller('adminservice', 'AdminserviceController');

Route::controller('contact', 'ContactController');
