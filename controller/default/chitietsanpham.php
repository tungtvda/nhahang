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
$data['menu']=menu_getByTop('','','');
$data['config']=config_getByTop(1,'','');
//

 $link_action=$_SERVER['REQUEST_URI'];
$string_check= strchr($link_action,"/cam-nang/");
if($string_check!='')
{

    if(isset($_GET['Id']))
    {
        $name_url=addslashes(str_replace('news/','',$_GET['Id']));
        $data['news']=news_getByTop('','name_url="'.$name_url.'"','');
        if(count($data['news'])==0){
            redict(SITE_NAME);
        }
    }
    else{
        redict(SITE_NAME);
    }
    $title=returnLanguageField('title', $data['news'][0]);
    $description=returnLanguageField('keyword', $data['news'][0]);
    $keyword=returnLanguageField('keyword', $data['news'][0]);
    $url='';
    $danhmuc1=danhmuc_tintuc_getByTop(1,'id="'.$data['news'][0]->danhmuc_id.'"','');
    if(count($danhmuc1)){
        $banner=$danhmuc1[0]->img;
        $name_dm1=returnLanguageField('name', $data['menu'][6]);
        $link_dm1=SITE_NAME.'/news/';
        $name_dm2=returnLanguageField('name', $danhmuc1[0]);
        $link_dm2=SITE_NAME.'/news/'.$danhmuc1[0]->name_url.'/';
        $url.='<a  href="'.SITE_NAME.'"><i class="icon-home"></i>'.returnLanguageField('name', $data['menu'][0]).'</a>';
        $url.='<i class="icon-angle-right"></i><a  href="'.$link_dm1.'">'.$name_dm1.'</a>';
        $url.='<i class="icon-angle-right"></i><a  href="'.$link_dm2.'">'.$name_dm2.'</a>';
    }
    else{
        redict(SITE_NAME);
    }
    $active='news';
    $name_dm1=returnLanguageField('name', $data['news'][0]);
    $data['banner']=array(
        'banner_img'=>$banner,
        'name'=>$name_dm1,
        'url'=>$url
    );

    $data['tour_noibat']=news_getByTop(6,'id!='.$data['news'][0]->id.' and danhmuc_id='.$data['news'][0]->danhmuc_id,'id desc');
    $data['link_anh']=$data['news'][0]->img;
}
else{
    if(isset($_GET['Id']))
    {
        $name_url=addslashes($_GET['Id']);
        $data['tour']=sanpham_getByTop('','name_url="'.$name_url.'"','');
        if(count($data['tour'])==0){
            redict(SITE_NAME);
        }
    }
    else{
        redict(SITE_NAME);
    }
    $title=$data['tour'][0]->title;
    $description=$data['tour'][0]->keyword;
    $keyword=$data['tour'][0]->description;

    $danhmuc1=danhmuc1_getByTop(1,'id="'.$data['tour'][0]->danhmuc1_id.'" and id!=1','');
    $danhmuc2=danhmuc2_getByTop(1,'id="'.$data['tour'][0]->	danhmuc2_id.'" and id!=1','');
    if(count($danhmuc1)==0)
    {
        redict(SITE_NAME);
    }
    $banner=$danhmuc1[0]->img;
    $url='<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~ <li><a href="'.SITE_NAME.'/'.$danhmuc1[0]->name_url.'/">'.$danhmuc1[0]->name.'</a></li>';
    $cate='<a href="'.SITE_NAME.'/'.$danhmuc1[0]->name_url.'/" rel="tag">'.$danhmuc1[0]->name.'</a>';
    if(count($danhmuc2)>0)
    {
        $banner=$danhmuc2[0]->img;
        $url.=' ~ <li><a href="'.SITE_NAME.'/thuc-don/'.$danhmuc2[0]->name_url.'/">'.$danhmuc2[0]->name.'</a></li>';
        $cate.=', <a href="'.SITE_NAME.'/thuc-don/'.$danhmuc2[0]->name_url.'/" rel="tag">'.$danhmuc2[0]->name.'</a>';
    }
    $active='thucdon';
    $name=$data['tour'][0]->name;
    $url.=' ~ <li>'.$name.'</li>';
    $data['banner']=array(
        'banner_img'=>$banner,
        'name'=>$name,
        'url'=>$url
    );
    $data['cate']=$cate;

    $data['sanpham_lienquan']=sanpham_getByTop(6,'id!='.$data['tour'][0]->id.' and danhmuc1_id='.$data['tour'][0]->danhmuc1_id,'id desc');
    $data['link_anh']=$data['tour'][0]->img;
}

$title=($title)?$title:'Viet Gardens';
$description=($description)?$description:'Viet Gardens ';
$keywords=($keyword)?$keyword:'Viet Gardens ';
show_header($title,$description,$keywords,$data);
show_menu($data,$active);
show_banner($data);
if($string_check!='')
{

    show_chitiettintuc($data);
}
else{
    show_chitietsanpham($data);
}

show_left($data);
show_footer($data);
show_link_js($data);
