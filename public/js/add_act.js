var selectActivity = function(){
    $('#add').on('click', $.proxy(this.onAddClick, this));
    $('.remove_act').on('click', $.proxy(this.onRemove, this));
    $("#submit_spent").on('click',$.proxy(this.onSubmit,this));
};




selectActivity.prototype = {
    
    status : true,
    
    reset : function()
    {
       this.status = true;
       $('.error_section').remove();
    },
    
    onAddClick: function()
    {
        var val = $.trim($('#select_act').val());
        var text = $.trim($('#select_act option:selected').text());
        $('#select_act option:selected').remove();        
        $( "#form_spent" ).prepend( this.createInput(val, text) );
    },
    
    createInput: function(val, text)
    {
        var inpt = '<div>';
        inpt += text+'<br>'+'<input type="text" name="'+val+'" />';
        inpt += '<span>hours</span>';
        inpt += '</div>';
        return inpt;
    },
    
    onRemove : function(event)
    {
         var id = $(event.currentTarget).parent().find('input[type=text]').attr('name');
         var text = $.trim($(event.currentTarget).parent().find('.act_text').text());
         $(event.currentTarget).parent().remove();
         
         $('#select_act').prepend('<option value="'+ id +'" selected="selected">'+text+'</option>');
    },
    
    onSubmit : function(event)
    {
        event.preventDefault();
        this.reset();
        this.validate();
        if(this.status)
        {
            this.submit();
        }
    },
    
    validate : function()
    { 
       var arr = $('.input_act').serializeArray();
       var self = this;
       
       $.each(arr, function(key, element) {
            var element = $( "input[name=" + this.name + ']' );
            var condition = this.value > 12  || isNaN(this.value) ;
            var message = 'Invalid data';
            ErrorForm.createError(element, condition, message, self);
        });
    },
    
    submit : function()
    {
        $.post( "http://localhost/primer/spent/data", $("#form_spent").serialize()).done(function (data){
            $('.outPopUp2').fadeOut('slow',function(){
            $('.outPopUp2').css('border','6px solid fuchsia').fadeIn('slow').text(data + ' CALORIES SPENT!');
            });
        });
    }
    
    
};



$(document).ready(function(){
    
   new selectActivity();
   
   
});