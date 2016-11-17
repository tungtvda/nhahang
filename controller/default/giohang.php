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
require_once DIR . '/common/class.phpmailer.php';
require_once(DIR . "/common/Mail.php");
$data['menu']=menu_getByTop('','','');
$data['config']=config_getByTop(1,'','');
//
if (isset($_POST['Idsanpham'])&&isset($_POST['Idsanpham'])) {
    if (isset($_SESSION['cart'])) {
        foreach ($_SESSION['cart'] as $kt) {
            if ($kt['id'] == $_POST['Idsanpham']) {
                $kiemtra = 1;
                $linkdh = SITE_NAME . '/gio-hang/';

            } else {

            }
        }
    }
    if (isset($kiemtra)) {
        echo "<script>alert('Sản phẩm đã có trong giỏ hàng, bạn vui lòng vào giỏi hàng cập nhật lại số lượng')</script>";
        echo "<script>window.location.href='$linkdh'</script>";
    } else {
        $soluong = $_POST['SoLuong'];
        $id = $_POST['Idsanpham'];
        $linksp = $_POST['Linksanpham'];

        if($soluong==0)
        {
            $soluong=1;
        }
        if ( $soluong == 0) {
            if ($soluong == 0) {
                echo "<script>alert('Số lượng phải lớn hơn 0')</script>";
                echo "<script>window.location.href='$linksp'</script>";
            }
        } else {
            $data['kiemtra'] = sanpham_getById($id);
            if (count($data['kiemtra']) > 0) {
                if (!isset($_SESSION['cart'])) {
                    $_SESSION['cart'] = array();
                    $newitem = array();

                }
                $newitem['id'] = $id;
                $newitem['soluong'] = $soluong;
//                $newitem['linksp'] = $linksp;
                array_push($_SESSION['cart'], $newitem);

            } else {
                redict(SITE_NAME);
            }
        }
    }
}
if (isset($_POST['capnhatgh'])) {
    if (!isset($_SESSION['cart'])) {
        echo "<script>alert('Bạn không có sản phẩm nào trong giỏ hàng')</script>";
        $link_web = SITE_NAME;
        echo "<script>window.location.href='$link_web';</script>";
    }
    $_SESSION['cart'] = array();
    unset($_SESSION['kiemtra']);
    $luong_ud = $_POST['Soluong'];
    $id_ud=$_POST['Id'];
    if(count($id_ud)==0||count($luong_ud)==0)
    {
        redict(SITE_NAME);
    }
    foreach($luong_ud as $key=>$val){
        if($val==0)
        {
            $val = 1;
        }

        $id = $id_ud[$key];

        $newitem['id'] = $id;

        $newitem['soluong'] = $val;
        array_push($_SESSION['cart'], $newitem);
    }
}
if (isset($_POST['xoagiohang'])) {
    if (!isset($_SESSION['cart'])) {
        echo "<script>alert('Bạn không có sản phẩm nào trong giỏ hàng')</script>";
        $link_web = SITE_NAME;
        echo "<script>window.location.href='$link_web';</script>";
    }
    unset($_SESSION['cart']);
    echo "<script>alert('Bạn đã xóa giỏ hàng')</script>";
    $link_web = SITE_NAME;
    echo "<script>window.location.href='$link_web';</script>";
}
$name_danhmuc=$data['menu'][3]->name;

$title=$data['menu'][7]->title;
$description=$data['menu'][7]->description;
$keyword=$data['menu'][7]->keyword;
$url='<li><a href="'.SITE_NAME.'">'.$data['menu'][0]->name.'</a></li>';


$url.=' ~ <li>'.$data['menu'][7]->name.'</li>';
$data['banner']=array(
    'banner_img'=>$data['menu'][7]->img,
    'name'=>$data['menu'][7]->name,
    'url'=>$url
);


//    $data['tour_noibat']=news_getByTop(6,'id!='.$data['news'][0]->id.' and danhmuc_id='.$data['news'][0]->danhmuc_id,'id desc');
$data['link_anh']=$data['menu'][7]->img;
$title=($title)?$title:'Viet Gardens';
$description=($description)?$description:'Viet Gardens ';
$keywords=($keyword)?$keyword:'Viet Gardens ';
show_header($title,$description,$keywords,$data);
show_menu($data,'');
show_banner($data);
show_giohang($data);
show_left($data);
show_footer($data);
show_link_js($data);
