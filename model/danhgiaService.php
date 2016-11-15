<?php
require_once DIR.'/model/danhgia.php';
require_once DIR.'/model/sqlconnection.php';
//
function danhgia_Get($command)
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
                $new_obj=new danhgia($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'danhgia');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new danhgia($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function danhgia_getById($id)
{
    return danhgia_Get('select * from danhgia where id='.$id);
}
//
function danhgia_getByAll()
{
    return danhgia_Get('select * from danhgia');
}
//
function danhgia_getByTop($top,$where,$order)
{
    return danhgia_Get("select * from danhgia ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function danhgia_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return danhgia_Get("SELECT * FROM  danhgia ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function danhgia_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return danhgia_Get("SELECT danhgia.id, danhgia.sanpham_id, danhgia.name, danhgia.email, danhgia.phone, danhgia.status, danhgia.start, danhgia.content, danhgia.created FROM  danhgia ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function danhgia_insert($obj)
{
    return exe_query("insert into danhgia (sanpham_id,name,email,phone,status,start,content,created) values ('$obj->sanpham_id','$obj->name','$obj->email','$obj->phone','$obj->status','$obj->start','$obj->content','$obj->created')",'danhgia');
}
//
function danhgia_update($obj)
{
    return exe_query("update danhgia set sanpham_id='$obj->sanpham_id',name='$obj->name',email='$obj->email',phone='$obj->phone',status='$obj->status',start='$obj->start',content='$obj->content',created='$obj->created' where id=$obj->id",'danhgia');
}
//
function danhgia_delete($obj)
{
    return exe_query('delete from danhgia where id='.$obj->id,'danhgia');
}
//
function danhgia_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(id) as count from danhgia '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
