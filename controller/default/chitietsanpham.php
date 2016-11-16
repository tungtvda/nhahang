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

 $link_action=$_SERVER['REQUEST_URI'];
 $string_check= strchr($link_action,"/cam-nang/");
if($string_check!='')
{
    if(isset($_GET['Id']))
    {
        $name_url=addslashes(str_replace('cam-nang/','',$_GET['Id']));
        $data['news']=news_getByTop('','name_url="'.$name_url.'"','');
        if(count($data['news'])==0){
            redict(SITE_NAME);
        }
    }
    else{
        redict(SITE_NAME);
    }
    $view=$data['news'][0]->view;
    $view++;
    $view_update = new news();
    $view_update->id=$data['news'][0]->id;
    $view_update->view=$view;
    news_update_view($view_update);
    $name_danhmuc=$data['menu'][3]->name;
    $link_danhmuc=SITE_NAME.'/cam-nang/';
    $title=$data['news'][0]->title;
    $description=$data['news'][0]->description;
    $keyword=$data['news'][0]->keyword;
    $url='<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li> ~  <li><a href="'.SITE_NAME.'/cam-nang/">'.$data['menu'][3]->name.'</a></li>';
    $danhmuc1=danhmuc_tintuc_getByTop(1,'id="'.$data['news'][0]->danhmuc_id.'"','');
    if(count($danhmuc1)){
        $banner=$danhmuc1[0]->img;
        $name_dm2= $danhmuc1[0]->name;
        $name_danhmuc=$danhmuc1[0]->name;
        $link_danhmuc=SITE_NAME.'/cam-nang/'.$danhmuc1[0]->name_url.'/';
        $url.=' ~ <li><a href="'.SITE_NAME.'/cam-nang/'.$danhmuc1[0]->name_url.'/">'.$name_dm2.'</a></li>';
    }
    else{
        redict(SITE_NAME);
    }
    $url.=' ~ <li>'.$data['news'][0]->name.'</li>';
    $active='camnang';
    $name_dm1=$data['news'][0];
    $data['banner']=array(
        'banner_img'=>$banner,
        'name'=>$data['news'][0]->name,
        'url'=>$url
    );
    $data['name_dm']=$name_danhmuc;
    $data['link_dm']=$link_danhmuc;

//    $data['tour_noibat']=news_getByTop(6,'id!='.$data['news'][0]->id.' and danhmuc_id='.$data['news'][0]->danhmuc_id,'id desc');
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
    $title=$data['tour'][0]->title;
    $description=$data['tour'][0]->keyword;
    $keyword=$data['tour'][0]->description;
    $data['danhgia']=danhgia_getByTop('','status=1 and sanpham_id='.$data['tour'][0]->id,'id desc');
    $data['count_danhgia']=count($data['danhgia']);
}

$title=($title)?$title:'Viet Gardens';
$description=($description)?$description:'Viet Gardens ';
$keywords=($keyword)?$keyword:'Viet Gardens ';
show_header($title,$description,$keywords,$data);
show_menu($data,$active);
show_banner($data);
if($string_check!='')
{
    show_chitietcamnang($data);
}
else{
    show_chitietsanpham($data);
}

show_left($data);
show_footer($data);
show_link_js($data);
if (isset($_POST['danhgia_ct'])) {
    $name_ct=addslashes(strip_tags($_POST['name_ct']));
    $email_ct=addslashes(strip_tags($_POST['email_ct']));
    $start_ct=addslashes(strip_tags($_POST['start_ct']));
    $content_ct=addslashes(strip_tags($_POST['content_ct']));
    if($name_ct==""||$email_ct==""||$start_ct==""||$content_ct=='')
    {
        echo "<script>alert('Bạn vui lòng nhập đầy đủ thông tin đánh giá')</script>";
    }
    else
    {
        if($start_ct>5){
            $start_ct=5;
        }
        if($start_ct<0){
            $start_ct=0;
        }
        $new = new danhgia();
        $new->name=$name_ct;
        $new->email=$email_ct;
        $new->sanpham_id=$data['tour'][0]->id;
        $new->phone='';
        $new->content=$content_ct;
        $new->status=0;
        $new->start=$start_ct;
        $new->created=date(DATETIME_FORMAT);
        danhgia_insert($new);
        $start_update=(round($data['tour'][0]->start)+$start_ct)/2;
        $new_update = new sanpham();
        $new_update->id=$data['tour'][0]->id;
        $new_update->start=$start_update;
        sanpham_update_start($new_update);
        echo "<script>alert('Viet Gardens cảm ơn quý khách đã đánh giá thực đơn của nhà hàng chúng tôi. Chúc quý khách ngon miệng!')</script>";
    }
}

