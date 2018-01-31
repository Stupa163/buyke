$(document).ready(function(){
    var cours=false;
    $('#ajout').submit(function(e){
        e.preventDefault();
        if(!cours){
            cours=true;
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
        }
    })
})