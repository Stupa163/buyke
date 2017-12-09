$("#loupe").click(function(e){
    if(!$("#search input").is(':visible')){
        e.preventDefault();
        $('#buyke').animate({opacity:'hide'},function(){
            $('#search input').animate({width:'show'},700);
        })
    }
})