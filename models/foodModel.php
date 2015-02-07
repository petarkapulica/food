<?php

class foodModel extends Model {

    public function getFood()
    {
        $sql = "SELECT
                    id,
                    name,
                    type
                  FROM
                    food";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function save($data)
    {   
        $this->delete();
        foreach ($data as $a)
        {
            $sql = "INSERT 
                  INTO 
                  user_intake 
                  (user_id,
                  food_id,
                  amount)
                  VALUES
                  (:user_id,
                  :food_id,
                  :amount
                  )";
              $stmt = $this->db->prepare($sql);
              $stmt->bindParam(':user_id', $_SESSION["user"]["id"]);
              $stmt->bindParam(':food_id', $a["foodId"]);
              $stmt->bindParam(':amount', $a["value"]);
              $stmt->execute();
        }              
            
        
    }
    
    public function delete($foodId = null)
    {       
        $sql = "
            DELETE 
                FROM 
            user_intake 
                WHERE 
            user_id = :user_id";
        
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':user_id', $_SESSION["user"]["id"]);
            
        $stmt->execute();
    }
    
    public function getUserIntake()
    {
        $sql = "
                SELECT
                    ui.food_id,
                    ui.amount,
                    f.type,
                    f.calories,
                    f.carbs,
                    f.fiber,
                    f.starch,
                    f.sugar,
                    f.fat,
                    f.saturated_fat,
                    f.monounsaturated_fat,
                    f.polyunsaturated_fat,
                    f.omega3,
                    f.omega6,
                    f.protein,
                    f.vitA,
                    f.vitC,
                    f.vitD,
                    f.vitE,
                    f.vitK,
                    f.thiaminB1,
                    f.riboflavinB2,
                    f.niacinB3,
                    f.vitB6,
                    f.folateB9,
                    f.vitB12,
                    f.panthotenicB5,
                    f.choline,
                    f.betaine,
                    f.calcium,
                    f.iron,
                    f.magnesium,
                    f.phosphorus,
                    f.potassium,
                    f.sodium,
                    f.zinc,
                    f.copper,
                    f.manganese,
                    f.selenium,
                    f.fluoride,
                    f.cholesterol,
                    f.phytosterols,
                    f.alcohol,
                    f.water,
                    f.ash,
                    f.caffeine,
                    f.theobromine
                 FROM
                    user_intake as ui
                 LEFT OUTER JOIN 
                    food as f on f.id = ui.food_id
                 WHERE
                   ui.user_id = :user_id"
                ;
        
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':user_id', $_SESSION["user"]["id"]);
            
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    
    public function getCalories()
    {
        $userIntake = $this->getUserIntake();
        $sum = 0;
        foreach($userIntake as $key => $value)
        {
           $sum += $value["calories"] * $value["amount"]/100;
        }
        return (int)$sum;
    }
    
    public function getRatio()
    {
        $userIntake = $this->getUserIntake();
        $calories = $this->getCalories();
        
        $proteinSum = 0;
        $carbSum = 0;
        $fatSum = 0;
        $ratio = array();
        foreach($userIntake as $key => $value)
        {
            $proteinSum += $value['protein'] * $value['amount']/100;
            $carbSum += $value['carbs'] * $value['amount']/100;
            $fatSum += $value['fat'] * $value['amount']/100;
        }
        
        $ratio[] = (int)($proteinSum * 400 / $calories);
        $ratio[] = (int)($carbSum * 400 / $calories);
        $ratio[] = (int)($fatSum * 900 / $calories);
        $ratio[] = $calories;
        
        return $ratio;
    }
    
    public function getEnergy()
    {
        $userIntake = $this->getUserIntake();
        
        $proteinSum = 0;
        $carbSum = 0;
        $fiberSum = 0;
        $starchSum = 0;
        $sugarSum = 0;
        foreach($userIntake as $key => $value)
        {
            $proteinSum += $value['protein'] * $value['amount']/100;
            $carbSum += $value['carbs'] * $value['amount']/100;
            $fiberSum += $value['fiber'] * $value['amount']/100;
            $starchSum += $value['starch'] * $value['amount']/100;
            $sugarSum += $value['sugar'] * $value['amount']/100;
        }
        
        $energy = array($proteinSum, $carbSum, $fiberSum, $starchSum, $sugarSum);
        return $energy;
    }
    
    public function getFat()
    {
        $userIntake = $this->getUserIntake();
        
        $fatSum = 0;
        $satFatSum = 0;
        $monFatSum = 0;
        $polFatSum = 0;
        $omega3 = 0;
        $omega6 = 0;
        foreach($userIntake as $key => $value)
        {
            $fatSum += $value['fat'] * $value['amount']/100;
            $satFatSum += $value['saturated_fat'] * $value['amount']/100;
            $monFatSum += $value['monounsaturated_fat'] * $value['amount']/100;
            $polFatSum += $value['polyunsaturated_fat'] * $value['amount']/100;
            $omega3 += $value['omega3'] * $value['amount']/100;
            $omega6 += $value['omega6'] * $value['amount']/100;
        }
        
        $fat = array($fatSum, $satFatSum, $monFatSum, $polFatSum, $omega3, $omega6);
        return $fat;
    }
    
    public function getVitamins()
    {
        $userIntake = $this->getUserIntake();
        
        $vitASum = 0;
        $vitCSum = 0;
        $vitDSum = 0;
        $vitESum = 0;
        $vitKSum = 0;
        $vitB1Sum = 0;
        $vitB2Sum = 0;
        $vitB3Sum = 0;
        $vitB6Sum = 0;
        $vitB9Sum = 0;
        $vitB12Sum = 0;
        $vitB5Sum = 0;
        $vitCholineSum = 0;
        $vitBetaineSum = 0;
        
        foreach($userIntake as $key => $value)
        {
            $vitASum += $value['vitA'] * $value['amount']/100;
            $vitCSum += $value['vitC'] * $value['amount']/100;
            $vitDSum += $value['vitD'] * $value['amount']/100;
            $vitESum += $value['vitE'] * $value['amount']/100;
            $vitKSum += $value['vitK'] * $value['amount']/100;
            $vitB1Sum += $value['thiaminB1'] * $value['amount']/100;
            $vitB2Sum += $value['riboflavinB2'] * $value['amount']/100;
            $vitB3Sum += $value['niacinB3'] * $value['amount']/100;
            $vitB6Sum += $value['vitB6'] * $value['amount']/100;
            $vitB9Sum += $value['folateB9'] * $value['amount']/100;
            $vitB12Sum += $value['vitB12'] * $value['amount']/100;
            $vitB5Sum += $value['panthotenicB5'] * $value['amount']/100;
            $vitCholineSum += $value['choline'] * $value['amount']/100;
            $vitBetaineSum += $value['betaine'] * $value['amount']/100;
            
        }
        
        $vitamins = array( //1000*$vitDSum to set to mcg !!!
            $vitASum, $vitCSum, 1000*$vitDSum, $vitESum, $vitKSum, $vitB1Sum, $vitB2Sum,
            $vitB3Sum, $vitB6Sum, $vitB9Sum, $vitB12Sum, $vitB5Sum, $vitCholineSum, $vitBetaineSum
        );
        return $vitamins;
    }
    
    public function getMinerals()
    {
        $userIntake = $this->getUserIntake();
        
        $calciumSum = 0;
        $ironSum = 0;
        $magnesiumSum = 0;
        $phosphorusSum = 0;
        $potassiumSum = 0;
        $sodiumSum = 0;
        $zincSum = 0;
        $copperSum = 0;
        $manganeseSum = 0;
        $seleniumSum = 0;
        $fluorideSum = 0;
        
        foreach($userIntake as $key => $value)
        {
            $calciumSum += $value['calcium'] * $value['amount']/100;
            $ironSum += $value['iron'] * $value['amount']/100;
            $magnesiumSum += $value['magnesium'] * $value['amount']/100;
            $phosphorusSum += $value['phosphorus'] * $value['amount']/100;
            $potassiumSum += $value['potassium'] * $value['amount']/100;
            $sodiumSum += $value['sodium'] * $value['amount']/100;
            $zincSum += $value['zinc'] * $value['amount']/100;
            $copperSum += $value['copper'] * $value['amount']/100;
            $manganeseSum += $value['manganese'] * $value['amount']/100;
            $seleniumSum += $value['selenium'] * $value['amount']/100;
            $fluorideSum += $value['fluoride'] * $value['amount']/100;
            
        }
        
        $minerals = array(
            $calciumSum,$ironSum, $magnesiumSum, $phosphorusSum, $potassiumSum,
            $sodiumSum, $zincSum, $copperSum, $manganeseSum, $seleniumSum, $fluorideSum
        );
        return $minerals;
    }
    
    public function getSterols()
    {
        $userIntake = $this->getUserIntake();
        
        $cholesterolSum = 0;
        $phytosterolSum = 0;
        $alcoholSum = 0;
        $waterSum = 0;
        $ashSum = 0;
        $caffeineSum = 0;
        $theobromineSum = 0;
        
        foreach($userIntake as $key => $value)
        {
            $cholesterolSum += $value['cholesterol'] * $value['amount']/100;
            $phytosterolSum += $value['phytosterols'] * $value['amount']/100;
            $alcoholSum += $value['alcohol'] * $value['amount']/100;
            $waterSum += $value['water'] * $value['amount']/100;
            $ashSum += $value['ash'] * $value['amount']/100;
            $caffeineSum += $value['caffeine'] * $value['amount']/100;
            $theobromineSum += $value['theobromine'] * $value['amount']/100;
            
        }
        
        $sterols = array(
            $cholesterolSum, $phytosterolSum, $alcoholSum, $waterSum,
            $ashSum, $caffeineSum, $theobromineSum
        );
        return $sterols;
    }
    
    public function getUserFood()
    {
        $sql = "
                SELECT
                    ui.food_id,
                    ui.amount,
                    f.name
                 FROM
                    user_intake as ui
                 LEFT OUTER JOIN 
                    food as f on f.id = ui.food_id
                 WHERE
                   ui.user_id = :user_id"
                ;
        
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':user_id', $_SESSION["user"]["id"]);
            
        $stmt->execute();
        
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

