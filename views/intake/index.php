<?php

$food_type = array(
                    1 => 'Meat',
                    2 => 'Seafood',
                    3 => 'Milk, eggs cheese and dairy',
                    4 => 'Fruits',
                    5 => 'Vegetables',
                    6 => 'Nuts',
                    7 => 'Dough and Bread',
                    8 => 'Junk',
                    9 => 'Beverages',
                );

?>

<form id="intakeA" method="post" action="intake/yourintake">
    
    <table class="table1">
	<thead>
            <tr>
                <th>Position 
                <th>Type 
                <th>Food 
                <th>Amount in grams   
                <th>Add
	</thead>
	<tbody>
            <tr>
                <td class="position_food">
                    1
		<td>
                    <select name="food_type" class="food_types_selector">
                        <option selected>Please select type of food</option>
                        <?php 
                             foreach($food_type as $key => $value)
                            {
                                ?>
                        <option value="<?php echo $key;?>"><?php echo $value;?></option>
                        <?php
                            }
                        ?>
                      </select>
		<td>
                    <select name="food" class="food_sorts_selector">
                        
                      </select>
                <td>
                    <input class="mass_slider" type="range" min="0" max="500" step= "20" value="0" />
                    <input class="mass_value" name="amount" type="text" size="2" value="0" readonly/>
                <td>
                    <input type="button" id="new_food" class="add_food_button" value="+"/>
	</tbody>
    </table>
   
    <input type="submit" value="Calculate!" class="register-button" />
    
</form>