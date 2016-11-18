<?php
require_once '../../config.php';
require_once DIR.'/model/sanphamService.php';
require_once DIR.'/model/danhmuc1Service.php';
require_once DIR.'/model/danhmuc2Service.php';
require_once DIR.'/view/admin/sanpham.php';
require_once DIR.'/common/messenger.php';
require_once DIR.'/common/locdautiengviet.php';
$data=array();
$insert=true;
returnCountData();
if(isset($_SESSION["Admin"]))
{
    if(isset($_GET["action"])&&isset($_GET["id"]))
    {
        if($_GET["action"]=="delete")
        {
            $new_obj= new sanpham();
            $new_obj->id=$_GET["id"];
            sanpham_delete($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/sanpham.php');
        }
        else if($_GET["action"]=="edit")
        {
            $new_obj=sanpham_getById($_GET["id"]);
            if($new_obj!=false)
            {
                $data['form']=$new_obj[0];
                $data['tab2_class']='default-tab current';
                $data['tab1_class']=' ';
                $insert=false;
            }
            else header('Location: '.SITE_NAME.'/controller/admin/sanpham.php');
        }
        else
        {
            $data['tab1_class']='default-tab current';
        }
    }
    else
    {
        $data['tab1_class']='default-tab current';
    }
    $data['listfkey']['danhmuc1_id']=danhmuc1_getByAll();
    $dk='';
    if(isset($_GET['id']))
    {
        $dk='danhmuc_id='.$new_obj[0]->danhmuc1_id;
    }
    $data['listfkey']['danhmuc2_id']=danhmuc2_getByTop('',$dk,'name asc');
    if(isset($_GET["action_all"]))
    {
        if($_GET["action_all"]=="ThemMoi")
        {
            $data['tab2_class']='default-tab current';
            $data['tab1_class']=' ';
        }
        else
        {
            $List_sanpham=sanpham_getByAll();
            foreach($List_sanpham as $sanpham)
            {
                if(isset($_GET["check_".$sanpham->id])) sanpham_delete($sanpham);
            }
            header('Location: '.SITE_NAME.'/controller/admin/sanpham.php');
        }
    }
    if(isset($_POST["danhmuc1_id"])&&isset($_POST["danhmuc2_id"])&&isset($_POST["name"])&&isset($_POST["name_url"])&&isset($_POST["code"])&&isset($_POST["img"])&&isset($_POST["img1"])&&isset($_POST["img2"])&&isset($_POST["price"])&&isset($_POST["price_sale"])&&isset($_POST["price_percent"])&&isset($_POST["start"])&&isset($_POST["num_like"])&&isset($_POST["content_short"])&&isset($_POST["content"])&&isset($_POST["title"])&&isset($_POST["keyword"])&&isset($_POST["description"]))
    {
       $array=$_POST;
       if(!isset($array['id']))
       $array['id']='0';
       if(!isset($array['danhmuc1_id']))
       $array['danhmuc1_id']='0';
       if(!isset($array['danhmuc2_id']))
       $array['danhmuc2_id']='0';
       if(!isset($array['highlights']))
       $array['highlights']='0';
       if(!isset($array['name']))
       $array['name']='0';
       if(!isset($array['name_url']))
       $array['name_url']='0';
        $array['name_url']=LocDau($array['name']);
       if(!isset($array['code']))
       $array['code']='0';
       if(!isset($array['img']))
       $array['img']='0';
       if(!isset($array['img1']))
       $array['img1']='0';
       if(!isset($array['img2']))
       $array['img2']='0';
       if(!isset($array['price']))
       $array['price']='0';
       if(!isset($array['price_sale']))
       $array['price_sale']='0';
       if(!isset($array['price_percent']))
       $array['price_percent']='0';
       if(!isset($array['start']))
       $array['start']='0';
       if(!isset($array['num_like']))
       $array['num_like']='0';
       if(!isset($array['content_short']))
       $array['content_short']='0';
       if(!isset($array['content']))
       $array['content']='0';
       if(!isset($array['title']))
       $array['title']='0';
       if(!isset($array['keyword']))
       $array['keyword']='0';
       if(!isset($array['description']))
       $array['description']='0';
      $new_obj=new sanpham($array);
        if($insert)
        {
            sanpham_insert($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/sanpham.php');
        }
        else
        {
            $new_obj->id=$_GET["id"];
            sanpham_update($new_obj);
            $insert=false;
            header('Location: '.SITE_NAME.'/controller/admin/sanpham.php');
        }
    }
    $data['username']=isset($_SESSION["UserName"])?$_SESSION["UserName"]:'quản trị viên';
    $data['count_paging']=sanpham_count('');
    $data['page']=isset($_GET['page'])?$_GET['page']:'1';
    $data['table_body']=sanpham_getByPagingReplace($data['page'],20,'id DESC','');
    // gọi phương thức trong tầng view để hiển thị
    view_sanpham($data);
}
else
{
     header('location: '.SITE_NAME);
}
