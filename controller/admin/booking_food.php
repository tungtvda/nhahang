<?php
require_once '../../config.php';
require_once DIR.'/model/booking_foodService.php';
require_once DIR.'/model/booking_tableService.php';
require_once DIR.'/view/admin/booking_food.php';
require_once DIR.'/common/messenger.php';
$data=array();
$insert=true;
if(isset($_SESSION["Admin"]))
{
    if(isset($_GET["action"])&&isset($_GET["id"]))
    {
        if($_GET["action"]=="delete")
        {
            $new_obj= new booking_food();
            $new_obj->id=$_GET["id"];
            booking_food_delete($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/booking_food.php');
        }
        else if($_GET["action"]=="edit")
        {
            $new_obj=booking_food_getById($_GET["id"]);
            if($new_obj!=false)
            {
                $data['form']=$new_obj[0];
                $data['tab2_class']='default-tab current';
                $data['tab1_class']=' ';
                $insert=false;
            }
            else header('Location: '.SITE_NAME.'/controller/admin/booking_food.php');
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
    $data['listfkey']['booking_table_id']=booking_table_getByAll();
    if(isset($_GET["action_all"]))
    {
        if($_GET["action_all"]=="ThemMoi")
        {
            $data['tab2_class']='default-tab current';
            $data['tab1_class']=' ';
        }
        else
        {
            $List_booking_food=booking_food_getByAll();
            foreach($List_booking_food as $booking_food)
            {
                if(isset($_GET["check_".$booking_food->id])) booking_food_delete($booking_food);
            }
            header('Location: '.SITE_NAME.'/controller/admin/booking_food.php');
        }
    }
    if(isset($_POST["booking_table_id"])&&isset($_POST["name"])&&isset($_POST["quantity"])&&isset($_POST["price"])&&isset($_POST["total"]))
    {
       $array=$_POST;
       if(!isset($array['id']))
       $array['id']='0';
       if(!isset($array['booking_table_id']))
       $array['booking_table_id']='0';
       if(!isset($array['name']))
       $array['name']='0';
       if(!isset($array['quantity']))
       $array['quantity']='0';
       if(!isset($array['price']))
       $array['price']='0';
       if(!isset($array['total']))
       $array['total']='0';
      $new_obj=new booking_food($array);
        if($insert)
        {
            booking_food_insert($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/booking_food.php');
        }
        else
        {
            $new_obj->id=$_GET["id"];
            booking_food_update($new_obj);
            $insert=false;
            header('Location: '.SITE_NAME.'/controller/admin/booking_food.php');
        }
    }
    $data['username']=isset($_SESSION["UserName"])?$_SESSION["UserName"]:'quản trị viên';
    $data['count_paging']=booking_food_count('');
    $data['page']=isset($_GET['page'])?$_GET['page']:'1';
    $data['table_body']=booking_food_getByPagingReplace($data['page'],20,'id DESC','');
    // gọi phương thức trong tầng view để hiển thị
    view_booking_food($data);
}
else
{
     header('location: '.SITE_NAME);
}
