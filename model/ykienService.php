<?php
require_once DIR.'/model/ykien.php';
require_once DIR.'/model/sqlconnection.php';
//
function ykien_Get($command)
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
                $new_obj=new ykien($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'ykien');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new ykien($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function ykien_getById($id)
{
    return ykien_Get('select * from ykien where id='.$id);
}
//
function ykien_getByAll()
{
    return ykien_Get('select * from ykien');
}
//
function ykien_getByTop($top,$where,$order)
{
    return ykien_Get("select * from ykien ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function ykien_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return ykien_Get("SELECT * FROM  ykien ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function ykien_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return ykien_Get("SELECT ykien.id, ykien.name, ykien.img, ykien.job, ykien.content FROM  ykien ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function ykien_insert($obj)
{
    return exe_query("insert into ykien (name,img,job,content) values ('$obj->name','$obj->img','$obj->job','$obj->content')",'ykien');
}
//
function ykien_update($obj)
{
    return exe_query("update ykien set name='$obj->name',img='$obj->img',job='$obj->job',content='$obj->content' where id=$obj->id",'ykien');
}
//
function ykien_delete($obj)
{
    return exe_query('delete from ykien where id='.$obj->id,'ykien');
}
//
function ykien_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(id) as count from ykien '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
