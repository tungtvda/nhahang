<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_gioithieu($data = array())
{
    $asign = array();
    $asign['id']=$data['info'][0]->id;
    $asign['name']=$data['info'][0]->name;
    $asign['img']=$data['info'][0]->img;
    $asign['content']=$data['info'][0]->content;
    $asign['content_short_strip']=substr(strip_tags($data['info'][0]->content), 0, 400);
    $asign['link']=SITE_NAME.'/gioi-thieu/';
    print_template($asign, 'gioithieu');
}



