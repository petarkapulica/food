var foodExamine = function()
{
    this.getUserData();
};

foodExamine.prototype = {
    
    checkNutrition : function()
    {
        this.checkProtein();
        this.checkCarb();
        this.checkFiber();
        this.checkSugar();
        this.checkFat();
        this.checkSatFat();
        this.checkVitA();
        this.checkVitC();
        this.checkVitD();
        this.checkVitE();
        this.checkVitK();
        this.checkVitB1();
        this.checkVitB2();
        this.checkVitB3();
        this.checkVitB6();
        this.checkVitB9();
        this.checkVitB12();
        this.checkVitB5();
        this.checkCholesterol();
        this.checkWater();
        this.checkCalcium();
        this.checkIron();
        this.checkMagnesium();
        this.checkPhosphorus();
        this.checkPotassium();
        this.checkSodium();
        this.checkZinc();
        this.checkCopper();
        this.checkManganese();
        this.checkSelenium();
        this.checkFluoride();
    },
    
    checkProtein : function()
    {
        var element = $(".e1");
        var mass = parseInt($('.user_table li:nth-child(2)').text().replace ( /[^\d.]/g, '' ));
        var conditionHigh = mass * 2.1;
        var conditionLow = mass * 0.7;
        var messageHigh = 'Your protein intake is more than 2.1 grams per body mass kg.  \
                Extreme protein intake, coupled with inadequate intake of other calorie sources (fat or carbohydrates), \
                can cause a form of metabolic disturbance. Although some testing shows that the body will absorb and use a greater amount \
                of protein after "bodybuilding" type exercises than under more sedentary circumstances, and some studies on weight training \
                show clinically significant gains in muscle with a very high protein diet when compared to more moderate intake, \
                in some studies increased protein intake fails to translate into functional differences in strength or muscle size.';
        var messageLow = 'Your protein intake is too low. Consistently consuming less protein than an individual\'s body requires \
                (approximately 0.7g/kg/day for a sedentary individual) causes loss of existing lean body mass, even with an excessively \
                caloric diet.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
         },
    
    checkCarb : function()
    {
        var element = $(".e2");
        var calories = parseInt($('.calories').text().replace ( /[^\d.]/g, '' ));
        var conditionHigh = calories*0.15 ;
        var conditionLow = 0;
        var messageHigh = '<br>Your daily intake of carbs is over general requirement of 300 grams\
                    of carbohydrates per 2000 kcal diet.Athletes require more carbs to replace muscle glycogen lost during physical training;\
                     some athletes need up to 70 percent of their calorie intake from carbs.';
        var messageLow = null;
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkFiber : function()
    {
        var element = $(".e3");
        var conditionHigh = 36;
        var conditionLow = 20;
        var messageHigh = '<br>Your fiber intake is too high. A disadvantage of a diet high\
                    in fiber is the potential for significant intestinal gas production and bloating. Constipation can occur if insufficient \
                    fluid is consumed with a high-fiber diet.';
        var messageLow = '<br>Your fiber intake is low. A lack of dietary fiber may cause\
                    constipation. Fiber absorbs water and swells, providing bulk inside your digestive tract. This helps to keep everything \n\
                    soft and moving easily through your body. Be sure to drink plenty of fluids when increasing your fiber intake; otherwise, \
                    constipation may become worse.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkSugar : function()
    {
        var element = $(".e5");
        var calories = parseInt($('.calories').text().replace ( /[^\d.]/g, '' ));
        var conditionHigh = calories * 0.08 / 4 ;
        var conditionLow = 0;
        var messageHigh = '<br>Your sugar intake ratio is too high. Since the latter part of the\
                    twentieth century, it has been questioned whether a diet high in sugars, especially refined sugars, is good for human\
                    health. Sugar has been linked to obesity, and suspected of, or fully implicated as a cause in the occurrence of diabetes,\
                    cardiovascular disease, dementia, macular degeneration, and tooth decay. Numerous studies have been undertaken to try\
                    to clarify the position, but with varying results, mainly because of the difficulty of finding populations for use as\
                    controls that do not consume, or are largely free of any sugar consumption.';
        var messageLow = null;
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkFat : function()
    {
        var element = $(".f1");
        var calories = parseInt($('.calories').text().replace ( /[^\d.]/g, '' ));
        var need = parseInt($('.user_table li:nth-child(4)').text().replace ( /[^\d.]/g, '' ));
        var conditionHigh = need * 0.3 / 9 ;
        var conditionLow = calories * 0.14 / 9 ;
        var messageHigh = 'Your fat intake is too high. This can lead to heart diseases, constipation, slow metabolism, weight gain etc.';
        var messageLow = 'Your fat intake is too low. This can lead to poor vitamin absorption\
                          , increased cancer risk, high cholesterol and heart disease, imbalance of nutrients, overeating etc.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkSatFat : function()
    {
        var element = $(".f2");
        var conditionHigh = 30;
        var conditionLow = 0;
        var messageHigh = ' According to the American Heart Association, a diet high in saturated\
                        fat can dramatically raise your cholesterol, increasing your risk of heart disease. The AHA recommends limiting your \
                        total fat intake to between 25 to 35 percent of total calories with only 7 percent coming by way of saturated fats.\
                        This one is tricky. Saturated fat has been a staple part of the human diet for thousands of years and yet only recently\
                        has it turned bad,or so they say. In reality, saturated fat isn not as bad as it has been portrayed; most of this \
                        negative publicity is profit motivated. ';
        var messageLow = null;
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitA : function()
    {
        var element = $(".v1"); 
        var conditionHigh = 2000;
        var conditionLow = 600;
        var messageHigh = 'Vitamin A intake is too high. Doses >9000mg can cause dry, scaly \
                           skin, fatigue, nausea, loss of appetite, bone and joint pains and headaches.';
        var messageLow = 'Vitamin A intake is too low. Food rich in vitamin A are Liver Red,\
                            Pepper, Sweet Potatoes, Carrots, Dark Leafy Greens, Dried Herbs, Lettuce, Dried Apricots, Cantaloupe.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
     checkVitC : function()
    {
        var element = $(".v2"); 
        var conditionHigh = 2000;
        var conditionLow = 75;
        var messageHigh = '<br>Your vitamin C intake is too high TUL=2000m. Yet, no impacts of over dose have been proven so far.';
        var messageLow = '<br>Vitamin C intake is too low. Food rich in vitamin C are Red and Green Hot Chili Peppers, Guavas, Bell Peppers,\
                    Fresh Herbs (Thyme and Parsley),Dark Leafy Greens (Kale, Mustard Greens, Garden Cress), Broccoli, Cauliflower,\
                    Brussels Sprouts, Kiwi Fruits (Chinese Gooseberries), Papayas (aka: Lechoza, Mamão, Pawpaw), Oranges and \
                    Clementines (Tangerines), Strawberries.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitD : function()
    {
        var element = $(".v3");
        var conditionHigh = 10;
        var conditionLow = 5;
        var messageHigh = '<br> Your vitamin D intake is too high. Large doses (>50 µg) obtained from food can cause eating problems \
                            and ultimately disorientation, coma and death.';
        var messageLow = '<br>Your vitamin D intake is too low. Fodds rich in vitamin D are Milk, Cereal, Salmon, Eggs, Orange Juice.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitE : function()
    {
        var element = $(".v4");
        var conditionHigh = 20;
        var conditionLow = 14;
        var messageHigh = '<br>Your vitamin E intake is high. Doses larger than 1000 mg cause blood clotting, which results in \
                            increased likelihood of haemorrhage in some individuals.';
        var messageLow = '<br>Your vitamin E intake is too low. Fodds rich in vitamin E are Sunflower Seeds, Paprika and Red Chili Powder,\
                             Almonds, Pine Nuts, Peanuts, Dried Herbs (Basil And Oregano), Dried Apricots, Pickled Green Olives, \
                              Cooked spinach, Coocked Taro Root.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitK : function()
    {
        var element = $(".v5");
        var conditionHigh = 120;
        var conditionLow = 80;
        var messageHigh = '<br>Your vitamin K intake is high. Large doses of one form of vitamin K (menadione or K3) may result\
                                 in liver damage or anaemia.';
        var messageLow = '<br>Your vitamin K intake is too low. Fodds rich in vitamin K are SHerbs (Dried and Fresh), Dark Leafy Greens,\
                             Spring Onions (Scallions), Brussels Sprouts, Broccoli, Chili Powder, Curry, Paprika, and Cayenne, Asparagus,\
                             Cabbage, Pickled Cucumber, Prunes.';        
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitB1 : function()
    {
        var element = $(".v6");
        var conditionHigh = 10;
        var conditionLow = 1.2;
        var messageHigh = '<br>Your vitamin B1 intake is high.';
        var messageLow = '<br>Your vitamin B1 intake is too low. Fodds rich in vitamin B1 are Yellowfin Tuna, Beans, Cooked Corn, \
                            Brussels,  Sprouts, Nuts, Breakfast Cereals, Veggie Products.';        
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitB2 : function()
    {
        var element = $(".v7");
        var conditionHigh = 10;
        var conditionLow = 1.4;
        var messageHigh = '<br>Your vitamin B2 intake is high. Doses higher than 200 mg may cause urine colour alteration';
        var messageLow = '<br>Your vitamin B2 intake is too low. Fodds rich in vitamin B2 are Mushrooms, Meats, Spinach,\
                             Milk, Soybeans, Nuts, Eggs. ';        
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitB3 : function()
    {
        var element = $(".v8");
        var conditionHigh = 25;
        var conditionLow = 16;
        var messageHigh = '<br>Your vitamin B3 intake is high. Doses larger than 150 mg may cause problems ranging from facial flushing to liver disease.';
        var messageLow = '<br>Your vitamin B3 intake is too low. Fodds rich in vitamin B3 are Roasted chicken breast, Tuna, Salmon,\
                            Liver, Halibut, Lamb, Deer meat (venison), Roasted turkey breast, Mushrooms, Beef tenderloin.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitB6 : function()
    {
        var element = $(".v9");
        var conditionHigh = 10;
        var conditionLow = 1.4;
        var messageHigh = '<br>Your vitamin B6 intake is high. Doses larger than 100 mg may cause numbness and tingling in hands and feet';
        var messageLow = '<br>Your vitamin B6 intake is too low. Fodds rich in vitamin B6 are Meat, Fish, Vegetables(Bell peppers, spinach,\
                            green peas, yams, broccoli, asparagus and turnip greens), Nuts and Seeds, Wholegrains, Beans, Legumes.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitB9 : function()
    {
        var element = $(".v10");
        var conditionHigh = 600;
        var conditionLow = 350;
        var messageHigh = '<br>Your vitamin B9 intake is high.';
        var messageLow = '<br>Your vitamin B9 intake is too low. Fodds rich in vitamin B9 are Beans and Legumes\
                        spinach, asparagus, kale, broccoli, boy choy, beets and mustard greens.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitB12 : function()
    {
        var element = $(".v11");
        var conditionHigh = 100;
        var conditionLow = 3;
        var messageHigh = '<br>Your vitamin B12 intake is high. Doses larger than 3000 µg may cause eye conditions.';
        var messageLow = '<br>Your vitamin B12 intake is too low. Fodds rich in vitamin B12 are Clams, Oysters, and Mussels Liver Caviar\
                    (Fish Eggs) Octopus Fish Crab and Lobster Beef Lamb (Mutton) Cheese Eggs.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkVitB5 : function()
    {
        var element = $(".v12");
        var conditionHigh = 10;
        var conditionLow = 5;
        var messageHigh = '<br>Your vitamin B5 intake is high. Dose should not exceed 1200 mg; this may cause nausea and heartburn.';
        var messageLow = '<br>Your vitamin B5 intake is too low. Fodds rich in vitamin B5 are Liver,Rice, Sunflower Seeds,  Whey Powder, \
                            Mushrooms, Caviar , Cheese, Sun-dried Tomatoes, Fish, Avocados.';
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkCholesterol : function()
    {
        var element = $(".s1");
        var conditionHigh = 300;
        var conditionLow = 0;
        var messageHigh = '<br>Your cholesterol intake exceeds rda limit of 300g.';
        var messageLow = null;
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkWater : function()
    {
        var element = $(".s4");
        var conditionHigh = 10000;
        var conditionLow = 3000;
        var messageHigh = null;
        var messageLow = "Your water intake is too low.";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkCalcium : function()
    {
        var element = $(".m1");
        var conditionHigh = 2000;
        var conditionLow = 1000;
        var messageHigh = "Your calcium intake is too high.";
        var messageLow = "Your calcium intake is too low. Foods rich in calcium are Dried herbs, Cheese, Tofu, Almonds, Yogurt, Milk, Greens.";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkIron : function()
    {
        var element = $(".m2");
        var conditionHigh = 45;
        var conditionLow = 15;
        var messageHigh = "<br>Your iron intake is too high. Larger doses may cause stomach upset, constipation and blackened stools.";
        var messageLow = "<br>Your iron intake is too low. Foods rich in iron are Red meat, Egg yolks, Dark, leafy greens (spinach, collards),\
                        Dried fruit (prunes, raisins),  Iron-enriched cereals and grains(check the labels),  Mollusks (oysters,clams, scallops),\
                        Turkey or chicken giblets, Beans, lentils, chick peas and soybeans Liver Artichokes.";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkMagnesium : function()
    {
        var element = $(".m3");
        var conditionHigh = 750;
        var conditionLow = 320;
        var messageHigh = "<br>Your magnesium intake is too high. Doses larger than 400 mg may cause stomach problems and diarrhoea.";
        var messageLow = "<br>Your magnesium intake is too low. Foods rich in magnesium are Beans, Broccoli, Halibut Nuts, peanuts  Okra,\
                            frozen Oysters, Plantain, Rockfish, ScallopSeeds, pumpkin and squash, Soy milk, Spinach, cooked Tofu .";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkPhosphorus : function()
    {
        var element = $(".m4");
        var conditionHigh = 4000;
        var conditionLow = 700;
        var messageHigh = "<br>Your phosphorus intake is too high.";
        var messageLow = "<br>Your phosphorus intake is too low. Foods rich in phosphorus are Whole Wheat and Bran Mixes, Cottage Cheese \
                                or Cheddar, Peanut Butter, Corn, Broccoli,  Chicken and Turkey, Sunflower Seeds , Garlic,  Legumes and Nuts. ";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkPotassium : function()
    {
        var element = $(".m5");
        var conditionHigh = 5000;
        var conditionLow = 4000;
        var messageHigh = "<br>Your potassium intake is too high.";
        var messageLow = "<br>Your potassium intake is too low. Foods rich in potassium are Banana, Spinach, Tomato. ";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
     checkSodium : function()
    {
        var element = $(".m6");
        var conditionHigh = 2300;
        var conditionLow = 1000;
        var messageHigh = "<br>Your sodium intake is too high.";
        var messageLow = "<br>Your sodium intake is too low.";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkZinc : function()
    {
        var element = $(".m7");
        var conditionHigh = 30;
        var conditionLow = 12;
        var messageHigh = "<br>Your zinc intake is too high. Doses larger than 25 mg may cause anaemia and copper deficiency.";
        var messageLow = "<br>Your zinc intake is too low. Foods rich in zinc are Meats, Nuts and Seeds, Cereals, Shellfish.";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkCopper : function()
    {
        var element = $(".m8");
        var conditionHigh = 3;
        var conditionLow = 1;
        var messageHigh = "<br>Your copper intake is too high. 10 mg of copper can have a toxic effect.";
        var messageLow = "<br>Your copper intake is too low. Foods rich in copper are Liver, Oysters, Sesame Seeds and Tahini(Sesame Butter),\
                        Cocoa Powder and Chocolate, Nuts , Calamari and Lobster, Sunflower Seeds, Sun Dried Tomatoes, Roasted Pumpkin and \
                        Squash Seeds, Dried Herbs.";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkManganese : function()
    {
        var element = $(".m9");
        var conditionHigh = 5;
        var conditionLow = 2;
        var messageHigh = "<br>Your manganese intake is too high. Excess manganese may hinder iron adsorption.";
        var messageLow = "<br>Your manganese intake is too low. Foods rich in manganese are Rice Bran, Oat Bran, Cloves and Saffron, \
                            NutsMussels, Oysters, and Clams, Cocoa Powder and Dark Chocolate, Roasted Pumpkin and Squash Seeds Flax, \
                            Sesame Seeds, and Sesame Butter, Chili Powder, Roasted Soybeans, Sunflower Seeds.";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    checkSelenium : function()
    {
        var element = $(".m10");
        var conditionHigh = 200;
        var conditionLow = 55;
        var messageHigh = "<br>Your selenium intake is too high. Doses larger than 200 µg can be toxic.";
        var messageLow = "<br>Foods rich in selenium are Brazil Nuts, Sunflower Seeds, Fish (tuna, halibut, sardines, flounder, salmon)\
                            , Shellfish (oysters, mussels, shrimp, clams, scallops), Meat (Beef, liver, lamb, pork),\
                            Poultry (chicken, turkey), Eggs, Mushrooms (button, crimini, shiitake), Grains (wheat germ, barley, brown rice, oats). \
                            Onions.";
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
     checkFluoride : function()
    {
        var element = $(".m11");
        var conditionHigh = 4000;
        var conditionLow = 0;
        var messageHigh = "<br>Your fluoride intake is too high. The condition of 'fluorosis' or excessive deposition of fluoride in bones,\
                            with associated skeleton deformities, is only present after prolonged consumption of 20 to 80 milligrams of \
                            fluoride per day.";
        var messageLow = null;
        Validator.validate(element, conditionHigh, conditionLow, messageHigh, messageLow);
    },
    
    getUserData : function()
    {
        $.ajax({
            url: "http://localhost/primer/need/data",
            type: "POST",
            dataType: 'json',
            success: $.proxy(this.onSuccess,this)
        });
    },
    
    onSuccess : function(data)
    {
        var response = data;
        
        var height = response.height;
        $('.user_table li:nth-child(1)').html('height: ' + height + ' cm');
        
        var weight = response.weight;
        $('.user_table li:nth-child(2)').html('weight: ' + weight + ' kg');
        
        var age = response.age;
        $('.user_table li:nth-child(3)').html('age: ' + age );
        
        var need = response.need;
        $('.user_table li:nth-child(4)').html('need: ' + need + ' kcal');
        
        this.checkNutrition();
    }
    
};

var Validator = {
    
    validate : function(element, conditionHigh, conditionLow, messageHigh, messageLow )
    {        
        var elementVal = parseInt(element.text());
        
        if(elementVal > conditionHigh)
        {   
            Error.addError(element, messageHigh);
        }
        else if(elementVal < conditionLow)
        {
           Error.addError(element, messageLow);
        }        
    }
    
    
};

var Error = {
    
    addError : function(element, message)
    {
        element.css("background-color", "red");
        element.closest("div").find('.js_comments_' + element.attr('data-type')).append(message);
    }
    
};




$(document).ready(function(){
    new foodExamine();
});
