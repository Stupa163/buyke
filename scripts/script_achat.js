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
                $('#conf #payer').css({'background-color':'red'});
                envoi=true;
            }else{
                envoi=false;
            }
        })
    })
    $('#conf #payer').click(function(){
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
function verif(input,value){
    switch(input){
        case 'carte':
            return(!luhn(value)||value.length!=16)?false:true;
            break;
        case 'date_exp':
            var tab=(value.length>2)?value.split('/'):[0,0];
            return(tab[0].length<=2&&Number(tab[0])&&Number(tab[0])<=12&&tab[1].length<=2&&Number(tab[1]))?true:false;
            break;
        case 'crypt':
            return(value.length==3&&Number(value))?true:false;
            break;
        case 'nom':
            return /^[a-z0-9A-Zéèêëàâäîïìùûüôö-]+$/gmi.test(value);
            break;
        case 'prenom':
            return /^[a-z0-9A-Zéèêëàâäîïìùûüôö-]+$/gmi.test(value);
            break;
        case 'code_postal':
            return(value.length==5&&Number(value))?true:false;
            break;
        case 'pays':
            if(value!='France' && value != 'france'){
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