$(document).ready(function(){
    $('#change').html(somme())
    $('input[type=checkbox]').change(function(){
        $('#change').html(somme())
    })
    $('#somme #confirm').click(function(){
        $('#form_foireux').submit();
    })
    $('.cross').click(function(e){
        e.preventDefault();
        console.log(e.target.attributes.value.nodeValue);
        $.ajax({
            url:'rem_panier.php',
            method:'POST',
            data:{'id':e.target.attributes.value.nodeValue}
        }).done(function(data){
            console.log(data);
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
    $.each($('input[type=checkbox]'),function(a,b){
        if($(this).is(':checked')){
            ret+=parseInt($('.s_prix')[a].textContent);
            tot++;
        }
    })  
    return '<p><span id="nbr">'+tot+'</span> Articles sélectionnés : <span id="ret">'+ret+'</span>€</p>';
}