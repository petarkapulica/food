<?php
require_once('models/UserChatsModel.php');

class Chat extends Session {

    function __construct() {
        parent::__construct();
    }
    
    // index je default akcija,ako u urlu posle naziva kontrolera ne postoji nista!pogledati Bootstrap!(line7)
    function insertAction()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') 
        {
         header("Location: http://localhost/primer/index");
        }
        
        $userChatsModel = new UserChatsModel();
        
        if(!empty($_POST))
        {
            $userChatsModel->saveChatMessages($_POST);
        }
        
        echo json_encode($userChatsModel->getChatMessages()); die;;
    }
    
    function getAction()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') 
        {
         header("Location: http://localhost/primer/index");
        }
        
        $userChatsModel = new UserChatsModel(); 
        
        $userChatsModel->getChatMessages();
       // echo '<pre>';        var_dump($userChatsModel->getChatMessages()); die;
        echo json_encode($userChatsModel->getChatMessages()); die;
        
    }
    
    function getuserAction()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'GET') 
        {
         header("Location: http://localhost/primer/index");
        }
        
        $userChatsModel = new UserChatsModel();
        
        $userChatsModel->getChatMessagesFromSingleUser();
        
        echo json_encode($userChatsModel->getChatMessagesFromSingleUser());die;
    }
    

}