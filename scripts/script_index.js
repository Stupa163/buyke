$(document).ready(function(){
    $('#main #otop p').html(($(window).width() <= 900)?'Consultez nos offres d\'hiver':'Couvrez vous chaudement pour ne pas avoir froid cet hiver');
    $(window).resize(function(e){
        $('#main #otop p').html(($(window).width() <= 900)?'Consultez nos offres d\'hiver':'Couvrez vous chaudement pour ne pas avoir froid cet hiver');
    })
})
