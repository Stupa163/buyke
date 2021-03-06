var modal = document.getElementById('myModal');
$(document).ready(function(){
    $(modal).fadeToggle('500','swing');
    $('.change').click(function(e){
        if($('#sign').is(':hidden')){
            $('#log').slideUp('500','swing',function(){
                $('.modal').css({'overflow':'hidden'});
                $('#sign').slideDown('500','swing',function(){
                    $('.modal').css({'height':'auto','overflow':'auto'});
                });
            })
        }else{
            $('.modal').css({'height':'auto','overflow':'hidden'});
            $('#sign').slideUp('500','swing',function(){
                $('#log').slideDown('500','swing');
                $('.modal').css({'overflow':'auto','height':'100%'});
            })
        }
    })
})
$('#log').submit(function(e){
    e.preventDefault();
    $.ajax({
        url:'connexion.php',
        method:'post',
        data:$(this).serialize(),
    }).done(function(data){
        console.log(data);
        if(data!='ok'){
            $('.modal-content').slideUp('500','swing',function(){
                $('.modal-content').html(data+'<br><br><a href="login.php">Retry</a>');
                $('.modal-content').css({'padding':'40px','font-size':'25px','text-align':'center','color':'red'});
                $('.modal-content').slideDown('500','swing');
            })
        }else{
            window.location.replace('index.php');
        }
    })
})
$('#sign').submit(function(e){
    e.preventDefault();
    $.ajax({
        url:'inscription.php',
        method:'post',
        data:$(this).serialize(),
    }).done(function(data){
        console.log(data);
        if(data!='ok'){
            $('.modal-content').slideUp('500','swing',function(){
                $('.modal-content').html(data+'<br><br><a href="login.php">Retry</a>');
                $('.modal-content').css({'padding':'40px','font-size':'25px','text-align':'center','color':'red'});
                $('.modal-content').slideDown('500','swing');
            })
        }else{
            window.location.replace('index.php');
        }
    })
})