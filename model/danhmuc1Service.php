<?php
require_once DIR.'/model/danhmuc1.php';
require_once DIR.'/model/sqlconnection.php';
//
function danhmuc1_Get($command)
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
                $new_obj=new danhmuc1($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'danhmuc1');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new danhmuc1($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function danhmuc1_getById($id)
{
    return danhmuc1_Get('select * from danhmuc1 where id='.$id);
}
//
function danhmuc1_getByAll()
{
    return danhmuc1_Get('select * from danhmuc1');
}
//
function danhmuc1_getByTop($top,$where,$order)
{
    return danhmuc1_Get("select * from danhmuc1 ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function danhmuc1_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return danhmuc1_Get("SELECT * FROM  danhmuc1 ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function danhmuc1_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return danhmuc1_Get("SELECT danhmuc1.id, danhmuc1.position, danhmuc1.show_menu, danhmuc1.name, danhmuc1.name_url, danhmuc1.img, danhmuc1.title, danhmuc1.keyword, danhmuc1.description FROM  danhmuc1 ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function danhmuc1_insert($obj)
{
    return exe_query("insert into danhmuc1 (position,show_menu,name,name_url,img,title,keyword,description) values ('$obj->position','$obj->show_menu','$obj->name','$obj->name_url','$obj->img','$obj->title','$obj->keyword','$obj->description')",'danhmuc1');
}
//
function danhmuc1_update($obj)
{
    return exe_query("update danhmuc1 set position='$obj->position',show_menu='$obj->show_menu',name='$obj->name',name_url='$obj->name_url',img='$obj->img',title='$obj->title',keyword='$obj->keyword',description='$obj->description' where id=$obj->id",'danhmuc1');
}
//
function danhmuc1_delete($obj)
{
    return exe_query('delete from danhmuc1 where id='.$obj->id,'danhmuc1');
}
//
function danhmuc1_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(id) as count from danhmuc1 '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
