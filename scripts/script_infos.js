$(document).ready(function(){
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
                if(data){
                    alert('Une erreur est survenue, veuillez réessayer.\nSi jamais le problème persiste, veuillez contacter le webmaster');
                }else{
                    $.ajax({
                        url:'post_modif.php',
                        method:'POST',
                    }).done(function(data_2){
                        console.log(jQuery.parseJSON(data_2));
                    })
                }
            })   
        }
    })
})
function verif(input,value){
    switch(input){
        case 'pseudo':
            return /^[a-z0-9A-Z]+$/gmi.test(value);
            break;
        case 'carte':
            return luhn(value);
            break;
        case 'password':
            return /^[a-z0-9A-Z]+$/gmi.test(value);
            break;
        case 'telephone':
            return(Number(value)&&value.length!=10)?false:true;
            break;
        case 'nom':
            return /^[a-z0-9A-Z]+$/gmi.test(value);
            break;
        case 'prenom':
            return /^[a-z0-9A-Z]+$/gmi.test(value);
            break;
        case 'code_postal':
            return(value.length==5&&Number(value))?true:false;
            break;
        case 'pays':
            if(value!='France' && value != 'france'){
                alert('Désolé, la livraison n\'est pour l\'instant disponible qu\'en France');
                return false;
            }else{
                return true;
            }
            break;
        default:
            return true;
            break;
    }
}
function luhn(nombre){
    var tab=[];
    while(nombre){
        tab.push(nombre % 10);
        nombre = Math.floor(nombre/10);
    }
    var save=tab;
    $.each(tab,function(a,b){
        if(a%2!=0){
            var temp=b*2;
            if(temp>9){
                var sum=[];
                while(temp){
                    sum.push(temp % 10);
                    temp = Math.floor(temp/10);
                }
                temp=sum[0]+sum[1];
            }
            save[a]=temp;
        }
    })
    var final_sum=0;
    $.each(save,function(a,b){
        final_sum+=b;
    })
    return(final_sum%10==0)?true:false;
}