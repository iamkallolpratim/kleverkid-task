<?php

class AdminController extends BaseController
{

   
protected $layout = "layouts.admin";
    
    public function getIndex ()
    {
        if (Auth::check()) {
            $this->layout->content = View::make('admin.index');
        } else {
            return Redirect::to('/');
        }
    }

   
}
