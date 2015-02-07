var Redirector = {
    
     redirect : function()
    {
       $.ajax({
                url: "http://localhost/primer/need/data",
                success: $.proxy(this.onSuccess,this)
            }); 
    },
    
    onSuccess : function(data)
    {
        var details = $.parseJSON(data);
        if(!details)
        {
            alert('Please first provide details');
            location.href = "http://localhost/primer/need";
        }
    }
    
};

$(document).ready(function(){
    
    if (window.location.pathname == '/primer/spent' || window.location.pathname == '/primer/intake' || window.location.pathname == "/primer/intake/yourintake") {
            
       Redirector.redirect();
   }
    
});
