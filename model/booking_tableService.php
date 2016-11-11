<?php
require_once DIR.'/model/booking_table.php';
require_once DIR.'/model/sqlconnection.php';
//
function booking_table_Get($command)
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
                $new_obj=new booking_table($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'booking_table');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new booking_table($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function booking_table_getById($id)
{
    return booking_table_Get('select * from booking_table where id='.$id);
}
//
function booking_table_getByAll()
{
    return booking_table_Get('select * from booking_table');
}
//
function booking_table_getByTop($top,$where,$order)
{
    return booking_table_Get("select * from booking_table ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function booking_table_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return booking_table_Get("SELECT * FROM  booking_table ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function booking_table_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return booking_table_Get("SELECT booking_table.id, booking_table.status, booking_table.name, booking_table.email, booking_table.phone, booking_table.address, booking_table.member, booking_table.booking_date, booking_table.booking_time, booking_table.content, booking_table.created FROM  booking_table ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function booking_table_insert($obj)
{
    return exe_query("insert into booking_table (status,name,email,phone,address,member,booking_date,booking_time,content,created) values ('$obj->status','$obj->name','$obj->email','$obj->phone','$obj->address','$obj->member','$obj->booking_date','$obj->booking_time','$obj->content','$obj->created')",'booking_table');
}
//
function booking_table_update($obj)
{
    return exe_query("update booking_table set status='$obj->status',name='$obj->name',email='$obj->email',phone='$obj->phone',address='$obj->address',member='$obj->member',booking_date='$obj->booking_date',booking_time='$obj->booking_time',content='$obj->content',created='$obj->created' where id=$obj->id",'booking_table');
}
//
function booking_table_delete($obj)
{
    return exe_query('delete from booking_table where id='.$obj->id,'booking_table');
}
//
function booking_table_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(id) as count from booking_table '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
