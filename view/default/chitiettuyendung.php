<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_chitiettuyendung($data = array())
{
    $asign = array();
    $asign['id']=$data['news'][0]->id;
    $asign['created']=$data['news'][0]->created;
    $asign['name']=$data['news'][0]->name;
    $asign['img']=$data['news'][0]->img;
    $asign['content']=$data['news'][0]->content;
    $asign['content_short_strip']=substr(strip_tags($data['news'][0]->content), 0, 400);
    $asign['link']=link_newsdetail($data['news'][0]);
    $asign['name_dm']=$data['name_dm'];
    $asign['link_dm']=$data['link_dm'];
    print_template($asign, 'chitiettuyendung');
}



