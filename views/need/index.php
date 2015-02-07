        <div id="C"> 
            <form class="register" id="calculate"  method="post">
                <strong>Height</strong><input type="text" name="height" class="register-input" <?php echo ($this->userData["height"] > 0 ? 
                        'value="'. $this->userData["height"] .'"' : 'placeholder="' . "Your Height in cm" . '"');?>">
                       
                <strong>Weight</strong><input type="text" name="weight" class="register-input" <?php echo ($this->userData["weight"] > 0 ? 
                        'value="'. $this->userData["weight"] .'"' : 'placeholder="' . "Your Weight in kg" . '"');?>">
                       
                       
                <strong>Age</strong><input type="text" name="age" class="register-input" <?php echo ($this->userData["age"] > 0 ? 
                        'value="'. $this->userData["age"] .'"' : 'placeholder="' . "Your Age in years" . '"');?>">
                <br>
                <input type="radio" name="sex" value="male" <?php if ($this->userData["sex"]==='male') echo 'checked="checked"';?>>Male<br>
                <input type="radio" name="sex" value="female"<?php if ($this->userData["sex"]==='female') echo 'checked="checked"';?>>Female<br>
                <br>
                <br>
                Activity:
                <select style="width:250px" name="category">
                    <?php 
                      $userCategory = $this->userData["category"];
                        foreach (bmCategory::$categoriesMap as $key => $value)
                        {
                        ?>
                         <option value="<?php echo $key.'"';if($key==$userCategory) {echo "selected";}?>><?php echo $value;?></option>
                         <?php
                        }
                    ?>
                 </select>
                <input id="submit_need" type="submit" value="Calculate!" class="register-button">
            </form>
            
        </div>
        
        <div class="outPopUp" ><?php if($this->need != null){echo $this->need . ' CALORIES NEEDED!';}?></div>