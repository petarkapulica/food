<?php

class ActivitiesModel extends Model {

     public function get()
    {
        $stmt = $this->db->prepare("
            SELECT 
                act.*,
                uact.hours_spent
            FROM 
                activities as act
                LEFT OUTER JOIN user_activities as uact on uact.activity_id = act.id 
                        AND  uact.user_id = ".$_SESSION["user"]["id"]."             
        ");
        $stmt->execute();
        //ovde smo na databazu activities nalepili kolonu hours_spent iz
        // databaze user_activities
        //to nam omogucava mysql funckija LEFT OUTER JOIN
        //ovaj model nam treba da bismo na frontu prikazali listu upisanih aktivnosti
       
       return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

