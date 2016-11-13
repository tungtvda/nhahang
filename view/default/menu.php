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

    print_template($asign, 'menu');
}
