<p><strong>Insert time in hours</strong> </p>
<div id="C">
        
     <div>
         <select id="select_act">
             
            <?php 
            $activitiesType = array(
                1 => "Gym",
                2 => "Sport",
                3 => "Outdoor Activities",
                4 => "Home & Daily Life Activities",
                5 => "Home Repair",
                6 => "Occupational Activities",
            ); 
            
            $tmpType = null;
            foreach($this->activities as $key => $value)
             {  
                if($value["hours_spent"] <= 0)
                {
                    if(empty($tmpType))
                    {
                    ?>
                    <optgroup label="<?php echo $activitiesType[$value["type"]]; ?>">
                 <?php
                    }
                
               
                    
                    if($tmpType != null && $tmpType != $value["type"])
                    {
                        echo '</optgroup><optgroup label="'.$activitiesType[$value["type"]].'">';
                    }
                    $tmpType = $value["type"];
             ?>
                
                <option value="<?php echo $value["id"]; ?>">
                    <?php echo $value["name"]; ?> 
                </option>
                
               <?php
                      
                    
                  }
               }
             ?>  
               
         </select>
         <button id="add">+Add</button>
         
     </div>
    
 </div>
 
<br>
<br>

<div id="C">   
  <form class="register" id="form_spent" method="post">
    <?php 
    foreach($this->activities as $key => $value)
    {
     ?>
      <?php
        if($value["hours_spent"] > 0)
        {
       ?>
        <div>
            <div class="act_text">
            <?php echo $value["name"]; ?>
            </div>
            <input class="input_act" type="text" name="<?php echo $value["id"]; ?>"
                   value="<?php echo $value["hours_spent"]; ?>"/><span class="hours_spent">hrs</span>
            <input type="button" class="remove_act" value="-" />
        </div>
      <?php 
        }
    }
    ?>
      
      
   <input type="submit" id="submit_spent" value="Calculate!" class="register-button">
  </form>
        </div>

    <div class="outPopUp2">
        <?php 
            if($this->spent != 0)
                {
                   echo $this->spent . " CALORIES SPENT!";
                }
        ?>
    </div>

