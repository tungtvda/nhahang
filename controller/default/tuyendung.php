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
require_once DIR . '/common/paging.php';
require_once DIR . '/common/redict.php';
$data['menu']=menu_getByTop('','','');
$data['config']=config_getByTop(1,'','');
//
$dk="";
$data['current']=isset($_GET['page'])?$_GET['page']:'1';
$data['pagesize']=5;
$data['count']=tuyendung_count($dk);
$data['danhsach']=tuyendung_getByPaging($data['current'],$data['pagesize'],'id desc',$dk);
$data['PAGING'] = showPagingAtLink($data['count'], $data['pagesize'], $data['current'], '' . SITE_NAME . '/tuyen-dung/');
$name=$data['menu'][5]->name;
$data['banner']=array(
    'banner_img'=>$data['menu'][5]->img,
    'name'=>$data['menu'][5]->name,
    'url'=>'<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~  <li>'.$name.'</li>'
);
$img_banner=$data['menu'][6]->img;
$title=$data['menu'][5]->title;
$description=$data['menu'][5]->description;
$keyword=$data['menu'][5]->keyword;

$data['link_anh']=$img_banner;


$title=($title)?$title:'Viet Gardens';
$description=($description)?$description:'Viet Gardens ';
$keywords=($keyword)?$keyword:'Viet Gardens ';
show_header($title,$description,$keywords,$data);
show_menu($data,'tuyendung');
show_banner($data);
show_tuyendung($data);
show_left($data);
show_footer($data);
show_link_js($data);

