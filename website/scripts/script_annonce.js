$(document).ready(function(){
    if($('#titre').text().length>0&&$('#titre').text().length<25){
        null;
    }else if($('#titre').text().length>=25&&$('#titre').text().length<50){
        $('#titre').css({'font-size':'30px','padding-left':'15%'});
    }else if($('#titre').text().length>=50&&$('#titre').text().length<75){
        $('#titre').css({'font-size':'22px','padding-left':'5%'});
    }else{
        $('#titre').css({'font-size':'17px','padding-left':'0'});
    }
    $('#panier').submit(function(e){
        e.preventDefault();
        $.ajax({
            url:'ajout_panier.php',
            method:'POST',
            data:$(this).serialize()
        }).done(function(data){
            console.log(data); 
            if(data=='pas_co'){
                $('#erreur').html('Vous n\'êtes pas connecté');
            }else{
                window.location.replace('panier.php');
            }
        })
    })
})