<?php


if(!defined('DIR')) require_once '../../config.php';
require_once DIR.'/model/danhmuc1Service.php';
require_once DIR.'/model/danhmuc2Service.php';

if (isset($_POST['Tour']))
{
    $Id = $_POST['Tour'];
    $districts1 = danhmuc2_getByTop('', 'danhmuc_id='.$Id , 'id ASC');
}

$str = '';
if(count($districts1)>0)
{
    foreach($districts1 as $dis)
    {
        $str .= "<option value=".$dis->id.">$dis->name</option>";
    }
}
else{
    $str .= '<option value="1">Chọn danh mục cấp 2</option>';
}
echo $str;