<?php
require_once 'models/registration.php';

class Registration  {
    
    function indexAction()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') 
        {
         header("Location: http://localhost/primer/index");
        }
        
        $registrationModel = new RegistrationModel();
        $result = $registrationModel->insert($_POST);
        echo json_encode($result);die;
    }

    
}
