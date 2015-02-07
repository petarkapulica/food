<?php

class UserActivitiesModel extends Model {
    
    public function save($data)
    {   
        $this->delete();
        
        foreach ($data as $activityId => $hoursSpent)
        {
            $sql = "INSERT 
                  INTO 
                  user_activities 
                  (user_id,
                  activity_id,
                  hours_spent)
                  VALUES
                  (:user_id,
                  :activity_id,
                  :hours_spent
                  )";
              $stmt = $this->db->prepare($sql);
              $stmt->bindParam(':user_id', $_SESSION["user"]["id"]);
              $stmt->bindParam(':activity_id', $activityId);
              $stmt->bindParam(':hours_spent', $hoursSpent);
              $stmt->execute();
        }
    }
       
    public function delete()
    {
        $sql = "
            DELETE 
                FROM 
            user_activities 
                WHERE 
            user_id = :userId";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':userId', $_SESSION["user"]["id"]);
        $stmt->execute();        
    }
    
    public function getSpentCalories()
    {
        $activities = $this->getForUser();
        $caloriesSpent = 0;
        
        foreach($activities as $activity)
        {
            if($activity["weight"]===57)
            {
                $caloriesSpent += $activity["hours_spent"]*$activity["valueS"];
            }
            elseif($activity["weight"]===84)
            {
                $caloriesSpent += $activity["hours_spent"]*$activity["valueL"];
            }
            elseif($activity["weight"]<70)
            {
                $caloriesSpent += $activity["hours_spent"] *
                                ((($activity["weight"]-57)*($activity["valueM"]-$activity["valueS"])+13*$activity["valueS"])/13);
            }
            elseif($activity["weight"]>70)
            {
                $caloriesSpent += $activity["hours_spent"] *
                                ((($activity["weight"]-70)*($activity["valueL"]-$activity["valueM"])+14*$activity["valueM"])/14);
            }
            else //u stvari ovo je ako ima tacno 70kg
            {
                $caloriesSpent += $activity["hours_spent"]*$activity["valueM"];
            }
        }
        return round($caloriesSpent);
    }
    
    
    public function getForUser()
    {
        $sql = "
            SELECT 
                ac.hours_spent,
                bmi.weight,
                a.valueS,
                a.valueM,
                a.valueL,
                a.name
            FROM 
                user_activities  as ac    
            LEFT OUTER JOIN body_mass_index as bmi on bmi.user_id = ac.user_id
            LEFT OUTER JOIN activities as a on a.id = ac.activity_id
            WHERE
                ac.user_id = :userId           
        ";
        
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':userId', $_SESSION["user"]["id"]);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        //nalepili smo tacno odredjene kolone iz 3 baze da bismo prikupili
        //samo one potrebne podatke za izracunavanje potrosenih kalorija
        //opet mysql funkcija LEFT OUTER JOIN!
    }
}
