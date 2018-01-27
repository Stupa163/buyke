$(document).ready(function(){
    var envoi=false;
    $('.ann a').attr('target','_blank');
    $('.ok input').focusin(function(){
        $(window).keyup(function(){
            var go=true;
            $.each($('.ok input'),function(a,b){
                go=(!(verif(b.name,b.value)))?false:go;
            })
            envoi=(go)?true:false;
            (envoi)?$('.double .payer').css({'background-color':'gray','color':'black'}):$('.double .payer').css({'background-color':'lightgray','color':'gray'});
        })
    })
    $('.double .payer').click(function(){
        if(envoi){
            $.ajax({
                url:'acheter.php',
                method:'POST',
                data:$('#only_one').serialize()
            }).done(function(data){
                console.log(data);
                $('#main,.double').css({'display':'none'});
                $('#apres').css({'display':'block'});
            })   
        }
    })
    $('.double .payer').mouseenter(function(){
        (envoi)?$(this).css({'cursor':'pointer'}):null;
    }).mouseleave(function(){
        (envoi)?$(this).css({'cursor':'not-allowed'}):null;
    })
    $('#date_exp').keyup(function(e){
        var putain=$(this).val().length;
        var temp=(putain>2)?$(this).val().substr(0,2)+'/'+$(this).val().replace('/','').substr(2,2):$(this).val();
        $(this).val(temp);
    })
})