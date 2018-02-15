$(document).ready(function(){
    quas_fini_xD();
    $('.modif').click(function(e){
        $(this).css({'display':'none'});
        switch($(this).attr('id')){
            case 'b_compte':
                $('#infos_compte').css({'display':'none'});
                $('#form_compte').css({'display':'block'});
                break;
            case'b_contact':
                $('#infos_contact').css({'display':'none'});
                $('#form_contact').css({'display':'block'});
                break;
            case 'b_livraison':
                $('#infos_livraison').css({'display':'none'});
                $('#form_livraison').css({'display':'block'});
                break;
        }
    })
    $('.f_modif').submit(function(e){
        e.preventDefault();
        $('#main input').clearQueue();
        var go=true;
        $.each($(this).serializeArray(),function(a,b){
            if(b.value!=''){
                if(!(verif(b.name,b.value))){
                    go=false;
                    $('input[name='+b.name+']').css({'border':'inset 2px red'});
                }else{
                    $('input[name='+b.name+']').css({'border':'inset 2px lightgray'});
                }
            }
        })
        if(go){
            $.ajax({
                url:'modif.php',
                method:'POST',
                data:$(this).serialize()
            }).done(function(data){
                if(data=='1'){
                    alert('Une erreur est survenue, veuillez réessayer.\nSi jamais le problème persiste, veuillez contacter le webmaster');
                }else if(data){
                    data=jQuery.parseJSON(data);
                    if(!data.pseudo){
                        $('input[name=pseudo]').css({'border':'inset 2px red','background-color':'orange'});
                        $('input[name=pseudo]').delay(3000).queue(function(next){
                            next;
                            $(this).css({'background-color':'white'});
                        })
                    }else if(!data.mail){
                        $('input[name=mail]').css({'border':'inset 2px red','background-color':'orange'});
                        $('input[name=mail]').delay(3000).queue(function(next){
                            next;
                            $(this).css({'background-color':'white'});
                        })
                    }
                }else{
                    $.ajax({
                        url:'post_modif.php',
                        method:'POST',
                    }).done(function(data_2){
                        switch(e.target.id){
                            case 'form_compte':
                                modif_span((jQuery.parseJSON(data_2)),1);
                                $('#infos_compte').css({'display':'block'});
                                $('#form_compte').css({'display':'none'});
                                $('#b_compte').css({'display':'inline'});
                                break;
                            case'form_contact':
                                modif_span((jQuery.parseJSON(data_2)),2);
                                $('#infos_contact').css({'display':'block'});
                                $('#form_contact').css({'display':'none'});
                                $('#b_contact').css({'display':'inline'});
                                break;
                            case 'form_livraison':
                                modif_span((jQuery.parseJSON(data_2)),3);
                                $('#infos_livraison').css({'display':'block'});
                                $('#form_livraison').css({'display':'none'});
                                $('#b_livraison').css({'display':'inline'});
                                break;
                        }
                    })
                }
            })   
        }
    })
    $('#date_exp').keyup(function(e){
        var putain=$(this).val().length;
        if(putain>2){
            var temp=$(this).val().substr(0,2)+'/'+$(this).val().replace('/','').substr(2,2);
        }else{
            var temp=$(this).val();
        }
        $(this).val(temp);
    })
    $(window).resize(function(e){
        quas_fini_xD();
    })
})
function quas_fini_xD(){
    if($(window).width()>1325){
        $('#foot').css({'top':($('#main').height()>$('#histo').height())?$('#main').height()+260:$('#histo').height()+190,'display':'block'});        
    }else{
        $('#foot').css({'top':($('#main').height()+$('#histo').height()+300),'display':'block'});
    }
}
function modif_span(nvl,bloc){
    console.log(typeof(nvl.DATE_EXP));
    switch(bloc){
        case 1:
            $('#s_pseudo').html(nvl.PSEUDO);
            $('#s_carte').html((nvl.CARTE!=null)?nvl.CARTE:'Non renseigné');
            break;
        case 2:
            $('#s_mail').html(nvl.MAIL);
            $('#s_telephone').html((nvl.PORTABLE!=null)?nvl.PORTABLE:'Non renseigné');
            break;
        case 3:
            $('#s_nom').html((nvl.NOM!=null)?nvl.NOM:'Non renseigné');
            $('#s_prenom').html((nvl.PRENOM!=null)?nvl.PRENOM:'Non renseigné');
            $('#s_adresse').html((nvl.ADRESSE!=null)?nvl.ADRESSE:'Non renseigné');
            $('#s_code_postal').html((nvl.CODE_POSTAL!=null)?nvl.CODE_POSTAL:'Non renseigné');
            $('#s_ville').html((nvl.VILLE!=null)?nvl.VILLE:'Non renseigné');
            $('#s_pays').html((nvl.PAYS!=null)?nvl.PAYS:'Non renseigné');
            break;
    }
}