<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_danhmuccamnang($data = array())
{
    $asign = array();

    $asign['danhsach'] = "";
    $asign['mess']='';
    if(count($data['danhsach'])>0)
    {
        $asign['danhsach'] = print_item('danhmuccamnang', $data['danhsach']);
    }
    else{
        $asign['danhsach']=' <li><span class="page-numbers current">Hệ thống đang cập nhật dữ liệu</span></li> ';
    }
    $asign['PAGING']=$data['PAGING'];
    print_template($asign, 'danhmuccamnang');
}



