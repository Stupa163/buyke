$(document).ready(function(){
    var haut=($('#photo').width()<$('#photo img').width())?(($('#photo').width()*$('#photo img').height())/$('#photo img').width()):$('#photo img').height();
    haut=(haut<250)?250:haut;
    $('#photo img').css({'margin-top':(($('#photo').height()-haut)/2)+'px'});
    $('#photo img').fadeIn(500);
    $('#main #infos #achat #panier').submit(function(e){
        e.preventDefault();
        $.ajax({
            url:'ajout_panier.php',
            method:'POST',
            data:$(this).serialize()
        }).done(function(data){
            console.log(data); 
            if(data=='pas_co'){
                $('#erreur').html('Vous n\'êtes pas connecté');
            }
        })
    })
})