<?php

class Welcome extends Session {

    function __construct() {
        parent::__construct();
    }
    
    function indexAction()
    {
        
        $this->_view->render('welcome/index' , $noInclude = false , $otherHeader = "header");
    }

}