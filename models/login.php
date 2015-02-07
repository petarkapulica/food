<?php

class LoginModel extends Model {
    public $db;
    
    public function select( $array = array(), $fetchMode = PDO::FETCH_ASSOC)
    {
        if(isset($array['logusername']) && isset($array['logpassword'])){
            $q = $this->db->prepare("SELECT * FROM users WHERE username = :username and password = :password");
            $q->bindValue(':username', $array['logusername']);
            $q->bindValue(':password', $array['logpassword']);
            $q->execute();
            return $q->fetch(PDO::FETCH_ASSOC);
        }
        return false;
    }

    
    
    
}