<?php
require_once '../../config.php';
require_once DIR.'/model/albumService.php';
require_once DIR.'/view/admin/album.php';
require_once DIR.'/common/messenger.php';
$data=array();
$insert=true;
if(isset($_SESSION["Admin"]))
{
    if(isset($_GET["action"])&&isset($_GET["id"]))
    {
        if($_GET["action"]=="delete")
        {
            $new_obj= new album();
            $new_obj->id=$_GET["id"];
            album_delete($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/album.php');
        }
        else if($_GET["action"]=="edit")
        {
            $new_obj=album_getById($_GET["id"]);
            if($new_obj!=false)
            {
                $data['form']=$new_obj[0];
                $data['tab2_class']='default-tab current';
                $data['tab1_class']=' ';
                $insert=false;
            }
            else header('Location: '.SITE_NAME.'/controller/admin/album.php');
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
            $List_album=album_getByAll();
            foreach($List_album as $album)
            {
                if(isset($_GET["check_".$album->id])) album_delete($album);
            }
            header('Location: '.SITE_NAME.'/controller/admin/album.php');
        }
    }
    if(isset($_POST["name"])&&isset($_POST["image"]))
    {
       $array=$_POST;
       if(!isset($array['id']))
       $array['id']='0';
       if(!isset($array['name']))
       $array['name']='0';
       if(!isset($array['image']))
       $array['image']='0';
      $new_obj=new album($array);
        if($insert)
        {
            album_insert($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/album.php');
        }
        else
        {
            $new_obj->id=$_GET["id"];
            album_update($new_obj);
            $insert=false;
            header('Location: '.SITE_NAME.'/controller/admin/album.php');
        }
    }
    $data['username']=isset($_SESSION["UserName"])?$_SESSION["UserName"]:'quản trị viên';
    $data['count_paging']=album_count('');
    $data['page']=isset($_GET['page'])?$_GET['page']:'1';
    $data['table_body']=album_getByPagingReplace($data['page'],20,'id DESC','');
    // gọi phương thức trong tầng view để hiển thị
    view_album($data);
}
else
{
     header('location: '.SITE_NAME);
}
