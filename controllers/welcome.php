<?php

class Welcome extends Session {

    function __construct() {
        parent::__construct();
    }
    
    // index je default akcija,ako u urlu posle naziva kontrolera ne postoji nista!pogledati Bootstrap!(line7)
    function indexAction()
    {
        
        $this->_view->render('welcome/index' , $noInclude = false , $otherHeader = "header");
    }

}