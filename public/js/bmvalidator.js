var ValidateNeed = function(){

    $("#calculate input[type=text]").on('keyup',$.proxy(this.onKeyUp,this));
    $("#submit_need").on('click',$.proxy(this.onSubmit,this));
  
};

ValidateNeed.prototype = {
    
    status : true,
    
    onKeyUp : function()
    {
        this.reset();
        this.validate();
    },
    
     reset : function()
    {
       this.status = true;
       $('.error_section').remove();
    },
    
    validate : function()
    {
       this.validateHeight();
       this.validateWeight();
       this.validateAge();
    },
    
    validateHeight : function()
    {
       var element = $('input[name="height"]'); 
       var condition = element.val() > 250  || isNaN(element.val()) ;
       var message = 'Height is not valid';
       ErrorForm.createError(element, condition, message, this);
    },
    
    validateWeight : function()
    {
       var element = $('input[name="weight"]'); 
       var condition = element.val().length > 3 || isNaN(element.val()) ;
       var message = 'Weight is not valid';
       ErrorForm.createError(element, condition, message, this);
    },
    
    validateAge : function()
    {
       var element = $('input[name="age"]'); 
       var condition = element.val().length > 2 || isNaN(element.val()) ;
       var message = 'Age is not valid';
       ErrorForm.createError(element, condition, message, this);
    },
    
    validateBlank : function()
    {
        if($('input[name="height"]').val() <= 0 || $('input[name="weight"]').val() <= 0 || $('input[name="age"]').val() <= 0 )
        {
            this.status = false;
        }
    },
    
    onSubmit : function(event)
    {
        this.reset();
        this.validate();
        this.validateBlank();
        if(!this.status){
        ErrorForm.createError($('input[id="submit_need"]'), true, 'Provide valid data', this);}
        event.preventDefault();
        if(this.status)
        {
            this.submit();
        }
    },
    
    submit : function()
    {
        $.post( "http://localhost/primer/need/do", $("#calculate").serialize()).done(function (data){
        var response = $.parseJSON( data );
        var need = response[7];
            $('.outPopUp').fadeOut('slow',function(){
            $('.outPopUp').css('border','6px solid fuchsia').fadeIn('slow').text(need + ' CALORIES NEEDED!');
            });
        });
    }
    
};


$(document).ready(function(){
    
    new ValidateNeed();
    
});
