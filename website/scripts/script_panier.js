let prod;
$(document).ready(function(){
    $('#change').html(somme())
    $('input[type=checkbox]').change(function(){
        $('#change').html(somme())
    })
    $('#somme #confirm').click(function(){
        (prod)?$('#form_foireux').submit():null;
    })
    $('#somme #confirm').mouseenter(function(){
        (prod)?$(this).css({'cursor':'pointer'}):$(this).css({'cursor':'not-allowed'});
    })
    $('.cross').click(function(e){
        e.preventDefault();
        $.ajax({
            url:'rem_panier.php',
            method:'POST',
            data:{'id':e.target.attributes.value.nodeValue}
        }).done(function(data){
            $.ajax({
                url:'pre_disp_annonce.php',
                method:'POST',
            }).done(function(data2){
                $('#pour_ann').html(data2);
                $('#change').html(somme())
            })
        })
    })
})
function somme(){
    var ret=0;
    var tot=0;
    prod=false;
    $.each($('input[type=checkbox]'),function(a,b){
        if($(this).is(':checked')){
            ret+=parseInt($('.s_prix')[a].textContent);
            tot++;
            prod=true;
        }
    }) 
    if(!prod){
        $('#confirm').css({'background-color':'lightgray','color':'grey'})
    }else{
        $('#confirm').css({'background-color':'grey','color':'black'})
    }
    return '<p><span id="nbr">'+tot+'</span> Article'+((tot>1)?'s':'')+' sélectionné'+((tot>1)?'s':'')+' : <span id="ret">'+ret+'</span>€</p>';
}