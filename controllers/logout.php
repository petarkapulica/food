<?php

class Logout {

    function __construct() 
    {
        session_destroy();
        header("location:/primer");
    }
    
    function indexAction()
    {
        
    }

}