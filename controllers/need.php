<?php
require_once('models/bmr_model.php');
require_once('models/bmCategory.php');

class Need extends Session {

    function __construct() {
        parent::__construct();
    }
    
    public function indexAction()
    {
        $bmi = new BmrModel();
        if(!empty($_POST))
        {
           $bmi->save($_POST);
        }
        
        $this->_view->need = $bmi->getNeed();
        $this->_view->userData = $bmi->get();
        $this->_view->render('need/index', $noInclude = false , $otherHeader = "header");
    }
    
    public function dataAction()
    {
       
        $bmi = new BmrModel();
        echo json_encode(($bmi->get())); die;
    }
    
    public function doAction()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') 
        {
         header("Location: http://localhost/primer/index");
        }
        $bmi = new BmrModel();
        $bmi->save($_POST);
        echo json_encode(($bmi->get()));
    }

}