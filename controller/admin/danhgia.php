<?php
require_once '../../config.php';
require_once DIR.'/model/danhgiaService.php';
require_once DIR.'/view/admin/danhgia.php';
require_once DIR.'/common/messenger.php';
$data=array();
$insert=true;
returnCountData();
if(isset($_SESSION["Admin"]))
{
    if(isset($_GET["action"])&&isset($_GET["id"]))
    {
        if($_GET["action"]=="delete")
        {
            $new_obj= new danhgia();
            $new_obj->id=$_GET["id"];
            danhgia_delete($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/danhgia.php');
        }
        else if($_GET["action"]=="edit")
        {
            $new_obj=danhgia_getById($_GET["id"]);
            if($new_obj!=false)
            {
                $data['form']=$new_obj[0];
                $data['tab2_class']='default-tab current';
                $data['tab1_class']=' ';
                $insert=false;
            }
            else header('Location: '.SITE_NAME.'/controller/admin/danhgia.php');
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
            $List_danhgia=danhgia_getByAll();
            foreach($List_danhgia as $danhgia)
            {
                if(isset($_GET["check_".$danhgia->id])) danhgia_delete($danhgia);
            }
            header('Location: '.SITE_NAME.'/controller/admin/danhgia.php');
        }
    }
    if(isset($_POST["sanpham_id"])&&isset($_POST["name"])&&isset($_POST["email"])&&isset($_POST["phone"])&&isset($_POST["start"])&&isset($_POST["content"])&&isset($_POST["created"]))
    {
       $array=$_POST;
       if(!isset($array['id']))
       $array['id']='0';
       if(!isset($array['sanpham_id']))
       $array['sanpham_id']='0';
       if(!isset($array['name']))
       $array['name']='0';
       if(!isset($array['email']))
       $array['email']='0';
       if(!isset($array['phone']))
       $array['phone']='0';
       if(!isset($array['status']))
       $array['status']='0';
       if(!isset($array['start']))
       $array['start']='0';
       if(!isset($array['content']))
       $array['content']='0';
       if(!isset($array['created']))
       $array['created']='0';
      $new_obj=new danhgia($array);
        if($insert)
        {
            danhgia_insert($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/danhgia.php');
        }
        else
        {
            $new_obj->id=$_GET["id"];
            danhgia_update($new_obj);
            $insert=false;
            header('Location: '.SITE_NAME.'/controller/admin/danhgia.php');
        }
    }
    $data['username']=isset($_SESSION["UserName"])?$_SESSION["UserName"]:'quản trị viên';
    $data['count_paging']=danhgia_count('');
    $data['page']=isset($_GET['page'])?$_GET['page']:'1';
    $data['table_body']=danhgia_getByPagingReplace($data['page'],20,'id DESC','');
    // gọi phương thức trong tầng view để hiển thị
    view_danhgia($data);
}
else
{
     header('location: '.SITE_NAME);
}
