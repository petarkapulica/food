<?php
require_once('models/foodModel.php');

class Intake extends Session {

    function __construct() {
        parent::__construct();
    }
    
    public function indexAction()
    {
        $this->_view->render('intake/index', $noInclude = false , $otherHeader = "header");
    }
    
    public function typeAction()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') 
        {
         header("Location: http://localhost/primer/index");
        }
        
        $foodModel = new foodModel();
        echo json_encode($foodModel->getFood());
    }
    
    public function yourintakeAction()
    {
        $foodModel = new foodModel();
        if(!empty($_POST))
        {
            $foodModel->save($_POST);
        }
        
        $this->_view->userIntake = $foodModel->getUserFood();
        
        $this->_view->energy = $foodModel->getEnergy();
        $this->_view->fat = $foodModel->getFat();
        $this->_view->vitamins = $foodModel->getVitamins();
        $this->_view->minerals = $foodModel->getMinerals();
        $this->_view->sterols = $foodModel->getSterols();
        
        $this->_view->calories = $foodModel->getCalories();
        
        $this->_view->render('intake/yourintake', $noInclude = true );  
    }
    
    public function calculateAction()
    {
        
        if ($_SERVER['REQUEST_METHOD'] === 'GET') 
        {
         header("Location: http://localhost/primer/index");
        }
       
        $foodModel = new foodModel();
        if(!empty($_POST))
        {
            $foodModel->save($_POST["data"]);
        }
        echo json_encode(array(
            "status" => true
        ));
        die;
    }
    
    public function userAction()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') 
        {
         header("Location: http://localhost/primer/index");
        }
        
        $user = $_SESSION;
        echo json_encode($user);die;
    }
    
    public function ratioAction()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') 
        {
         header("Location: http://localhost/primer/index");
        }
        
        $foodModel = new foodModel();
        echo json_encode($foodModel->getRatio());
    }
    

}