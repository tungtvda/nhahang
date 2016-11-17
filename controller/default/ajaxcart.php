<?php


if(!defined('DIR')) require_once '../../config.php';
require_once DIR.'/model/sanphamService.php';
$num=0;
if (isset($_GET['Id']))
{
    $id=addslashes(strip_tags($_GET['Id']));
    $data['kiemtra'] = sanpham_getById($id);
    if(count($data['kiemtra'])>0){
        if (isset($_SESSION['cart'])) {
            foreach ($_SESSION['cart'] as $kt) {
                if ($kt['id'] == $id) {
                    $kiemtra = 1;
                    $linkdh = SITE_NAME . '/dat-hang/';

                }
            }
        }
        if (isset($kiemtra)) {
            echo 11111111;
            exit;
        } else {

            $soluong = 1;
            $linksp = SITE_NAME.'/'.$data['kiemtra'][0]->name_url;
            if (!isset($_SESSION['cart'])) {
                $_SESSION['cart'] = array();
                $newitem = array();

            }
            $newitem['id'] = $id;
//            $newitem['linksp'] = $linksp;
            $newitem['soluong'] = $soluong;

            array_push($_SESSION['cart'], $newitem);
        }
    }

}
if(isset($_SESSION['cart'])){
    echo count($_SESSION['cart']);
}
else{
    echo $num;
}
