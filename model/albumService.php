<?php
require_once DIR.'/model/album.php';
require_once DIR.'/model/sqlconnection.php';
//
function album_Get($command)
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
                $new_obj=new album($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'album');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new album($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function album_getById($id)
{
    return album_Get('select * from album where id='.$id);
}
//
function album_getByAll()
{
    return album_Get('select * from album');
}
//
function album_getByTop($top,$where,$order)
{
    return album_Get("select * from album ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function album_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return album_Get("SELECT * FROM  album ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function album_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return album_Get("SELECT album.id, album.name, album.image FROM  album ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function album_insert($obj)
{
    return exe_query("insert into album (name,image) values ('$obj->name','$obj->image')",'album');
}
//
function album_update($obj)
{
    return exe_query("update album set name='$obj->name',image='$obj->image' where id=$obj->id",'album');
}
//
function album_delete($obj)
{
    return exe_query('delete from album where id='.$obj->id,'album');
}
//
function album_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(id) as count from album '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
