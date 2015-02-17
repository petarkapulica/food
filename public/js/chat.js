var chat = function(){
    
    $('#newMessageContent').on('click', $.proxy(this.onClickContent ,this));
    $('#newMessageSend').on('click', $.proxy(this.onClickMessage, this));
    $('#newMessageContent').on('keypress', $.proxy(this.onKeyPress ,this));
    
    this.getChatMessages();
};

chat.prototype = {
    
    status : true,
    
    onClickContent : function()
    {
        $('#newMessageContent').text("");
    },
    
    onClickMessage : function()
    {
        
        this.reset();
        this.validateMessage();
        
                        // var self = this;  seljacka metoda
       if(this.status)
       {
            $.ajax({
                url: "http://localhost/primer/chat/insert",
                type: "POST",
                data:  'message=' + $('#newMessageContent').val(),
                success: $.proxy(this.onSuccess,this)
            }); 
            
            $.ajax({
                url: "http://localhost/primer/chat/getuser",
                type: "POST",
                success: $.proxy(this.checkFlood,this)
            }); 
        }
    },
    
    onSuccess : function(data)
    {
        var response = $.parseJSON(data);
        $('.main').html("");
        
        $.each(response, function(key, value)
            {
            var username = value.username;
            
            var epochTime = value.time;                     
            var convertedTime = new Date(1000*epochTime);
            var minutes = convertedTime.getMinutes();
            var hours = convertedTime.getHours();
           
            var message = value.message + '<br>';
            
            $('.main').append( '<strong>' + username + '</strong>'  + ': ' + ' (' + hours + ":" + minutes + ')' + " " + message );
            
            });
            
        this.setHeightToLastMessage();
        $('#newMessageContent').val('');
    },
    
    checkFlood : function(data)
    {
       var response = $.parseJSON(data);
       var userMessagesCounter = response.length;
       
          var element = $('#newMessageContent'); 
          var condition = userMessagesCounter > 5;
          var message = "Stop flooding or risk being banned";
          ErrorForm.createError(element, condition, message, this);
    },
    
    onKeyPress : function(event) {
        if( event.which == 13 )
        {
            event.preventDefault();
            if($('.check_enter').prop("checked"))
            {
                this.onClickMessage();
            }
        }
    },
    
    validateMessage : function()
    {
        var swear = ['ass','shit'];
        
          var userMessage = $('#newMessageContent');
          var userMessageArray = userMessage.val().toLowerCase().split(' ');
          var found = false;
              for(var i=0;i<userMessageArray.length;i++)
              {
                  if (swear.indexOf(userMessageArray[i]) > -1) 
                  {
                    found = true;
                    break;
                  }
              }
          
          var element = userMessage; 
          var condition = found;
          var message = "Don't speak nasty";
          ErrorForm.createError(element, condition, message, this);
    },
    
    setHeightToLastMessage : function()
    {
        $('.main').prop({ scrollTop: $('.main').prop('scrollHeight') });
    },
    
    getChatMessages : function()
    {
        $.ajax({
            url: "http://localhost/primer/chat/get",
            type: "POST",
            success: $.proxy(this.onSuccess,this)
        }); 
    },
    
    reset : function()
    {
        this.status = true;
        $('.error_section').remove();
    }
    
};




$(document).ready(function(){
   
    new chat();
    
});