$(document).ready(function(){
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
            }
        })
    })
})