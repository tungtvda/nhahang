<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_chitietsanpham($data = array())
{
    $asign = array();
    $asign['id']=$data['tour'][0]->id;
    $asign['code']=$data['tour'][0]->code;
    $asign['name']=$data['tour'][0]->name;
    $asign['img']=$data['tour'][0]->img;
    $asign['img1']=$data['tour'][0]->img1;
    $asign['img2']=$data['tour'][0]->img2;
    $asign['num_like']=$data['tour'][0]->num_like;
    $asign['content_short']=$data['tour'][0]->content_short;
    $asign['content_short_strip']=strip_tags($data['tour'][0]->content_short);
    $asign['content']=$data['tour'][0]->content;
    $asign['link']=link_sanphamdetail($data['tour'][0]);
    $asign['start']=sao_detail($data['tour'][0]->start);
    $asign['count_danhgia']=$data['count_danhgia'];
    $asign['cate']=$data['cate'];
    $asign['price_sales_format']='';
    if($data['tour'][0]->price_sale!=''){
        $price_sales='<span class="woocommerce-Price-currencySymbol"></span>'.number_format($data['tour'][0]->price_sale,0,",",".").' vnđ</span>';
        $asign['price_sales_format']=$price_sales;
    }
    $asign['price_format']=number_format($data['tour'][0]->price,0,",",".");

    $asign['sanpham_lienquan'] ="";
    if(count($data['sanpham_lienquan'])>0)
    {
        $asign['sanpham_lienquan'] = print_item('lienquan', $data['sanpham_lienquan']);
    }
    $asign['danhgia'] ="";
    if(count($data['danhgia'])>0)
    {
        $asign['danhgia'] = print_item('danhgia', $data['danhgia']);
    }
    if(count($data['danhgia'])==0)
    {
        $asign['width']='height: 0px;';
    }
    if(count($data['danhgia'])==1)
    {
        $asign['width']='height: 100px;';
    }
    if(count($data['danhgia'])==2)
    {
        $asign['width']='height: 200px;';
    }
    if(count($data['danhgia'])==3)
    {
        $asign['width']='height:350px;';
    }
    if(count($data['danhgia'])==4)
    {
        $asign['width']='height:400px;';
    }
    if(count($data['danhgia'])==4)
    {
        $asign['width']='height:550px;';
    }
    print_template($asign, 'chitietsanpham');
}



