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
$order_pag='';
if(isset($_GET['orderby']))
{
    $val_order=$_GET['orderby'];
    $sub_string_oder='orderby='.$val_order;
    $arr_check=array('id','name','price','start','num_like');
    if(in_array($val_order,$arr_check)){
        $order=addslashes(strip_tags($val_order)).' desc';
    }
    $order_pag='&'.$sub_string_oder;
}


//echo $actual_link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
$actual_link=str_replace('/','',$_SERVER['REQUEST_URI']);
$actual_link=str_replace('nhahang','',$actual_link);
$actual_link=str_replace($sub_string_oder,'',$actual_link);
$actual_link = preg_replace('/[0-9]+/', '', $actual_link);
$actual_link=str_replace('page=','',$actual_link);
$actual_link=str_replace('?','',$actual_link);
$actual_link=str_replace('&','',$actual_link);
$img_banner='';
switch($actual_link){
    case 'combo':
        $danhmuc=danhmuc1_getById(5);
        if(count($danhmuc)==0)
        {
            redict(SITE_NAME);
        }
        $dk="danhmuc1_id=5";
        $data['current']=isset($_GET['page'])?$_GET['page']:'1';
        $data['pagesize']=9;
        $data['count']=sanpham_count($dk);
        $data['danhsach']=sanpham_getByPaging($data['current'],$data['pagesize'],$order,$dk);
        $data['PAGING'] = showPagingAtLink($data['count'], $data['pagesize'], $data['current'], '' . SITE_NAME . '/combo/',$order_pag);
        $name=$danhmuc[0]->name;
        $data['banner']=array(
            'banner_img'=>$danhmuc[0]->img,
            'name'=>$name,
            'url'=>'<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~  <li>'.$name.'</li>'
        );
        $img_banner=$danhmuc[0]->img;
        $title=$danhmuc[0]->title;
        $description=$danhmuc[0]->description;
        $keyword=$danhmuc[0]->keyword;
        break;
    case 'alacarte':
        $danhmuc=danhmuc1_getById(2);
        if(count($danhmuc)==0)
        {
            redict(SITE_NAME);
        }
        $dk="danhmuc1_id=2";
        $data['current']=isset($_GET['page'])?$_GET['page']:'1';
        $data['pagesize']=9;
        $data['count']=sanpham_count($dk);
        $data['danhsach']=sanpham_getByPaging($data['current'],$data['pagesize'],$order,$dk);
        $data['PAGING'] = showPagingAtLink($data['count'], $data['pagesize'], $data['current'], '' . SITE_NAME . '/alacarte/',$order_pag);
        $name=$danhmuc[0]->name;
        $data['banner']=array(
            'banner_img'=>$danhmuc[0]->img,
            'name'=>$name,
            'url'=>'<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~  <li>'.$name.'</li>'
        );
        $img_banner=$danhmuc[0]->img;
        $title=$danhmuc[0]->title;
        $description=$danhmuc[0]->description;
        $keyword=$danhmuc[0]->keyword;
        break;
    case 'set-menu':
        $danhmuc=danhmuc1_getById(3);
        if(count($danhmuc)==0)
        {
            redict(SITE_NAME);
        }
        $dk="danhmuc1_id=3";
        $data['current']=isset($_GET['page'])?$_GET['page']:'1';
        $data['pagesize']=9;
        $data['count']=sanpham_count($dk);
        $data['danhsach']=sanpham_getByPaging($data['current'],$data['pagesize'],$order,$dk);
        $data['PAGING'] = showPagingAtLink($data['count'], $data['pagesize'], $data['current'], '' . SITE_NAME . '/set-menu/',$order_pag);
        $name=$danhmuc[0]->name;
        $data['banner']=array(
            'banner_img'=>$danhmuc[0]->img,
            'name'=>$name,
            'url'=>'<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~  <li>'.$name.'</li>'
        );
        $img_banner=$danhmuc[0]->img;
        $title=$danhmuc[0]->title;
        $description=$danhmuc[0]->description;
        $keyword=$danhmuc[0]->keyword;
        break;
    case 'drink':
        $danhmuc=danhmuc1_getById(4);
        if(count($danhmuc)==0)
        {
            redict(SITE_NAME);
        }
        $dk="danhmuc1_id=4";
        $data['current']=isset($_GET['page'])?$_GET['page']:'1';
        $data['pagesize']=9;
        $data['count']=sanpham_count($dk);
        $data['danhsach']=sanpham_getByPaging($data['current'],$data['pagesize'],$order,$dk);
        $data['PAGING'] = showPagingAtLink($data['count'], $data['pagesize'], $data['current'], '' . SITE_NAME . '/set-menu/',$order_pag);
        $name=$danhmuc[0]->name;
        $data['banner']=array(
            'banner_img'=>$danhmuc[0]->img,
            'name'=>$name,
            'url'=>'<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~  <li>'.$name.'</li>'
        );
        $img_banner=$danhmuc[0]->img;
        $title=$danhmuc[0]->title;
        $description=$danhmuc[0]->description;
        $keyword=$danhmuc[0]->keyword;
        break;
    default:
        $danhmuc=menu_getById(3);
        if(count($danhmuc)==0)
        {
            redict(SITE_NAME);
        }
        $dk="";
        $data['current']=isset($_GET['page'])?$_GET['page']:'1';
        $data['pagesize']=9;
        $data['count']=sanpham_count($dk);
        $data['danhsach']=sanpham_getByPaging($data['current'],$data['pagesize'],$order,$dk);
        $data['PAGING'] = showPagingAtLink($data['count'], $data['pagesize'], $data['current'], '' . SITE_NAME . '/thuc-don/',$order_pag);
        $name=$danhmuc[0]->name;
        $data['banner']=array(
            'banner_img'=>$danhmuc[0]->img,
            'name'=>$name,
            'url'=>'<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~  <li>'.$name.'</li>'
        );
        $img_banner=$danhmuc[0]->img;
        $title=$danhmuc[0]->title;
        $description=$danhmuc[0]->description;
        $keyword=$danhmuc[0]->keyword;

}
$data['link_anh']=$img_banner;

$title=($title)?$title:'Mixtourist.com | Vietnam travel agent|Vietnam travel company|Indochina';
$description=($description)?$description:'Mixtourist.com | Vietnam travel agent|Vietnam travel company|Indochina';
$keywords=($keyword)?$keyword:'Mixtourist.com | Vietnam travel agent|Vietnam travel company|Indochina';
show_header($title,$description,$keywords,$data);
show_menu($data,'thucdon');
show_banner($data);
show_danhmucthucdon($data);
show_left($data);
show_footer($data);
