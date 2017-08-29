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

if(isset($_GET['Id']))
{
    $actual_link= addslashes(strip_tags($_GET['Id']));
    $danhmuc_2=danhmuc2_getByTop(1,'name_url="'.$actual_link.'"','');
    if(count($danhmuc_2)==0){
        redict(SITE_NAME);
    }
    $danhmuc_1=danhmuc1_getByTop(1,'id='.$danhmuc_2[0]->danhmuc_id,'');
    if(count($danhmuc_1)==0){
        redict(SITE_NAME);
    }
    $dk="danhmuc2_id=".$danhmuc_2[0]->id;
    $data['current']=isset($_GET['page'])?$_GET['page']:'1';
    $data['pagesize']=12;
    $data['count']=sanpham_count($dk);
    $data['danhsach']=sanpham_getByPaging($data['current'],$data['pagesize'],$order,$dk);
    $data['PAGING'] = showPagingAtLink($data['count'], $data['pagesize'], $data['current'], '' . SITE_NAME . '/thuc-don/'.$danhmuc_2[0]->name_url.'/',$order_pag);
    $name=$danhmuc_2[0]->name;
    $data['banner']=array(
        'banner_img'=>$danhmuc_2[0]->img,
        'name'=>$name,
        'url'=>'<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~ <li><a href="'.SITE_NAME.'/'.$danhmuc_1[0]->name_url.'/">'.$danhmuc_1[0]->name.'</a></li> ~ <li>'.$name.'</li>'
    );
    $img_banner=$danhmuc_2[0]->img;
    $title=$danhmuc_2[0]->title;
    $description=$danhmuc_2[0]->description;
    $keyword=$danhmuc_2[0]->keyword;
    $data['url']=SITE_NAME.'/thuc-don/'.$danhmuc_2[0]->name_url.'/';
}
else{
    //echo $actual_link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
    $actual_link=str_replace('/','',$_SERVER['REQUEST_URI']);
    $actual_link=str_replace('nhahang','',$actual_link);
    $actual_link=str_replace($sub_string_oder,'',$actual_link);
    $actual_link = preg_replace('/[0-9]+/', '', $actual_link);
    $actual_link=str_replace('page=','',$actual_link);
    $actual_link=str_replace('?','',$actual_link);
    $actual_link=str_replace('&','',$actual_link);
    $img_banner='';
            $danhmuc=menu_getById(3);
            if(count($danhmuc)==0)
            {
                redict(SITE_NAME);
            }
            $dk="";
            $data['current']=isset($_GET['page'])?$_GET['page']:'1';
            $data['pagesize']=12;
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
            $data['url']=SITE_NAME.'/thuc-don/';
}

$data['link_anh']=$img_banner;
$data['val_order']=$val_order;
$title=($title)?$title:'Viet Gardens';
$description=($description)?$description:'Viet Gardens ';
$keywords=($keyword)?$keyword:'Viet Gardens ';
show_header($title,$description,$keywords,$data);
show_menu($data,'dichvu');
show_banner($data);
show_danhmucthucdon($data);
show_left($data);
show_footer($data);
show_link_js($data);
