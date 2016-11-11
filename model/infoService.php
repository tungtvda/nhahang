<?php
require_once DIR.'/model/info.php';
require_once DIR.'/model/sqlconnection.php';
//
function info_Get($command)
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
                $new_obj=new info($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'info');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new info($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function info_getById($id)
{
    return info_Get('select * from info where id='.$id);
}
//
function info_getByAll()
{
    return info_Get('select * from info');
}
//
function info_getByTop($top,$where,$order)
{
    return info_Get("select * from info ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function info_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return info_Get("SELECT * FROM  info ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function info_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return info_Get("SELECT info.id, info.name, info.img, info.content, info.contents_short, info.title, info.keyword, info.description FROM  info ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function info_insert($obj)
{
    return exe_query("insert into info (name,img,content,contents_short,title,keyword,description) values ('$obj->name','$obj->img','$obj->content','$obj->contents_short','$obj->title','$obj->keyword','$obj->description')",'info');
}
//
function info_update($obj)
{
    return exe_query("update info set name='$obj->name',img='$obj->img',content='$obj->content',contents_short='$obj->contents_short',title='$obj->title',keyword='$obj->keyword',description='$obj->description' where id=$obj->id",'info');
}
//
function info_delete($obj)
{
    return exe_query('delete from info where id='.$obj->id,'info');
}
//
function info_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(id) as count from info '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
