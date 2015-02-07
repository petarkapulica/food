<?php

require_once("models/login.php");

class Login {

    function indexAction() {
        
        $login = new LoginModel();
        
        $user = $login->select($_POST);
        if(!empty($user))
        {
            $_SESSION["user"] = $user;
            echo json_encode(array(
                "status" => true,
                "message" => "uspesno ste se ulogovali"
            )); die;
             
        }
        echo json_encode(array(
            "status" => false,
            "message" => "wrong username or password"
        )); die;
    }
    
    function logoutAction()
    {
        session_destroy();
    }

}
