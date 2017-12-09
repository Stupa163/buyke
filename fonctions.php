<?php
function date_lisible($date){
    $date_l=preg_split('/-/',preg_split('/ /',$date)[0])[2];
    if(preg_split('/-/',preg_split('/ /',$date)[0])[2]=='01'){$date_l.=' Janvier ';}
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
    $target_file = $target_dir . basename(md5($_FILES['photo1']['name']).'ann'.$lid.'&user'.$_SESSION['ID'].'_mini.'.preg_split('/\./',$_FILES['photo1']['name'])[(count(preg_split('/\./',$_FILES['photo1']['name'])))-1]);
    $image = new SimpleImage();
    $image->load($_FILES[$name]['tmp_name']);
    $image->resize($width, $height);
    $image->save($target_file);
    return $target_file;
}
?>