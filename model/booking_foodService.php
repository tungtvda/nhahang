<?php
require_once DIR.'/model/booking_food.php';
require_once DIR.'/model/sqlconnection.php';
//
function booking_food_Get($command)
{
            $array_result=array();
    $key=md5($command);
    if(CACHE)
    {
        $mycache=ConnectCache();
        $cachecommand=$mycache->get($key);
        if($cachecommand)
        {
            $array_result=$cachecommand;
        }
        else
        {
          $result=mysqli_query(ConnectSql(),$command);
            if($result!=false)while($row=mysqli_fetch_array($result))
            {
                $new_obj=new booking_food($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'booking_food');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new booking_food($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function booking_food_getById($id)
{
    return booking_food_Get('select * from booking_food where id='.$id);
}
//
function booking_food_getByAll()
{
    return booking_food_Get('select * from booking_food');
}
//
function booking_food_getByTop($top,$where,$order)
{
    return booking_food_Get("select * from booking_food ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function booking_food_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return booking_food_Get("SELECT * FROM  booking_food ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function booking_food_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return booking_food_Get("SELECT booking_food.id, booking_food.id_chung, booking_food.name, booking_food.code, booking_food.img, booking_food.link, booking_food.quantity, booking_food.price, booking_food.total FROM  booking_food ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function booking_food_insert($obj)
{
    return exe_query("insert into booking_food (id_chung,name,code,img,link,quantity,price,total) values ('$obj->id_chung','$obj->name','$obj->code','$obj->img','$obj->link','$obj->quantity','$obj->price','$obj->total')",'booking_food');
}
//
function booking_food_update($obj)
{
    return exe_query("update booking_food set id_chung='$obj->id_chung',name='$obj->name',code='$obj->code',img='$obj->img',link='$obj->link',quantity='$obj->quantity',price='$obj->price',total='$obj->total' where id=$obj->id",'booking_food');
}
//
function booking_food_delete($obj)
{
    return exe_query('delete from booking_food where id='.$obj->id,'booking_food');
}
//
function booking_food_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(id) as count from booking_food '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
