$(document).ready(function(){
    $('#ajout').submit(function(e){
        e.preventDefault();
        $.ajax({
            url:'add.php',
            method:'post',
            data: new FormData(this),
            cache: false,
            contentType: false,
            processData: false
        }).done(function(data){
            window.location.replace('annonces.php');
        })
    })
})