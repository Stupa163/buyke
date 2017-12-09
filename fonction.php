<?php
function date_lisible($date){
    $temp=preg_split(' ',$date)[0];
    return null;
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