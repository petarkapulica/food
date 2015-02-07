<!DOCTYPE html>
<html>
<head>
<title>Your today's intake</title>
	<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <link rel="stylesheet" href="/primer/public/css/public2.css">
        <script type="text/javascript" src="../public/js/jquery.js"></script>
        <script type="text/javascript" src="../public/js/piechartplugin.js"></script>
        <script src="http://code.highcharts.com/highcharts.js"></script>
        <script src="http://code.highcharts.com/modules/exporting.js"></script>
        <script type="text/javascript" src="../public/js/food_examiner.js"></script>
</head>

<body>
    <div id="header">
    <a href="../welcome" class="logout-button">->back</a>
    </div>
    <div>
        
        <div id="container">
            
        </div>
        
        <div class="user_table">
            
            <ul class="list_user_data">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            
            <p>
                This is <strong>ONLY</strong> for info. <strong>Read</strong> t&c. 
                Always consult doctor.
            </p>
        </div>
        
        <div class="calories">
        <?php echo $this->calories;?> CALORIES CONSUMED!!!
        </div>
        
    </div>
    
    
    <br>
    <br>
    
    <div class="tables_space">
        
        <ul>
            <p>Your Food (red indicates improper intake):</p>
            <?php 
                    foreach($this->userIntake as $key => $value)
                    {
                        echo '<li>';
                        echo  $value["name"] . ' - ' . $value["amount"] . 'g' ;
                        echo '</li>';
                    }

                 ?>
            
        </ul>
        
        
        
        <table>
            <caption>Energy intake </caption>
            <thead>
                <tr><th>Proteins (g)<th>Carbs (g)<th>Fiber (g)<th>Starch (g)<th>Sugar (g)
            </thead>
            <tbody>
            <tr>
                    <?php
                        $i=1;
                        foreach($this->energy as $key => $value)
                        {
                            echo "<td class='e{$i}' data-type='e' data-value='{$i}'>" . $value;
                            $i++;
                        }
                        ?>
            </tbody>
        </table>
        <div class="comments js_comments_e"></div>
    
    
        <table>
            <caption>Fats & Fatty Acids</caption>
            <thead>
                <tr><th>Fat (g)<th>Saturated fat (g)<th>Monoun. (g)<th>Polyun. (g)<th>Omega3 (mg)<th>Omega6 (mg)
            </thead>
            <tbody>
            <tr>
                     <?php
                        $i=1;
                        foreach($this->fat as $key => $value)
                        {
                            echo "<td class='f{$i}' data-type='f' data-value='{$i}'>" . $value;
                                $i++;
                        }
                        ?>
            </tbody>
        </table>
        <div class="comments js_comments_f"></div>
    
    
        <table>
            <caption>Vitamins</caption>
            <thead>
                <tr><th>A (mcg)<th>C (mg)<th>D (mcg)<th>E (mg)<th>K (mcg)<th>B1 (mg)<th>B2 (mg)<th>B3 (mg)<th>B6 (mg)<th>B9 (mcg)<th>B12 (mcg)<th>B5 (mg)<th>Choline (mg)<th>Betaine (mg)
            </thead>
            <tbody>
                <tr>
                    <?php
                        $i=1;
                        foreach($this->vitamins as $key => $value)
                        {
                            echo "<td class='v{$i}' data-type='v' data-value='{$i}'>" . $value;
                                $i++;
                        }
                        ?>
            </tbody>
        </table>
        <div class="comments js_comments_v"></div>
    
    
        <table>
            <caption>Minerals</caption>
            <thead>
                <tr><th>Calcium (mg)<th>Iron (mg)<th>Magnesium (mg)<th>Phosphorus (mg)<th>Potassium (mg)<th>Sodium (mg)<th>Zinc (mg)<th>Copper (mg)<th>Manganese (mg)<th>Selenium (mcg)<th>Fluoride (mcg)
            </thead>
            <tbody>
                <tr>
                    <?php
                        $i=1;
                        foreach($this->minerals as $key => $value)
                        {
                            echo "<td class='m{$i}' data-type='m' data-value='{$i}'> " . $value;
                                $i++;
                        }
                        ?>
            </tbody>
        </table>
         <div class="comments js_comments_m"></div>
    
    
        <table>
            <caption>Sterols and Other</caption>
            <thead>
                <tr><th>Cholesterol (mg)<th>Phytosterols (mg)<th>Alcohol (g)<th>Water (g)<th>Ash (g)<th>Caffeine (mg)<th>Theobromine (mg)
            </thead>
            <tbody>
                <tr>
                    <?php
                        $i=1;
                        foreach($this->sterols as $key => $value)
                        {
                            echo "<td class='s{$i}' data-type='s' data-value='{$i}'>" . $value;
                                $i++;
                        }
                        ?>
            </tbody>
            </table>
       <div class="comments js_comments_s"> </div>
       
       <div>
           <br>
           <br>
           <hr>
           <p>More calculation soon!<br></p>
       </div>