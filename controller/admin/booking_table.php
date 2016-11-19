<?php
require_once '../../config.php';
require_once DIR.'/model/booking_tableService.php';
require_once DIR.'/view/admin/booking_table.php';
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
            $new_obj= new booking_table();
            $new_obj->id=$_GET["id"];
            booking_table_delete($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/booking_table.php');
        }
        else if($_GET["action"]=="edit")
        {
            $new_obj=booking_table_getById($_GET["id"]);
            if($new_obj!=false)
            {
                $data['form']=$new_obj[0];
                $data['tab2_class']='default-tab current';
                $data['tab1_class']=' ';
                $insert=false;
            }
            else header('Location: '.SITE_NAME.'/controller/admin/booking_table.php');
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
            $List_booking_table=booking_table_getByAll();
            foreach($List_booking_table as $booking_table)
            {
                if(isset($_GET["check_".$booking_table->id])) booking_table_delete($booking_table);
            }
            header('Location: '.SITE_NAME.'/controller/admin/booking_table.php');
        }
    }
    if(isset($_POST["id_chung"])&&isset($_POST["name"])&&isset($_POST["email"])&&isset($_POST["phone"])&&isset($_POST["address"])&&isset($_POST["member"])&&isset($_POST["booking_date"])&&isset($_POST["booking_time"])&&isset($_POST["content"])&&isset($_POST["created"]))
    {
       $array=$_POST;
       if(!isset($array['id']))
       $array['id']='0';
       if(!isset($array['id_chung']))
       $array['id_chung']='0';
       if(!isset($array['status']))
       $array['status']='0';
       if(!isset($array['name']))
       $array['name']='0';
       if(!isset($array['email']))
       $array['email']='0';
       if(!isset($array['phone']))
       $array['phone']='0';
       if(!isset($array['address']))
       $array['address']='0';
       if(!isset($array['member']))
       $array['member']='0';
       if(!isset($array['booking_date']))
       $array['booking_date']='0';
       if(!isset($array['booking_time']))
       $array['booking_time']='0';
       if(!isset($array['content']))
       $array['content']='0';
       if(!isset($array['created']))
       $array['created']='0';
      $new_obj=new booking_table($array);
        if($insert)
        {
            booking_table_insert($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/booking_table.php');
        }
        else
        {
            $new_obj->id=$_GET["id"];
            booking_table_update($new_obj);
            $insert=false;
            header('Location: '.SITE_NAME.'/controller/admin/booking_table.php');
        }
    }
    $data['username']=isset($_SESSION["UserName"])?$_SESSION["UserName"]:'quản trị viên';
    $data['count_paging']=booking_table_count('');
    $data['page']=isset($_GET['page'])?$_GET['page']:'1';
    $data['table_body']=booking_table_getByPagingReplace($data['page'],20,'id DESC','');

    // gọi phương thức trong tầng view để hiển thị
    view_booking_table($data);
}
else
{
     header('location: '.SITE_NAME);
}
