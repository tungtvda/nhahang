<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:40 PM
 */
if(!defined('SITE_NAME'))
{
    require_once '../../config.php';
}

require_once DIR.'/controller/default/public.php';
$data['menu']=menu_getByTop('','','');
$data['config']=config_getByTop(1,'','');

//$data['tour_quocte_ghepdoi']=tourtrongnuoc_getByTop('','TourGhepDoi=1 and LoaiTour=2','Id desc');
//$data['khachsan_index']=khachsan_getByTop('','NoiBat=1','Id desc');
//$data['thuexe_index']=thuexe_getByTop('','NoiBat=1','Id desc');
//$data['ykien_index']=ykien_getByTop('6','','View desc');

//$data['khachsan_noibat_1']=khachsan_getByTop('1','NoiBat=1','ViTri asc');
$title=$data['menu'][0];
$description= $data['menu'][0];
$keyword=$data['menu'][0];
$title=($title)?$title:'Viet Gardens ';
$description=($description)?$description:'Viet Gardens ';
$keywords=($keyword)?$keyword:'Viet Gardens ';

show_header($title,$description,$keywords,$data);
show_menu($data,'home');
show_slide($data);
show_index($data);
show_footer($data);
