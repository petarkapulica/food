
var Login = function(){

    $("#form_login").on('submit',$.proxy(this.onSubmit,this));

};

Login.prototype = {

    status : true,

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

    validate: function()
    {
       this.validateUsername();
       this.validatePassword();
       
    },

    reset: function()
    {
        this.status = true;
        $('.error_section').remove();
    },
    
    submit : function()
    {
       var self = this;
       var params = $("#form_login").serialize();
       $.post( "http://localhost/primer/login", params)
            .done(function( data ) {    
                var response = $.parseJSON( data );
                if(response.status)
                {
                    window.location.href = "http://localhost/primer/welcome";
                }
                else
                {
                    var element = $('input[name="logusername"]'); 
                    var condition = true ;
                    
                    ErrorForm.createError(element, condition, response.message, self);
                }      
            });
    },
    
    validateUsername : function()
    {
       var element = $('input[name="logusername"]'); 
       var condition = element.val().length < 3;
       var message = 'Please enter valid username';
       ErrorForm.createError(element, condition, message, this);
    },
    
    validatePassword : function()
    {
       var element = $('input[name="logpassword"]'); 
       var condition = element.val().length < 1;
       var message = 'Please enter valid password';
       ErrorForm.createError(element, condition, message, this);
    }

};