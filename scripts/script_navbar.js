$(document).ready(function(){
    $('#loupe').click(function(e){
        if(!$('#search input').is(':visible')){
            e.preventDefault();
            $('#search button').css({'position':'absolute','margin':'0px','top':'30px','right':'20px','display':'none'});
            $('#buyke').animate({opacity:'hide'},function(){
                $('#search button').animate({width:'show'},700);
                $('#search input').animate({width:'show'},700,function(){
                    $('#search input').focus();
                });
            })
        }
    })
    $('#img_burger').click(function(e){
        if($('#burger').is(':visible')){
            $('#nav').css({'position':'fixed'});
        }else{
            $('#nav').css({'position':'relative'});    
            $('#block').css({'height':'90px'});
        }
        $('#burger').animate({opacity:'toggle'},{start:function(){
            $('#burger a').hide();        
        },complete:function(){
            $('#burger_content').animate({width:'toggle !important'},700,function(){
                $('#burger a').animate({width:'show'});
            }) 
        }});
        if($('#burger').is(':visible')){
            $('#nav').css({'position':'fixed'});
        }else{
            $('#nav').css({'position':'relative'});        
        }
    })
    $(window).click(function(e){
        if(e.target == document.getElementById('burger')){
            $('#burger').hide();
        }
    })  
})