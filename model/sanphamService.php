<?php
require_once DIR.'/model/sanpham.php';
require_once DIR.'/model/sqlconnection.php';
//
function sanpham_Get($command)
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
                $new_obj=new sanpham($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'sanpham');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new sanpham($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function sanpham_getById($id)
{
    return sanpham_Get('select * from sanpham where id='.$id);
}
//
function sanpham_getByAll()
{
    return sanpham_Get('select * from sanpham');
}
//
function sanpham_getByTop($top,$where,$order)
{
    return sanpham_Get("select * from sanpham ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function sanpham_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return sanpham_Get("SELECT * FROM  sanpham ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function sanpham_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return sanpham_Get("SELECT sanpham.id, danhmuc1.name as danhmuc1_id, danhmuc2.name as danhmuc2_id, sanpham.highlights, sanpham.name, sanpham.code, sanpham.img, sanpham.img1, sanpham.img2, sanpham.price, sanpham.price_sale, sanpham.price_percent, sanpham.start, sanpham.num_like, sanpham.description_short, sanpham.description FROM  sanpham, danhmuc1, danhmuc2 where danhmuc1.id=sanpham.danhmuc1_id and danhmuc2.id=sanpham.danhmuc2_id  ".(($where!='')?(' and '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function sanpham_insert($obj)
{
    return exe_query("insert into sanpham (danhmuc1_id,danhmuc2_id,highlights,name,code,img,img1,img2,price,price_sale,price_percent,start,num_like,description_short,description) values ('$obj->danhmuc1_id','$obj->danhmuc2_id','$obj->highlights','$obj->name','$obj->code','$obj->img','$obj->img1','$obj->img2','$obj->price','$obj->price_sale','$obj->price_percent','$obj->start','$obj->num_like','$obj->description_short','$obj->description')",'sanpham');
}
//
function sanpham_update($obj)
{
    return exe_query("update sanpham set danhmuc1_id='$obj->danhmuc1_id',danhmuc2_id='$obj->danhmuc2_id',highlights='$obj->highlights',name='$obj->name',code='$obj->code',img='$obj->img',img1='$obj->img1',img2='$obj->img2',price='$obj->price',price_sale='$obj->price_sale',price_percent='$obj->price_percent',start='$obj->start',num_like='$obj->num_like',description_short='$obj->description_short',description='$obj->description' where id=$obj->id",'sanpham');
}
//
function sanpham_delete($obj)
{
    return exe_query('delete from sanpham where id='.$obj->id,'sanpham');
}
//
function sanpham_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(id) as count from sanpham '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
