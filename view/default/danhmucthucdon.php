<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_danhmucthucdon($data = array())
{
    $asign = array();

    $asign['danhsach'] = "";
    $asign['mess']='';
    if(count($data['danhsach'])>0)
    {
        $asign['danhsach'] = print_item('danhmucthucdon', $data['danhsach']);
    }
    else{
        $asign['danhsach']=' <li class="item-product col-md-4 col-sm-6 first  post-101 product type-product status-publish has-post-thumbnail product_cat-cook instock shipping-taxable purchasable product-type-simple"><div class="product-top"> Hệ thống đang cập nhật dữ liệu </div></li>';
    }
//
//    $asign['name_dm']=$data['banner']['name'];
    $asign['PAGING']=$data['PAGING'];
//    $asign['view_as']=returnLanguage('view_as','VIEW AS');
//    $asign['gird']=returnLanguage('gird','GRID');
//    $asign['list']=returnLanguage('list','LIST');
    print_template($asign, 'danhmucthucdon');
}



