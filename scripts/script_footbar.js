$('#foot ul').click(function(e){
    if($(window).width() <= 805){
        $('#foot ul li').css({'display':'none'});
        $(e.delegateTarget.children[1]).css({'border':'none'});
        $(e.delegateTarget.children).each(function(a,b){
            (b.localName=='li')?$(b).css({'display':'inline'}):null;
        })
    }
})