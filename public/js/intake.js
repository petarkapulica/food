var intake = function(){
    this.initSelectors();       
};

intake.prototype = {
    
    appendCount : 1,
    
    status : true,
    
    reset : function()
    {
       this.status = true;
       $('.error_section').remove();
    },
    
    initSelectors: function()
    {   
        $("#intakeA").off('submit').on('submit', $.proxy(this.onSubmit, this)); 
        $('.add_food_button').off('click').on('click', $.proxy(this.onAddClick, this)); //za dodavanje hrane
    
        $('.mass_slider').off('click').on('mousemove',$.proxy(this.onSlide, this));  //  za slajder za
        $('.mass_slider').off('click').on('click',$.proxy(this.onSlide, this));      //  gramazu hrane

        $('.food_types_selector').off('click').on('click',$.proxy(this.onListClick, this));       //  za izbor vrste hrane
    },
    
    onAddClick : function(event)
    {
        var parent =  this.getParent(event.currentTarget);
        if(this.appendCount<21 && $(parent).find('.food_sorts_selector').val() != null)
        {       
            this.appendCount++;
            var clone =  $(parent).clone();
            $('.position_food',clone).text(this.appendCount);
            $('.add_food_button').remove();
            $( ".table1 > tbody" ).append(this.resetClone(clone));
            this.initSelectors();
        }
    },
    
    onSubmit: function(event)
    {
        event.preventDefault();
        this.reset();
        this.validate();
        if(this.status)
        {
            this.submit();
        }
    },
    
    submit : function()
    {
        var self = this;
        var arr = [];
        $.each($(".food_sorts_selector"), function( index, element ) {
          var massValue = $(".mass_value",self.getParent(element)).val();
          var foodId = $(element).val();
          arr.push({
             foodId: foodId,
             value: massValue
          });
        });
       
        $.ajax({
            url: "http://localhost/primer/intake/calculate",
            type: "POST",
            data: {data:arr}
        }).done($.proxy(this.onCalculate,this)); 
    },
    
    onCalculate: function(data)
    {
        location.href= "http://localhost/primer/intake/yourintake";
    },
    
    resetClone: function(clone)
    {
        $('.food_types_selector', clone).val('');        
        $('.food_sorts_selector', clone).find('option').remove();
        $('.mass_slider',clone).val(0);
        $('.mass_value', clone).val(0);
        return clone;
      
    },
    
    onSlide : function(event)
    {
        var parent = this.getParent(event.currentTarget);
        var grams = $('.mass_slider',parent).val();
        $('.mass_value', parent).val(grams);
        
    },
    
    getParent: function(element)
    {
        return $( element ).parent().parent();
    },
    
    onListClick : function(event)
    {   
        var parent = this.getParent(event.currentTarget);
        $('.food_sorts_selector', parent).html('');
        debugger;
        $.ajax({
                url: "http://localhost/primer/intake/type",
                type: "POST",
                success: $.proxy(this.onSuccess,this, parent)
            }); 
    },
    
    onSuccess : function(parent, data)
    {          
        var foodType = $('.food_types_selector', parent).val();
        var response = $.parseJSON(data);
        debugger;
        $.each(response, function(key, value)
        {  
            if(value.type == foodType)
            {
                $('.food_sorts_selector', parent).append('<option value="' + value.id + '">' + value.name + '</option>');
            }
            
        });
    },
    
    validate : function()
    {
        this.validateEightFields();
        this.validateBlank();
    },
    
    validateEightFields : function()
    {
       var element = $('.register-button'); 
       var condition = $('.table1 tr').length < 9;
       var message = 'Please select at least 8 intakes';
       ErrorForm.createError(element, condition, message, this);
    },
    
    validateBlank : function()
    {
       var arr = $('.mass_value').serializeArray();
       var self = this;
       
       $.each(arr, function(key, element) {
            var element = $('.register-button'); 
            var condition = this.value == 0 ;
            var message = 'Food ammount cant be zero';
            ErrorForm.createError(element, condition, message, self);
            if(condition)
            {
                return false;
            }
        });
    }
    
};





$(document).ready(function(){
    
    new intake();
    
});

