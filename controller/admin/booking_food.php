<?php
require_once '../../config.php';
require_once DIR.'/model/booking_foodService.php';
require_once DIR.'/view/admin/booking_food.php';
require_once DIR.'/common/messenger.php';
require_once DIR.'/model/booking_tableService.php';
$data=array();
$insert=true;
returnCountData();
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
    if(isset($_POST["id_chung"])&&isset($_POST["name"])&&isset($_POST["code"])&&isset($_POST["img"])&&isset($_POST["link"])&&isset($_POST["quantity"])&&isset($_POST["price"])&&isset($_POST["total"]))
    {
       $array=$_POST;
       if(!isset($array['id']))
       $array['id']='0';
       if(!isset($array['id_chung']))
       $array['id_chung']='0';
       if(!isset($array['name']))
       $array['name']='0';
       if(!isset($array['code']))
       $array['code']='0';
       if(!isset($array['img']))
       $array['img']='0';
       if(!isset($array['link']))
       $array['link']='0';
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
    if(isset($_GET['id_chung'])&&$_GET['id_chung']!=''){
        $data_table=booking_table_getByTop('1','id_chung="'.addslashes(strip_tags($_GET['id_chung'])).'"','');
        if(count($data_table)>0){
            $data['data_table']=$data_table[0];
        }
        else{
            header('Location: '.SITE_NAME.'/controller/admin/booking_table.php');
        }
        $dk="booking_food.id_chung='".addslashes(strip_tags($_GET['id_chung']))."'";
        $data['username']=isset($_SESSION["UserName"])?$_SESSION["UserName"]:'quản trị viên';
        $data['count_paging']=booking_food_count($dk);
        $data['page']=isset($_GET['page'])?$_GET['page']:'1';
        $data['table_body']=booking_food_getByPagingReplace($data['page'],20,'id DESC',$dk);
        // gọi phương thức trong tầng view để hiển thị
        view_booking_food($data);
    }
    else{
        header('Location: '.SITE_NAME.'/controller/admin/booking_table.php');
    }
}
else
{
     header('location: '.SITE_NAME);
}
