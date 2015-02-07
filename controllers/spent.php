<?php
require_once('models/UserActivitiesModel.php');
require_once('models/ActivitiesModel.php');

class Spent extends Session {

    function __construct() {
        parent::__construct();
    }
    
    public function indexAction()
    {
        $userActivitiesModel = new UserActivitiesModel();
        if(!empty($_POST))
        {
            $userActivitiesModel->save($_POST);
        }
        
        $activities = new ActivitiesModel();
        $this->_view->activities = $activities->get();
        
        $this->_view->spent = $userActivitiesModel->getSpentCalories();
        $this->_view->render('spent/index', $noInclude = false , $otherHeader = "header");
    }
    
    public function dataAction()
    {
         if ($_SERVER['REQUEST_METHOD'] === 'GET') 
        {
         header("Location: http://localhost/primer/index");
        }
        $userActivitiesModel = new UserActivitiesModel();
        $userActivitiesModel->save($_POST);
        echo json_encode(($userActivitiesModel->getSpentCalories()));
    }
}
