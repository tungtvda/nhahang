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
$sub_string_oder='';
$order='id desc';
$order_pag='orderby-id';
$val_order='id';
if(isset($_GET['orderby']))
{
    $val_order=$_GET['orderby'];
    $sub_string_oder='orderby='.$val_order;
    $arr_check=array('id','name','price','start','num_like');
    if(in_array($val_order,$arr_check)){
        $order=addslashes(strip_tags($val_order)).' desc';
    }
    $order_pag='orderby-'.$val_order;
}

if(isset($_GET['giatri'])&&$_GET['giatri']!='')
{
    $field=mb_strtolower(addslashes(strip_tags($_GET['giatri'])));
    $dk='name LIKE "%' . $field . '%" or price LIKE "%' . $field . '%" or name_url LIKE "%' . $field . '%" or 	start LIKE "%' . $field . '%" or num_like LIKE "%' . $field . '%" or content LIKE "%' . $field . '%" or content_short LIKE "%' . $field . '%" or title LIKE "%' . $field . '%" or description LIKE "%' . $field . '%"   ';
    $data['current']=isset($_GET['page'])?$_GET['page']:'1';

    $data['danhsach']=sanpham_getByTop('',$dk,$order);
    $name=$data['menu'][6]->name;
    $data['banner']=array(
        'banner_img'=>$data['menu'][6]->img,
        'name'=>$name,
        'url'=>'<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~  <li>'.$name.'</li>'
    );
    $img_banner=$data['menu'][6]->img;
    $title=$data['menu'][6]->title;
    $description=$data['menu'][6]->description;
    $keyword=$data['menu'][6]->keyword;
    $data['giatri']=$_GET['giatri'];
}
else{
    redict(SITE_NAME);
}


$data['link_anh']=$img_banner;
$data['val_order']=$val_order;
$title=($title)?$title:'Viet Gardens';
$description=($description)?$description:'Viet Gardens ';
$keywords=($keyword)?$keyword:'Viet Gardens ';
show_header($title,$description,$keywords,$data);
show_menu($data,'');
show_banner($data);
show_timkiem($data);
show_left($data);
show_footer($data);
show_link_js($data);
