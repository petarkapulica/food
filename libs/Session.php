<?php

class Session {

    function __construct() {
        if(!empty($_SESSION))
        {
           
        }
        else
        {
           session_destroy();
           header("location:http://localhost/primer");
        }
        
        $this->_view = new View();
    }

}

