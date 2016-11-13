<?php
/**
 * Created by JetBrains PhpStorm.
 * User: nguyenvietdinh
 * Date: 2/6/14
 * Time: 3:51 PM
 * To change this template use File | Settings | File Templates.
 */
require_once DIR.'/common/cls_fast_template.php';
require_once DIR.'/common/locdautiengviet.php';
function print_template($data=array(),$tem)
{
    $ft=new FastTemplate(DIR.'/view/default/template');
    $ft->define($tem,$tem.'.tpl');
    $ft->assign('SITE-NAME',SITE_NAME);
    if(count($data)>0)
    {
        $keys=array_keys($data);
        foreach($keys as $item)
        {
            $ft->assign($item,$data[$item]);
        }
    }
    print $ft->parse_and_return($tem);
}

function print_item($file,$ListItem,$LocDau=false,$LocDauAssign=false,$numberformat=false)
{
    if(count($ListItem)>0)
    {
        $array_var=get_object_vars($ListItem[0]);
        $var_name_array=array_keys($array_var);
        $result='';
        $ft=new FastTemplate(DIR.'/view/default/template/item');
        $ft->define('item',$file.'.tpl');
        $ft->assign('SITE-NAME',SITE_NAME);
        $dem=1;
        foreach($ListItem as $item)
        {

            foreach($var_name_array as $var)
            {
                if($LocDau!=false)
                {
                    if($LocDau==$var)
                    {
                        $ft->assign($LocDauAssign,LocDau($item->$var));
                    }
                }

                if($numberformat!=false)
                {
                    if($numberformat==$var)
                    {
                        $ft->assign($var,number_format($item->$var,0,'.','.'));
                    }
                    else
                    {
                        $ft->assign($var,$item->$var);
                    }
                }
                else
                {
                    $ft->assign($var,$item->$var);
                }
            }

            if(get_class($item)=='danhmuc_2')
            {
                    $ft->assign('name',returnLanguageField('name', $item));
                $ft->assign('view_all',returnLanguage('view_all','VIEW ALL'));
                $ft->assign('link',link_tour($item));
                $ft->assign('link_2',link_tour_2($item));
            }
            if(get_class($item)=='video')
            {
                $ft->assign('name',returnLanguageField('name', $item));
            }
            if(get_class($item)=='link')
            {
                $ft->assign('name',returnLanguageField('name', $item));
            }
            if(get_class($item)=='sanpham')
            {
                $content=$item->content;
                if (strlen($content) > 200) {
                    $ten1=strip_tags($content);

                    $ten = substr($ten1, 0, 200);
                    $name = substr($ten, 0, strrpos($ten, ' ')) . "...";
                    $ft->assign('content',$name);
                } else {
                    $ft->assign('content',strip_tags($content));
                }
                $sales='';
                $price_sales='';
                if($item->price_sale!=''){
                    $sales='<span class="onsale">Sale!</span>';
                    $price_sales='<span class="woocommerce-Price-currencySymbol"></span>'.number_format($item->price_sale,0,",",".").' vnđ</span>';
                }
                $ft->assign('price_format',number_format($item->price,0,",","."));
                $ft->assign('price_sales_format',$price_sales);
                $ft->assign('sales',$sales);
                $ft->assign('link',link_sanphamdetail($item));
                $ft->assign('start',sao($item->start));
            }
            if(get_class($item)=='danhmuc_tintuc') {
//                $ft->assign('link',link_news($item));
//                $ft->assign('view_all', returnLanguage('view_all', 'VIEW ALL'));
            }
            if(get_class($item)=='news')
            {
//                $ft->assign('name',returnLanguageField('name', $item));
//                $content=returnLanguageField('content', $item);
//                if (strlen($content) > 210) {
//                    $ten1=strip_tags($content);
//
//                    $ten = substr($ten1, 0, 210);
//                    $name = substr($ten, 0, strrpos($ten, ' ')) . "...";
//                    $ft->assign('content',$name);
//                } else {
//                    $ft->assign('content',strip_tags($content));
//                }
//                $ft->assign('detail',returnLanguage('detail','DETAIL'));
//                $ft->assign('news',returnLanguage('news','News'));
//                $ft->assign('link',link_newsdetail($item));
            }


                $dem=$dem+1;
            $result.=$ft->parse_and_return('item');
        }
        return $result;
    }
    else
    {
        return '';
    }

}
function link_sanpham($app)
{
    return SITE_NAME.'/thuc-don/'.$app->name_url.'/';
}
function link_sanphamdetail($app)
{
    return SITE_NAME.'/'.$app->name_url.'.html';
}

function link_news($app)
{
    return SITE_NAME.'/news/'.$app->name_url.'/';
}
function link_newsdetail($app)
{
    return SITE_NAME.'/news/'.$app->name_url.'.html';
}






function link_album($app)
{
    return SITE_NAME.'/anh-cuoi/'.$app->Name_url.'/';
}
function link_anhcuoi($app)
{
    return SITE_NAME.'/'.LocDau($app->Name).'-l6'.$app->Id.'.html';
}
function link_danhmuckhachsan($app)
{
    return SITE_NAME.'/khach-san/'.LocDau($app->Name).'/';
}
function link_danhmuctourtrongnuoc($app)
{
    return SITE_NAME.'/'.$app->Name_url.'/';
}
function link_danhmuctourquocte($app)
{
    return SITE_NAME.'/'.$app->Name_url.'/';
}

function link_tourtrongnuoc($app)
{
    return SITE_NAME.'/'.LocDau($app->Name).'-l1'.$app->Id.'.html';
}



function link_khachsan($app)
{
    return SITE_NAME.'/'.LocDau($app->Name).'-l3'.$app->Id.'.html';
}
function link_thuexe($app)
{
    return SITE_NAME.'/'.LocDau($app->Name).'-l4'.$app->Id.'.html';
}
function link_ykien($app)
{
    return SITE_NAME.'/'.LocDau($app->Name).'-l5'.$app->Id.'.html';
}

function sao($start)
{
    $sao='<span style="width:0%"> <strong class="rating">0</strong></span>';
    switch($start){
        case 0.5:
            $sao='<span style="width:10%"> <strong class="rating">0.5</strong></span>';
            break;
        case 1:
            $sao='<span style="width:20%"> <strong class="rating">1</strong></span>';
            break;
        case 1.5:
            $sao='<span style="width:30%"> <strong class="rating">1.5</strong></span>';
            break;
        case 2:
            $sao='<span style="width:38%"> <strong class="rating">2</strong></span>';
            break;
        case 2.5:
            $sao='<span style="width:45%"> <strong class="rating">2.5</strong></span>';
            break;
        case 3:
            $sao='<span style="width:55%"> <strong class="rating">3</strong></span>';
            break;
        case 3.5:
            $sao='<span style="width:65%"> <strong class="rating">3.5</strong></span>';
            break;
        case 4:
            $sao='<span style="width:70%"> <strong class="rating">4</strong></span>';
            break;
        case 4.5:
            $sao='<span style="width:80%"> <strong class="rating">4.5</strong></span>';
            break;
        case 5:
            $sao='<span style="width:100%"> <strong class="rating">5</strong></span>';
            break;
    }
    return $sao;
}

