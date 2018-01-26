function verif(input,value){
    switch(input){
        case 'pseudo':
            return /^[a-z0-9A-Z]+$/gmi.test(value);
            break;
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
        case 'password':
            return /^[a-z0-9A-Z]+$/gmi.test(value);
            break;
        case 'telephone':
            return(Number(value)&&value.length!=10)?false:true;
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
                (alert_pays)?alert('Désolé, la livraison n\'est pour l\'instant disponible qu\'en France'):null;
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