<?php
require_once '../../config.php';
require_once DIR.'/model/ykienService.php';
require_once DIR.'/view/admin/ykien.php';
require_once DIR.'/common/messenger.php';
$data=array();
$insert=true;
if(isset($_SESSION["Admin"]))
{
    if(isset($_GET["action"])&&isset($_GET["id"]))
    {
        if($_GET["action"]=="delete")
        {
            $new_obj= new ykien();
            $new_obj->id=$_GET["id"];
            ykien_delete($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/ykien.php');
        }
        else if($_GET["action"]=="edit")
        {
            $new_obj=ykien_getById($_GET["id"]);
            if($new_obj!=false)
            {
                $data['form']=$new_obj[0];
                $data['tab2_class']='default-tab current';
                $data['tab1_class']=' ';
                $insert=false;
            }
            else header('Location: '.SITE_NAME.'/controller/admin/ykien.php');
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
            $List_ykien=ykien_getByAll();
            foreach($List_ykien as $ykien)
            {
                if(isset($_GET["check_".$ykien->id])) ykien_delete($ykien);
            }
            header('Location: '.SITE_NAME.'/controller/admin/ykien.php');
        }
    }
    if(isset($_POST["name"])&&isset($_POST["img"])&&isset($_POST["job"])&&isset($_POST["content"]))
    {
       $array=$_POST;
       if(!isset($array['id']))
       $array['id']='0';
       if(!isset($array['name']))
       $array['name']='0';
       if(!isset($array['img']))
       $array['img']='0';
       if(!isset($array['job']))
       $array['job']='0';
       if(!isset($array['content']))
       $array['content']='0';
      $new_obj=new ykien($array);
        if($insert)
        {
            ykien_insert($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/ykien.php');
        }
        else
        {
            $new_obj->id=$_GET["id"];
            ykien_update($new_obj);
            $insert=false;
            header('Location: '.SITE_NAME.'/controller/admin/ykien.php');
        }
    }
    $data['username']=isset($_SESSION["UserName"])?$_SESSION["UserName"]:'quản trị viên';
    $data['count_paging']=ykien_count('');
    $data['page']=isset($_GET['page'])?$_GET['page']:'1';
    $data['table_body']=ykien_getByPagingReplace($data['page'],20,'id DESC','');
    // gọi phương thức trong tầng view để hiển thị
    view_ykien($data);
}
else
{
     header('location: '.SITE_NAME);
}
