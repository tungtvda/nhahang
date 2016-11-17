<?php
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/locdautiengviet.php';

function view_menu($data = array())
{
    $asign = array();
    $asign['email']=$data['config'][0]->Email;
    $asign['Logo']=$data['config'][0]->Logo;
    $asign['name']=$data['config'][0]->Name;
    $asign['Hotline']=$data['config'][0]->Hotline;
    $asign['twitter'] = $data['mangxahoi'][0]->twitter;
    $asign['youtube'] = $data['mangxahoi'][0]->youtube;
    $asign['facebook'] = $data['mangxahoi'][0]->facebook;
    $asign['google'] = $data['mangxahoi'][0]->google;
    $asign['linkedin'] = $data['mangxahoi'][0]->linkedin;
    $asign['instagram'] = $data['mangxahoi'][0]->instagram;
    //active
    $asign['home_mn'] = ($data['active'] == 'home') ? 'current-menu-item' : '';
    $asign['gioithieu_mn'] = ($data['active'] == 'gioithieu') ? 'current-menu-item' : '';
    $asign['thucdon_mn'] = ($data['active'] == 'thucdon') ? 'current-menu-item' : '';
    $asign['camnang_mn'] = ($data['active'] == 'camnang') ? 'current-menu-item' : '';
    $asign['lienhe_mn'] = ($data['active'] == 'lienhe') ? 'current-menu-item' : '';
    $asign['tuyendung_mn'] = ($data['active'] == 'tuyendung') ? 'current-menu-item' : '';
    //menu
    $asign['home_name']=$data['menu'][0]->name;
    $asign['gioithieu_name']=$data['menu'][1]->name;
    $asign['thucdon_name']=$data['menu'][2]->name;
    $asign['camnang_name']=$data['menu'][3]->name;
    $asign['lienhe_name']=$data['menu'][4]->name;
    $asign['tuyengdung_name']=$data['menu'][5]->name;

    // danh mục cấp 1
    $asign['danhmuc1'] ="";
    if(count($data['danhmuc1'])>0)
    {
        $asign['danhmuc1'] = print_item('danhmuc_menu', $data['danhmuc1']);
    }

    $asign['danhmuc_camnang'] ="";
    if(count($data['danhmuc_camnang'])>0)
    {
        $asign['danhmuc_camnang'] = print_item('danhmuc_camnang', $data['danhmuc_camnang']);
    }
//    unset($_SESSION['cart']);
    $asign['count_cart'] =0;
    $asign['list_cart'] ='';
    $total=0;
    if(isset($_SESSION['cart'])){
        $asign['count_cart'] =count($_SESSION['cart']);
        foreach ($_SESSION['cart'] as $key=>$sp) {
            $data_sanpham=sanpham_getById($sp['id']);
            if(count($data_sanpham)>0){
                $img=$data_sanpham[0]->img;
                $name=$data_sanpham[0]->name;
                $price=number_format($data_sanpham[0]->price,0,",",".");
                $num=$sp['soluong'];
                $link=link_sanphamdetail($data_sanpham[0]);
                $total+=$data_sanpham[0]->price*$num;
                $link_xoa = SITE_NAME . '/xoa-gio-hang/' . $key;
                $asign['list_cart'] .='<li class="mini_cart_item">
                                                            <a href="'.$link_xoa.'" onClick="return confirm(\'Bạn có chắc chắc muốn xóa?\')" class="remove" title="Xóa thực đơn">×</a> <a
                                                                    href="'.$link.'">
                                                                <img width="124" height="124"
                                                                     src="'.$img.'"
                                                                     class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                                     alt="2"
                                                                     srcset="'.$img.' 124w, '.$img.' 150w, '.$img.' 768w, '.$img.' 370w, '.$img.' 570w, '.$img.' 780w"
                                                                     sizes="(max-width: 124px) 100vw, 124px"><span class="name_left" style="  font-size:13px;  float: none;">'.$name.'</span>  </a>

                                                            <span class="quantity">'.$num.' × <span
                                                                        class="woocommerce-Price-amount amount"><span style="font-size: 13px;"
                                                                            class="woocommerce-Price-currencySymbol"></span>'.$price.'  vnđ</span></span>
                                                        </li>';
            }
        }
    }
    $asign['total'] =number_format($total,0,",",".");
    print_template($asign, 'menu');
}
