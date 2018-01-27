<?php
function date_lisible($date){
    $date_l=preg_split('/-/',preg_split('/ /',$date)[0])[2];
    if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='01'){$date_l.=' Janvier ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='02'){$date_l.=' Fevrier ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='03'){$date_l.=' Mars ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='04'){$date_l.=' Avril ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='05'){$date_l.=' Mai ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='06'){$date_l.=' Juin ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='07'){$date_l.=' Juillet ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='08'){$date_l.=' Août ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='09'){$date_l.=' Septembre ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='10'){$date_l.=' Octobre ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='11'){$date_l.=' Novembre ';}
    else if(preg_split('/-/',preg_split('/ /',$date)[0])[1]=='12'){$date_l.=' Decembre ';}
    return $date_l.preg_split('/-/',preg_split('/ /',$date)[0])[0];;
}
function nom_categorie($cat){
    switch($cat){
        case 1: return 'Vélos de route';
        case 2: return 'VTT';
        case 3: return 'Vetements';
        case 4: return 'Cadres';
        case 5: return 'Roues';
        case 6: return 'Autres pièces';
    };
}
function store_uploaded_image($name, $width, $height,$lid) {
    $target_dir = 'images_annonces/';
    $target_file = $target_dir . basename(md5($_FILES['photo1']['name']).'ann'.$lid.'&user'.$_SESSION['ID'].'.'.preg_split('/\./',$_FILES['photo1']['name'])[(count(preg_split('/\./',$_FILES['photo1']['name'])))-1]);
    $image = new SimpleImage();
    $image->load($_FILES[$name]['tmp_name']);
    $image->resize($width, $height);
    $image->save($target_file);
    return $target_file;
}
function luhn($nbr){
    if(!(int)$nbr){
        return false;
    }else{
        $tab=array_reverse(str_split($nbr));
        foreach($tab as $a=>$b){
            if((int)$a%2!=0){
                $temp=$b*2;
                ($temp>9)?$temp=array_sum(str_split($temp)):null;
                $tab[$a]=$temp;
            }else{
                $tab[$a]=(int)$b;
            }
        }
        return(array_sum($tab)%10!=0)?false:true;
    }
}
function verif_modif($post){
    $go=1;
    (isset($post['pseudo']))?($post['pseudo']!=''&&!preg_match("#^[a-z0-9A-Z]+$#",$post['pseudo']))?$go=0:null:null;
    (isset($post['carte']))?($post['carte']!=''&&(luhn($post['carte'])==false||strlen($post['carte'])!=16))?$go=0:null:null;
    (isset($post['password']))?($post['password']!=''&&!preg_match("#^[a-z0-9A-Z]+$#",$post['password']))?$go=0:null:null;
    (isset($post['mail']))?($post['mail']!=''&&!filter_var($post['mail'],FILTER_VALIDATE_EMAIL))?$go=0:null:null;
    (isset($post['telephone']))?($post['telephone']!=''&&(!(int)$post['telephone']||strlen($post['telephone'])!=10))?$go=0:null:null;
    (isset($post['nom']))?($post['nom']!=''&&!preg_match("#^[a-z0-9A-Zéèêëàâäîïìùûüôö-]+$#",$post['nom']))?$go=0:null:null;
    (isset($post['prenom']))?($post['prenom']!=''&&!preg_match("#^[a-z0-9A-Zéèêëàâäîïìùûüôö-]+$#",$post['prenom']))?$go=0:null:null;
    (isset($post['code_postal']))?($post['code_postal']!=''&&(!(int)$post['code_postal']||strlen($post['code_postal'])!=5))?$go=0:null:null;
    (isset($post['pays']))?($post['pays']!=''&&($post['pays']!='France')&&$post['pays']!='france')?$go=0:null:null;
    (isset($post['date_exp']))?(($post['date_exp']!='')&&((strlen($post['date_exp'])!=5)||(!(int)explode('/',$post['date_exp'])[0])||((int)explode('/',$post['date_exp'])[0]>12)||((!(int)explode('/',$post['date_exp'])[1]))))?$go=0:null:null;
    (isset($post['crypt']))?($post['crypt']!=''&&((!(int)$post['crypt'])||(strlen((int)$post['crypt'])!=3)))?$go=0:null:null;
    return($go==0)?false:true;
}
function verif_modif2($post){
    include 'conn.php';
    $verif=['pseudo'=>true,'mail'=>true];
    if(isset($post['pseudo'])&&$post['pseudo']!=''){
        $sel_pseudo=$bdd->prepare("SELECT ID_USR FROM users WHERE PSEUDO like '".$post['pseudo']."' and ID_USR<>".$_SESSION['ID'].";");
        $sel_pseudo->execute();
        if($sel_pseudo->fetchAll()!=null){
            $verif['pseudo']=false;
        }
    }
    if(isset($post['mail'])&&$post['mail']!=''){
        $sel_mail=$bdd->prepare("SELECT ID_USR FROM users WHERE MAIL like '".$post['mail']."' and ID_USR<>".$_SESSION['ID'].";");
        $sel_mail->execute();
        if($sel_mail->fetchAll()!=null){
            $verif['mail']=false;
        }
    }
    return $verif;
}
function create_update($post){
    $query='UPDATE users SET';
    $query.=(isset($post['pseudo'])&&$post['pseudo']!='')?' PSEUDO="'.htmlentities($post['pseudo']).'",':'';
    $query.=(isset($post['carte'])&&$post['carte']!='')?' CARTE="'.$post['carte'].'",':'';
    $query.=(isset($post['password'])&&$post['password']!='')?' PASSWORD="'.password_hash($post['password'],PASSWORD_DEFAULT).'",':'';
    $query.=(isset($post['mail'])&&$post['mail']!='')?' MAIL="'.$post['mail'].'",':'';
    $query.=(isset($post['telephone'])&&$post['telephone']!='')?' PORTABLE="'.$post['telephone'].'",':'';
    $query.=(isset($post['nom'])&&$post['nom']!='')?' NOM="'.htmlentities($post['nom']).'",':'';
    $query.=(isset($post['prenom'])&&$post['prenom']!='')?' PRENOM="'.htmlentities($post['prenom']).'",':'';
    $query.=(isset($post['adresse'])&&$post['adresse']!='')?' ADRESSE="'.htmlentities($post['adresse']).'",':'';
    $query.=(isset($post['code_postal'])&&$post['code_postal']!='')?' CODE_POSTAL="'.$post['code_postal'].'",':'';
    $query.=(isset($post['ville'])&&$post['ville']!='')?' VILLE="'.$post['ville'].'",':'';
    $query.=(isset($post['pays'])&&$post['pays']!='')?' PAYS="'.$post['pays'].'",':'';
    $query=trim($query,',');
    $query.=' WHERE ID_USR='.$_SESSION['ID'].';';
    return $query;
}
?>
