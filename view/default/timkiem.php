<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_timkiem($data = array())
{
    $asign = array();

    $asign['danhsach'] = "";
    if(count($data['danhsach'])>0)
    {
        $asign['danhsach'] = print_item('danhmucthucdon', $data['danhsach']);
    }
    else{
        $asign['danhsach']=' <li class="item-product col-md-12 col-sm-12 first  post-101 product type-product status-publish has-post-thumbnail product_cat-cook instock shipping-taxable purchasable product-type-simple"><div class="product-top"> Không có kết quả tìm kiếm cho từ khóa "'.$data['giatri'].'" </div></li>';
    }
    $asign['giatri'] = $data['giatri'];
    $asign['val_order'] = $data['val_order'];
    $array_order=array(
        '1'=>array(
            'val'=>'id',
            'key'=>'Mới nhất'
        ),
        '2'=>array(
            'val'=>'name',
            'key'=>'Sắp xếp theo tên'
        ),
        '3'=>array(
            'val'=>'price',
            'key'=>'Sắp xếp theo giá'
        ),
        '4'=>array(
            'val'=>'start',
            'key'=>'Sắp xếp theo sao'
        ),
        '5'=>array(
            'val'=>'num_like',
            'key'=>'Sắp xếp theo lượt thích'
        ),
    );
    $asign['order']='';
    foreach($array_order as $row){
        if($data['val_order']==$row['val'])
        {
            $asign['order'].=' <option value="'.$row['val'].'" selected="selected">'.$row['key'].'</option>';
        }
        else{
            $asign['order'].=' <option value="'.$row['val'].'" >'.$row['key'].'</option>';
        }

    }
    print_template($asign, 'timkiem');
}



