<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_giohang($data = array())
{
    $asign = array();
    $asign['list_cart'] ='';
    $total=0;
    if(isset($_SESSION['cart'])){
        foreach ($_SESSION['cart'] as $key=>$sp) {
            $data_sanpham=sanpham_getById($sp['id']);
            if(count($data_sanpham)>0){
                $img=$data_sanpham[0]->img;
                $name=$data_sanpham[0]->name;
                $price=number_format($data_sanpham[0]->price,0,",",".");
                $num=$sp['soluong'];
                $link=link_sanphamdetail($data_sanpham[0]);
                $thanhtien=$data_sanpham[0]->price*$num;
                $total+=$data_sanpham[0]->price*$num;
                $link_xoa = SITE_NAME . '/xoa-gio-hang/' . $key;
                $asign['list_cart'] .='<tr class="cart_item">
                                        <td class="product-name">
                                            <div class="product-thumbnail">
                                                <a href="'.$link.'"><img width="150" height="150" src="'.$img.'" class="attachment-thumbnail size-thumbnail wp-post-image" alt="'.$name.'" srcset="'.$img.' 150w, '.$img.' 768w,'.$img.'  124w, '.$img.' 370w,'.$img.'  570w, '.$img.' 780w" sizes="(max-width: 150px) 100vw, 150px"></a>							</div>
                                            <div class="product-link">
                                                <a href="'.$link.'">'.$name.'</a>							</div>
                                        </td>
                                        <td class="product-price">
                                            <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>'.$price.' vnđ</span>						</td>
                                        <td class="product-quantity">
                                            <div class="quantity buttons_added"><input type="button" value="-" class="minus">
                                                <input type="number" step="1" min="1" max="" name="Soluong['.$key.']" value="'.$num.'" title="Số lượng" class="input-text qty text" size="4" pattern="[0-9]*" inputmode="numeric">
                                                <input type="button" value="+" class="plus">
                                                <input hidden type="text" value="'.$sp['id'].'" name="Id['.$key.']" class="plus">
                                                </div>
                                        </td>
                                        <td class="product-subtotal">
                                            <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>'.number_format($thanhtien,0,",",".").' vnđ</span>						</td>
                                        <td class="product-remove">
                                            <a  href="'.$link_xoa.'" onClick="return confirm(\'Bạn có chắc chắc muốn xóa?\')" class="remove" title="Xóa thực đơn">×</a>						</td>
                                    </tr>';
            }
        }
    }
    $asign['total'] =number_format($total,0,",",".");
    print_template($asign, 'giohang');
}



