<?php
require_once '../../config.php';
require_once DIR.'/model/danhmuc1Service.php';
require_once DIR.'/view/admin/danhmuc1.php';
require_once DIR.'/common/messenger.php';
//require_once DIR.'/common/locdautiengviet.php';
$data=array();
$insert=true;
returnCountData();
if(isset($_SESSION["Admin"]))
{
    if(isset($_GET["action"])&&isset($_GET["id"]))
    {
        if($_GET["action"]=="delete")
        {
            $new_obj= new danhmuc1();
            $new_obj->id=$_GET["id"];
            danhmuc1_delete($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/danhmuc1.php');
        }
        else if($_GET["action"]=="edit")
        {
            $new_obj=danhmuc1_getById($_GET["id"]);
            if($new_obj!=false)
            {
                $data['form']=$new_obj[0];
                $data['tab2_class']='default-tab current';
                $data['tab1_class']=' ';
                $insert=false;
            }
            else header('Location: '.SITE_NAME.'/controller/admin/danhmuc1.php');
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
    if(isset($_GET["action_all"]))
    {
        if($_GET["action_all"]=="ThemMoi")
        {
            $data['tab2_class']='default-tab current';
            $data['tab1_class']=' ';
        }
        else
        {
            $List_danhmuc1=danhmuc1_getByAll();
            foreach($List_danhmuc1 as $danhmuc1)
            {
                if(isset($_GET["check_".$danhmuc1->id])) danhmuc1_delete($danhmuc1);
            }
            header('Location: '.SITE_NAME.'/controller/admin/danhmuc1.php');
        }
    }
    if(isset($_POST["position"])&&isset($_POST["name"])&&isset($_POST["name_url"])&&isset($_POST["img"])&&isset($_POST["title"])&&isset($_POST["keyword"])&&isset($_POST["description"]))
    {
       $array=$_POST;
       if(!isset($array['id']))
       $array['id']='0';
       if(!isset($array['position']))
       $array['position']='0';
       if(!isset($array['name']))
       $array['name']='0';
       if(!isset($array['name_url']))
       $array['name_url']='0';
//        $array['name_url']=LocDau($array['name']);
       if(!isset($array['img']))
       $array['img']='0';
       if(!isset($array['title']))
       $array['title']='0';
       if(!isset($array['keyword']))
       $array['keyword']='0';
       if(!isset($array['description']))
       $array['description']='0';
      $new_obj=new danhmuc1($array);
        if($insert)
        {
            danhmuc1_insert($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/danhmuc1.php');
        }
        else
        {
            $new_obj->id=$_GET["id"];
            danhmuc1_update($new_obj);
            $insert=false;
            header('Location: '.SITE_NAME.'/controller/admin/danhmuc1.php');
        }
    }
    $data['username']=isset($_SESSION["UserName"])?$_SESSION["UserName"]:'quản trị viên';
    $data['count_paging']=danhmuc1_count('');
    $data['page']=isset($_GET['page'])?$_GET['page']:'1';
    $data['table_body']=danhmuc1_getByPagingReplace($data['page'],20,'id DESC','');
    // gọi phương thức trong tầng view để hiển thị
    view_danhmuc1($data);
}
else
{
     header('location: '.SITE_NAME);
}
