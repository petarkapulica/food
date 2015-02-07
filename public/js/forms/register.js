var Register = function(){
    
    $("#form_register").on('submit',$.proxy(this.onSubmit,this));
    $('.tandc').on('scroll', $.proxy(this.validateScroll, this));
};

Register.prototype = {
    
    status : true,
    
    onSubmit : function(event)
    {
        event.preventDefault();
        this.reset();
        this.validate();
        if(this.status){
            this.submit();
        }        
    },
    
    validate : function()
    {
        this.validateName();
        this.validateSurname();
        this.validateEmail();
        this.validateUsername();
        this.validatePassword();  
        this.validateTermsAndConditions();
        
    },
    
    reset : function()
    {
        this.status = true;
        $('.error_section').remove();
    },
    
    validateName : function()
    {
       var element = $('input[name="name"]'); 
       var condition = element.val().length > 12 || element.val().length < 2 ;
       var message = 'Name can\'t be of that size';
       ErrorForm.createError(element, condition, message, this);
    },
    
    validateSurname : function()
    {
       var element = $('input[name="surname"]'); 
       var condition = element.val().length > 14 || element.val().length < 2 ;
       var message = 'Surname can\'t be of that size';
       ErrorForm.createError(element, condition, message, this);
    },
    
    validateEmail : function()
    {
       var element = $('input[name="email"]'); 
       var condition = element.val().length > 30 || element.val().length < 5 ;
       var message = 'Email is not valid';
       ErrorForm.createError(element, condition, message, this);
    },
    
    validateUsername : function()
    {
       var element = $('input[name="newusername"]'); 
       var condition = element.val().length > 10 || element.val().length < 3 ;
       var message = 'Username length is not valid';
       ErrorForm.createError(element, condition, message, this);
    },
    
    validatePassword : function()
    {
       var element = $('input[name="newpassword"]'); 
       var condition = element.val().length > 26 || element.val().length < 8 || !/\d/.test(element.val());
       var message = 'Password is too weak(must contain number and have at least 8 chars)';
       ErrorForm.createError(element, condition, message, this);
    },
    
    validateTermsAndConditions : function()
    {
            var element = $( "input[name='agree']" ); 
            var unchecked = true;
            
            if(element.prop("checked"))
            {
               unchecked = false
            }
            
            var condition = element.prop('disabled') || unchecked;
            var message = 'Please read terms and agree';
            ErrorForm.createError(element, condition, message, this);
        
        
    },
    
    validateScroll : function()
    {
        var textarea = $('.tandc');
        var textarea_height = textarea[0].scrollHeight;
        var scroll_height = textarea_height - textarea.innerHeight();
        var scroll_top = textarea.scrollTop();
        if(scroll_top == scroll_height)
        {
            $( "input[name='agree']" ).prop('disabled', false);
        }
    },
    
    submit: function()
    {
            var self = this;
            $.post( "http://localhost/primer/registration", $("#form_register").serialize())
            .done(function( data ) { 
                var response = $.parseJSON( data );
                if(response.status)
                {
                    new Messi('You have successfully registered', {title: 'Congrats!'});
                }
                else
                {
                    var element;
                    response.message.indexOf('email') === -1 ? element = $('input[name="newusername"]') : element = $('input[name="email"]') ;
                    
                    var condition = true ;
                    var message = response.message;
                    ErrorForm.createError(element, condition, message, self);
                }                     
            });
        
    }
    
   
};

