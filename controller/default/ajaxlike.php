<?php


if(!defined('DIR')) require_once '../../config.php';
require_once DIR.'/model/sanphamService.php';
$num=0;
if (isset($_GET['Id']))
{
    $Id = addslashes(strip_tags($_GET['Id']));
    if($Id>0&&$Id!='')
    {
        $districts1 = sanpham_getById($Id);
        if(count($districts1)>0){
            $num=$districts1[0]->num_like;
            $num++;
            $new_update = new sanpham();
            $new_update->id=$districts1[0]->id;
            $new_update->num_like=$num;
            sanpham_update_num_like($new_update);
        }
    }

}
echo $num;