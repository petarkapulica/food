<?php

class RegistrationModel extends Model {
    
    public $db;
    
    public function insert($data)
    {       
        if(empty($data["name"]) || empty($data["surname"])
        || empty($data["email"]) || empty($data["newusername"]) 
        || empty($data["newpassword"]))
            {
           return array(
               "status" =>false,
               "message" => "please fill whole form"               
                       );           
            }
            
            //duzina username-a
         if(strlen($data["newusername"]) < 3)
         {
             return array(
               "status" =>false,
               "message" => "username must be at least 3 chars"               
                       );     
         }
         
         //request za ojacanu sifru
         if(strpbrk($data["newpassword"],'0123456789') === false 
                 || strlen($data["newpassword"])<8)
         {
             return array(
               "status" => false,
               "message" => "password is to week(must be at least 8 chars and contain 1 digit"               
                       );  
         }
         
         //provera postojeceg emaila u bazi:
         
         $stmt = $this->db->prepare("SELECT email FROM users WHERE email = :email");
         $stmt->bindParam(':email', $data["email"]);
         $stmt->execute();
         
         if($stmt->rowCount() > 0)
         {
             return array(
                 "status" => false,
                 "message" => "that email is already in use"
             );
         }
            
      //da li vec postoji u bazi:
        $stmt = $this->db->prepare("SELECT username FROM users WHERE username = :name");
        $stmt->bindParam(':name', $data["newusername"]);
        $stmt->execute();
        
        if($stmt->rowCount() > 0 )
        {
            return array(
                "status" => false,
                "message" =>"username alredy exists"
            ); 
        }
        
        
        $sql = "INSERT INTO users(name,
            surname,
            email,
            username,
            password) VALUES (
            :name, 
            :surname, 
            :email, 
            :username, 
            :password)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':name', $data['name']);
        $stmt->bindParam(':surname', $data['surname']);
        $stmt->bindParam(':email', $data['email']);
        $stmt->bindParam(':username', $data['newusername']);
        $stmt->bindParam(':password', $data['newpassword']);
        
        $stmt->execute(); 
        
        return array("status" => true);
        
    }
}
