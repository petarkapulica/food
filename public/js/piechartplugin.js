var Chart = function(user, proteins, carbs, fats, calories){
     $('#container').highcharts({
        chart: this.chart,
        title: this.getTitle(user),
        tooltip: this.tooltip,
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'diet share',
            data: [
                ['Proteins', proteins],
                ['Carbohydrates', carbs],
                {
                    name: 'Fats',
                    y: fats,
                    sliced: true,
                    selected: true
                }
            ]
        }]
    });
    
};

Chart.prototype = {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: 1,//null,
        plotShadow: false
    },
    
    getTitle : function(user)
    {
       return {text: user.username + "'s Protein Carb Fat Ratio"};
    },
    
    tooltip : 
    {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    }
};


var Ratio = function(){
    this.getUser();    
};//


Ratio.prototype = {
    
    getUser: function()
    {        
        $.ajax({
            url: "http://localhost/primer/intake/user",
            type: "POST",
            success: $.proxy(this.getRatio, this)
        });
    },
    
    getRatio: function(data){
        $.ajax({
            url: "http://localhost/primer/intake/ratio",
            type: "POST",
            success: $.proxy(this.onRatioGet, this, $.parseJSON(data).user)
        });
    },
    
    onRatioGet: function(user, data){     
        
        var response = $.parseJSON(data);         
        
        new Chart(user, response[0], response[1], response[2], response[3]);                          
    }
    
    
};

$(function(){
    new Ratio();
});
