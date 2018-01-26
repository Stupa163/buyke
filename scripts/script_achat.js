$(document).ready(function(){
    var envoi=false;
    $('.ann a').attr('target','_blank');
    $('.ok input').focusin(function(){
        $(window).keyup(function(){
            var go=true;
            $.each($('.ok input'),function(a,b){
                go=(!(verif(b.name,b.value)))?false:go;
            })
            if(go){
                $('.double #payer').css({'background-color':'red'});
                //TODO : Ajout du cursor pointer en hover
                envoi=true;
            }else{
                envoi=false;
            }
        })
    })
    $('.double .payer').click(function(){
        console.log(envoi);
        if(envoi){
            $.ajax({
                url:'acheter.php',
                method:'POST',
                data:$('#only_one').serialize()
            }).done(function(data){
                console.log(data);
            })   
        }
    })
    $('#date_exp').keyup(function(e){
        var putain=$(this).val().length;
        var temp=(putain>2)?$(this).val().substr(0,2)+'/'+$(this).val().replace('/','').substr(2,2):$(this).val();
        $(this).val(temp);
    })
})