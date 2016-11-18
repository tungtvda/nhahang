<?php
require_once '../../config.php';
require_once DIR.'/model/infoService.php';
require_once DIR.'/view/admin/info.php';
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
            $new_obj= new info();
            $new_obj->id=$_GET["id"];
            info_delete($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/info.php');
        }
        else if($_GET["action"]=="edit")
        {
            $new_obj=info_getById($_GET["id"]);
            if($new_obj!=false)
            {
                $data['form']=$new_obj[0];
                $data['tab2_class']='default-tab current';
                $data['tab1_class']=' ';
                $insert=false;
            }
            else header('Location: '.SITE_NAME.'/controller/admin/info.php');
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
            $List_info=info_getByAll();
            foreach($List_info as $info)
            {
                if(isset($_GET["check_".$info->id])) info_delete($info);
            }
            header('Location: '.SITE_NAME.'/controller/admin/info.php');
        }
    }
    if(isset($_POST["name"])&&isset($_POST["img"])&&isset($_POST["content"])&&isset($_POST["contents_short"])&&isset($_POST["title"])&&isset($_POST["keyword"])&&isset($_POST["description"]))
    {
       $array=$_POST;
       if(!isset($array['id']))
       $array['id']='0';
       if(!isset($array['name']))
       $array['name']='0';
       if(!isset($array['img']))
       $array['img']='0';
       if(!isset($array['content']))
       $array['content']='0';
       if(!isset($array['contents_short']))
       $array['contents_short']='0';
       if(!isset($array['title']))
       $array['title']='0';
       if(!isset($array['keyword']))
       $array['keyword']='0';
       if(!isset($array['description']))
       $array['description']='0';
      $new_obj=new info($array);
        if($insert)
        {
            info_insert($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/info.php');
        }
        else
        {
            $new_obj->id=$_GET["id"];
            info_update($new_obj);
            $insert=false;
            header('Location: '.SITE_NAME.'/controller/admin/info.php');
        }
    }
    $data['username']=isset($_SESSION["UserName"])?$_SESSION["UserName"]:'quản trị viên';
    $data['count_paging']=info_count('');
    $data['page']=isset($_GET['page'])?$_GET['page']:'1';
    $data['table_body']=info_getByPagingReplace($data['page'],20,'id DESC','');
    // gọi phương thức trong tầng view để hiển thị
    view_info($data);
}
else
{
     header('location: '.SITE_NAME);
}
