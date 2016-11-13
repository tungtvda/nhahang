<?php
require_once DIR.'/common/paging.php';
require_once DIR.'/common/cls_fast_template.php';
function view_sanpham($data)
{
    $ft=new FastTemplate(DIR.'/view/admin/templates');
    $ft->define('header','header.tpl');
    $ft->define('body','body.tpl');
    $ft->define('footer','footer.tpl');
    //
    $ft->assign('TAB1-CLASS',isset($data['tab1_class'])?$data['tab1_class']:'');
    $ft->assign('TAB2-CLASS',isset($data['tab2_class'])?$data['tab2_class']:'');
    $ft->assign('USER-NAME',isset($data['username'])?$data['username']:'');
    $ft->assign('NOTIFICATION-CONTENT',isset($data['notififation_content'])?$data['notififation_content']:'');
    $ft->assign('TABLE-HEADER',showTableHeader());
    $ft->assign('PAGING',showPaging($data['count_paging'],20,$data['page']));
    $ft->assign('TABLE-BODY',showTableBody($data['table_body']));
    $ft->assign('TABLE-NAME','sanpham');
    $ft->assign('CONTENT-BOX-LEFT',isset($data['content_box_left'])?$data['content_box_left']:'');
    $ft->assign('CONTENT-BOX-RIGHT',isset($data['content_box_right'])?$data['content_box_right']:' ');
    $ft->assign('NOTIFICATION',isset($data['notification'])?$data['notification']:' ');
    $ft->assign('SITE-NAME',isset($data['sitename'])?$data['sitename']:SITE_NAME);
    $ft->assign('FORM',showFrom(isset($data['form'])?$data['form']:'',isset($data['listfkey'])?$data['listfkey']:array()));
    //
    print $ft->parse_and_return('header');
    print $ft->parse_and_return('body');
    print $ft->parse_and_return('footer');
}
//
function showTableHeader()
{
    return '<th>danhmuc1_id</th><th>danhmuc2_id</th><th>highlights</th><th>name</th><th>code</th><th>img</th><th>price</th><th>start</th><th>num_like</th>';
}
//
function showTableBody($data)
{
    $TableBody='';
    if(count($data)>0) foreach($data as $obj)
    {
        $TableBody.="<tr><td><input type=\"checkbox\" name=\"check_".$obj->id."\"/></td>";
        $TableBody.="<td>".$obj->danhmuc1_id."</td>";
        $TableBody.="<td>".$obj->danhmuc2_id."</td>";
        $TableBody.="<td>".$obj->highlights."</td>";
        $TableBody.="<td>".$obj->name."</td>";
        $TableBody.="<td>".$obj->code."</td>";
        $TableBody.="<td><img src=\"".$obj->img."\" width=\"50px\" height=\"50px\"/> </td>";
        $TableBody.="<td>".$obj->price."</td>";
        $TableBody.="<td>".$obj->start."</td>";
        $TableBody.="<td>".$obj->num_like."</td>";
        $TableBody.="<td><a href=\"?action=edit&id=".$obj->id."\" title=\"Edit\"><img src=\"".SITE_NAME."/view/admin/Themes/images/pencil.png\" alt=\"Edit\"></a>";
        $TableBody.="<a href=\"?action=delete&id=".$obj->id."\" title=\"Delete\" onClick=\"return confirm('Bạn có chắc chắc muốn xóa?')\"><img src=\"".SITE_NAME."/view/admin/Themes/images/cross.png\" alt=\"Delete\"></a> ";
        $TableBody.="</td>";
        $TableBody.="</tr>";
    }
    return $TableBody;
}
//
function showFrom($form,$ListKey=array())
{
    $str_from='';
    $str_from.='<p><label>Chọn danh mục cấp 1</label>';
    $str_from.='<select name="danhmuc1_id" id="DanhMuc1Id">';
    if($form!=false)
    {
        if(isset($ListKey['danhmuc1_id']))
        {
            foreach($ListKey['danhmuc1_id'] as $key)
            {
                $str_from.='<option value="'.$key->id.'" '.(($form!=false)?(($form->danhmuc1_id==$key->id)?'selected':''):'').'>'.$key->name.'</option>';
            }
        }
    }
    else
    {

        if(isset($ListKey['danhmuc1_id']))
        {
            foreach($ListKey['danhmuc1_id'] as $key)
            {
                $str_from.='<option value="'.$key->id.'" '.(($form!=false)?(($form->danhmuc1_id==$key->id)?'selected':''):'').'>'.$key->name.'</option>';
            }
        }
    }
    $str_from.='</select></p>';
    $str_from.='<p><label>Chọn danh mục cấp 2</label>';
    $str_from.='<select name="danhmuc2_id" id="DanhMuc2Id">';
    if($form!=false)
    {
        if(isset($ListKey['danhmuc2_id']))
        {
            foreach($ListKey['danhmuc2_id'] as $key)
            {
                $str_from.='<option value="'.$key->id.'" '.(($form!=false)?(($form->danhmuc2_id==$key->id)?'selected':''):'').'>'.$key->name.'</option>';
            }
        }
    }
    else
    {
        $str_from .= '<option value="1">Chọn danh mục cấp 2</option>';
    }
    $str_from.='</select></p>';
    $str_from.='<p><label>highlights</label><input  type="checkbox"  name="highlights" value="1" '.(($form!=false)?(($form->highlights=='1')?'checked':''):'').' /></p>';
    $str_from.='<p><label>name</label><input class="text-input small-input" type="text"  name="name" value="'.(($form!=false)?$form->name:'').'" /></p>';
    $str_from.='<p><label>name_url</label><input class="text-input small-input" type="text"  name="name_url" value="'.(($form!=false)?$form->name_url:'').'" /></p>';
    $str_from.='<p><label>code</label><input class="text-input small-input" type="text"  name="code" value="'.(($form!=false)?$form->code:'').'" /></p>';
    $str_from.='<p><label>img</label><input class="text-input small-input" type="text"  name="img" value="'.(($form!=false)?$form->img:'').'"/><a class="button" onclick="openKcEditor(\'img\');">Upload ảnh</a></p>';
    $str_from.='<p><label>img1</label><input class="text-input small-input" type="text"  name="img1" value="'.(($form!=false)?$form->img1:'').'"/><a class="button" onclick="openKcEditor(\'img1\');">Upload ảnh</a></p>';
    $str_from.='<p><label>img2</label><input class="text-input small-input" type="text"  name="img2" value="'.(($form!=false)?$form->img2:'').'"/><a class="button" onclick="openKcEditor(\'img2\');">Upload ảnh</a></p>';
    $str_from.='<p><label>price</label><input class="text-input small-input" type="text"  name="price" value="'.(($form!=false)?$form->price:'').'" /></p>';
    $str_from.='<p><label>price_sale</label><input class="text-input small-input" type="text"  name="price_sale" value="'.(($form!=false)?$form->price_sale:'').'" /></p>';
    $str_from.='<p><label>price_percent</label><input class="text-input small-input" type="text"  name="price_percent" value="'.(($form!=false)?$form->price_percent:'').'" /></p>';
    $str_from.='<p><label>start</label><input class="text-input small-input" type="text"  name="start" value="'.(($form!=false)?$form->start:'').'" /></p>';
    $str_from.='<p><label>num_like</label><input class="text-input small-input" type="text"  name="num_like" value="'.(($form!=false)?$form->num_like:'').'" /></p>';
    $str_from.='<p><label>content_short</label><textarea name="content_short">'.(($form!=false)?$form->content_short:'').'</textarea><script type="text/javascript">CKEDITOR.replace(\'content_short\'); </script></p>';
    $str_from.='<p><label>content</label><textarea name="content">'.(($form!=false)?$form->content:'').'</textarea><script type="text/javascript">CKEDITOR.replace(\'content\'); </script></p>';
    $str_from.='<p><label>title</label><input class="text-input small-input" type="text"  name="title" value="'.(($form!=false)?$form->title:'').'" /></p>';
    $str_from.='<p><label>keyword</label><input class="text-input small-input" type="text"  name="keyword" value="'.(($form!=false)?$form->keyword:'').'" /></p>';
    $str_from.='<p><label>description</label><input class="text-input small-input" type="text"  name="description" value="'.(($form!=false)?$form->description:'').'" /></p>';
    return $str_from;
}
