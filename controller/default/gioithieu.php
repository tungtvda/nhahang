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
require_once DIR . '/common/redict.php';
require_once DIR.'/model/danhgiaService.php';
require_once DIR.'/model/sanphamService.php';
$data['menu']=menu_getByTop('','','');
$data['config']=config_getByTop(1,'','');
//


$name_danhmuc=$data['menu'][3]->name;

$title=$data['menu'][1]->title;
$description=$data['menu'][1]->description;
$keyword=$data['menu'][1]->keyword;
$url='<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li>';
$data['info']=info_getById(1);
if(count($data['info'])==0){
    redict(SITE_NAME);
}
$url.=' ~ <li>'.$data['menu'][1]->name.'</li>';
$data['banner']=array(
    'banner_img'=>$data['menu'][1]->img,
    'name'=>$data['menu'][1]->name,
    'url'=>$url
);


//    $data['tour_noibat']=news_getByTop(6,'id!='.$data['news'][0]->id.' and danhmuc_id='.$data['news'][0]->danhmuc_id,'id desc');
$data['link_anh']=$data['info'][0]->img;
$title=($title)?$title:'Viet Gardens';
$description=($description)?$description:'Viet Gardens ';
$keywords=($keyword)?$keyword:'Viet Gardens ';
show_header($title,$description,$keywords,$data);
show_menu($data,'gioithieu');
show_banner($data);
show_gioithieu($data);
show_left($data);
show_footer($data);
show_link_js($data);


