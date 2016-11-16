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
if(isset($_GET['Id']))
{
    $danhmuc_new=danhmuc_tintuc_getByTop('','name_url="'.$_GET['Id'].'"','');
    if(count($danhmuc_new)==0)
    {
        redict(SITE_NAME);
    }
    $dk="danhmuc_id=".$danhmuc_new[0]->id;
    $data['current']=isset($_GET['page'])?$_GET['page']:'1';
    $data['pagesize']=5;
    $data['count']=news_count($dk);
    $data['danhsach']=news_getByPaging($data['current'],$data['pagesize'],'id desc',$dk);
    $data['PAGING'] = showPagingAtLink($data['count'], $data['pagesize'], $data['current'], '' . SITE_NAME . '/cam-nang/'.$danhmuc_new[0]->name_url.'/');
    $name_dm=$data['menu'][3]->name;
    $name=$danhmuc_new[0]->name;
    $data['banner']=array(
        'banner_img'=>$danhmuc_new[0]->img,
        'name'=>$danhmuc_new[0]->name,
        'url'=>'<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~ <li><a href="'.SITE_NAME.'/cam-nang/">'.$name_dm.'</a></li> ~ <li>'.$name.'</li>'
    );
    $img_banner=$danhmuc_new[0]->img;
    $title=$danhmuc_new[0]->title;
    $description=$danhmuc_new[0]->description;
    $keyword=$danhmuc_new[0]->keyword;
}
else{
    $dk="";
    $data['current']=isset($_GET['page'])?$_GET['page']:'1';
    $data['pagesize']=5;
    $data['count']=news_count($dk);
    $data['danhsach']=news_getByPaging($data['current'],$data['pagesize'],'id desc',$dk);
    $data['PAGING'] = showPagingAtLink($data['count'], $data['pagesize'], $data['current'], '' . SITE_NAME . '/cam-nang/');
    $name=$data['menu'][3]->name;
    $data['banner']=array(
        'banner_img'=>$data['menu'][3]->img,
        'name'=>$data['menu'][3]->name,
        'url'=>'<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~  <li>'.$name.'</li>'
    );
    $img_banner=$data['menu'][6]->img;
    $title=$data['menu'][3]->title;
    $description=$data['menu'][3]->description;
    $keyword=$data['menu'][3]->keyword;
}
$data['link_anh']=$img_banner;


$title=($title)?$title:'Viet Gardens';
$description=($description)?$description:'Viet Gardens ';
$keywords=($keyword)?$keyword:'Viet Gardens ';
show_header($title,$description,$keywords,$data);
show_menu($data,'camnang');
show_banner($data);
show_danhmuccamnang($data);
show_left($data);
show_footer($data);
show_link_js($data);

