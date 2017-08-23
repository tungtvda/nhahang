<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_checkout($data = array())
{
    $asign = array();
    $asign['list_cart'] ='';
    $total=0;
    $asign['hidden_cart'] ='';
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

                                                '.$num.'

                                        </td>
                                        <td class="product-subtotal">
                                            <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>'.number_format($thanhtien,0,",",".").' vnđ</span>						</td>

                                    </tr>';
            }
        }
    }else{
        $asign['hidden_cart'] ='hidden';
    }
    $asign['total'] =number_format($total,0,",",".");
    $asign['gioi_thieu']='';
    $asign['img']='';
    if(isset($data['info'][0]->content) && $data['info'][0]->content!=''){
        $asign['gioi_thieu']=$data['info'][0]->content;
        $asign['img']=$data['info'][0]->img;
    }
    $asign['Hotline']=$data['config'][0]->Hotline;
    $asign['album'] ="";
    if(count($data['album'])>0)
    {
        $asign['album'] = print_item('album', $data['album']);
    }
    print_template($asign, 'checkout');
}



