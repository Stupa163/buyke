$(document).ready(function(){
    $('#somme').html(somme()+'€')
    $('input[type=checkbox]').change(function(){
        $('#somme').html(somme()+'€')
    })
})
function somme(){
    var ret=0;
    $.each($('input[type=checkbox]'),function(a,b){
        if($(this).is(':checked')){
            ret+=parseInt($('.s_prix')[a].textContent);
        }
    })  
    return ret;
}