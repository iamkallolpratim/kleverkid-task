<?php

class UserserviceController extends BaseController

{

	protected $layout = "layouts.user";
    
    public function getIndex ()
    {
        if (Auth::check()) {
            $this->layout->content = View::make('user.index');
        } else {
            return Redirect::to('/');
        }
    }

   
}
