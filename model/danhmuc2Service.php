<?php
require_once DIR.'/model/danhmuc2.php';
require_once DIR.'/model/sqlconnection.php';
//
function danhmuc2_Get($command)
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
                $new_obj=new danhmuc2($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'danhmuc2');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new danhmuc2($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function danhmuc2_getById($id)
{
    return danhmuc2_Get('select * from danhmuc2 where id='.$id);
}
//
function danhmuc2_getByAll()
{
    return danhmuc2_Get('select * from danhmuc2');
}
//
function danhmuc2_getByTop($top,$where,$order)
{
    return danhmuc2_Get("select * from danhmuc2 ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function danhmuc2_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return danhmuc2_Get("SELECT * FROM  danhmuc2 ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function danhmuc2_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return danhmuc2_Get("SELECT danhmuc2.id, danhmuc1.name as danhmuc_id, danhmuc2.position, danhmuc2.name, danhmuc2.name_url, danhmuc2.img, danhmuc2.title, danhmuc2.keyword, danhmuc2.description FROM  danhmuc2, danhmuc1 where danhmuc1.id=danhmuc2.danhmuc_id  ".(($where!='')?(' and '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function danhmuc2_insert($obj)
{
    return exe_query("insert into danhmuc2 (danhmuc_id,position,name,name_url,img,title,keyword,description) values ('$obj->danhmuc_id','$obj->position','$obj->name','$obj->name_url','$obj->img','$obj->title','$obj->keyword','$obj->description')",'danhmuc2');
}
//
function danhmuc2_update($obj)
{
    return exe_query("update danhmuc2 set danhmuc_id='$obj->danhmuc_id',position='$obj->position',name='$obj->name',name_url='$obj->name_url',img='$obj->img',title='$obj->title',keyword='$obj->keyword',description='$obj->description' where id=$obj->id",'danhmuc2');
}
//
function danhmuc2_delete($obj)
{
    return exe_query('delete from danhmuc2 where id='.$obj->id,'danhmuc2');
}
//
function danhmuc2_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(id) as count from danhmuc2 '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
