<?php

class BmrModel extends Model{

    public function save($data)
    {          
        $bmData = $this->get();
        !empty($bmData) ? 
            $this->update($data) :
            $this->insert($data);
    }
    
    public function insert($data)
    {
         $bmr = $this->bmrFormule($data);
         $need = $this->needFormule($data);
         
         $sql = "INSERT 
                    INTO 
                body_mass_index
                (user_id,
                height,
                weight,
                age,
                sex,
                bmr,
                category,
                need
                )
                    VALUES
                (:user_id, 
                :height,
                :weight,
                :age,
                :sex,
                :bmr,
                :category,
                :need
                )";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':user_id', $_SESSION["user"]["id"]);
        $stmt->bindParam(':height', $data["height"]);
        $stmt->bindParam(':weight', $data["weight"]);
        $stmt->bindParam(':age', $data["age"]);
        $stmt->bindParam(':sex', $data["sex"]);
        $stmt->bindParam(':bmr', $bmr);
        $stmt->bindParam(':category', $data["category"]);
        $stmt->bindParam(':need', $need);
        $stmt->execute();
    }
    
    public function update($data)
    {        
        $bmr = $this->bmrFormule($data); 
        $need = $this->needFormule($data);

        $sql = "UPDATE 
            body_mass_index SET 
            height = :height , 
            weight = :weight, 
            age = :age,
            sex = :sex,
            bmr = :bmr, 
            category = :category,
            need = :need
                WHERE user_id = :user_id";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(':user_id', $_SESSION["user"]["id"]);
            $stmt->bindParam(':height', $data["height"]);
            $stmt->bindParam(':weight', $data["weight"]);
            $stmt->bindParam(':age', $data["age"]);
            $stmt->bindParam(':sex', $data["sex"]);
            $stmt->bindParam(':category', $data["category"]);
            $stmt->bindParam(':bmr', $bmr);
            $stmt->bindParam(':need', $need);
            $stmt->execute();
    }
    
    public function get()
    {
        $stmt = $this->db->prepare("SELECT * FROM body_mass_index WHERE user_id = :user_id");
        $stmt->bindParam(':user_id' , $_SESSION["user"]["id"]);
        $stmt->execute();
        return $stmt->fetch();
    }
    
    
    public function getNeed()
    {
        $vrednost = $this->get();
            if(empty($vrednost))
            {
                return false;
            }          
        return $this->needFormule($vrednost);
    }
    
    public function bmrFormule($vrednost)
    {
        if($vrednost["sex"] === "male")
        {
            $x = 66 + 13.7 * $vrednost["weight"] + 
                 5 * $vrednost["height"] - 
                 6.8 * $vrednost["age"];
        }
        else
        {
            $x = 655 + 9.6 * $vrednost["weight"] + 
                 1.8 * $vrednost["height"] - 
                 4.7 * $vrednost["age"];
        }
        return $x;
    }
    
    public function needFormule($vrednost)
    {
        switch($vrednost["category"])
        {
            case 1 : return round($this->bmrFormule($vrednost) * 1.2);
            case 2 : return round($this->bmrFormule($vrednost) * 1.375);
            case 3 : return round($this->bmrFormule($vrednost) * 1.55);
            case 4 : return round($this->bmrFormule($vrednost) * 1.725);
            case 5 : return round($this->bmrFormule($vrednost) * 1.9);
        }
    }
    
}

