<?php
require_once DIR.'/common/paging.php';
require_once DIR.'/common/cls_fast_template.php';
function view_config($data)
{
    $ft=new FastTemplate(DIR.'/view/admin/templates');
    $ft->assign('count_contact',$_SESSION['contact']);
    $ft->assign('count_booking',$_SESSION['booking_table']);
    $ft->assign('count_dangky',$_SESSION['dangky_email']);
    $ft->assign('count_danhgia',$_SESSION['danhgia_thucdon']);
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
    $ft->assign('TABLE-NAME','config');
    $ft->assign('CONTENT-BOX-LEFT',isset($data['content_box_left'])?$data['content_box_left']:'');
    $ft->assign('CONTENT-BOX-RIGHT',isset($data['content_box_right'])?$data['content_box_right']:' ');
    $ft->assign('NOTIFICATION',isset($data['notification'])?$data['notification']:' ');
    $ft->assign('SITE-NAME',isset($data['sitename'])?$data['sitename']:SITE_NAME);
    $ft->assign('kichhoat_config', 'active');
    $ft->assign('FORM',showFrom(isset($data['form'])?$data['form']:'',isset($data['listfkey'])?$data['listfkey']:array()));
    //
    print $ft->parse_and_return('header');
    print $ft->parse_and_return('body');
    print $ft->parse_and_return('footer');
}
//
function showTableHeader()
{
    return '<th>Id</th><th>Logo</th><th>Icon</th><td>Banner slide</td><th>Tên</th><th>Địa chỉ</th>';
}
//
function showTableBody($data)
{
    $TableBody='';
    if(count($data)>0) foreach($data as $obj)
    {
        $TableBody.="<tr><td></td>";
        $TableBody.="<td>".$obj->Id."</td>";
        $TableBody.="<td><img src=\"".$obj->Logo."\" width=\"50px\" height=\"50px\"/> </td>";
        $TableBody.="<td><img src=\"".$obj->Icon."\" width=\"50px\" height=\"50px\"/> </td>";
        $TableBody.="<td><img src=\"".$obj->bg_slide."\" width=\"50px\" height=\"50px\"/> </td>";
        $TableBody.="<td>".$obj->Name."</td>";
        $TableBody.="<td>".$obj->Address."</td>";
        $TableBody.="<td><a href=\"?action=edit&Id=".$obj->Id."\" title=\"Edit\"><img src=\"".SITE_NAME."/view/admin/Themes/images/pencil.png\" alt=\"Edit\"></a>";
        $TableBody.="</td>";
        $TableBody.="</tr>";
    }
    return $TableBody;
}
//
function showFrom($form,$ListKey=array())
{
    $str_from='';
    $str_from.='<p><label>Logo</label><input class="text-input small-input" type="text"  name="Logo" value="'.(($form!=false)?$form->Logo:'').'"/><a class="button" onclick="openKcEditor(\'Logo\');">Upload ảnh</a></p>';
    $str_from.='<p><label>Icon</label><input class="text-input small-input" type="text"  name="Icon" value="'.(($form!=false)?$form->Icon:'').'"/><a class="button" onclick="openKcEditor(\'Icon\');">Upload ảnh</a></p>';
    $str_from.='<p><label>Banner slide</label><input class="text-input small-input" type="text"  name="bg_slide" value="'.(($form!=false)?$form->bg_slide:'').'"/><a class="button" onclick="openKcEditor(\'bg_slide\');">Upload ảnh</a></p>';
    $str_from.='<p><label>Tên</label><input class="text-input small-input" type="text"  name="Name" value="'.(($form!=false)?$form->Name:'').'" /></p>';
    $str_from.='<p><label>Địa chỉ</label><input class="text-input small-input" type="text"  name="Address" value="'.(($form!=false)?$form->Address:'').'" /></p>';
    $str_from.='<p><label>Điện Thoại</label><input class="text-input small-input" type="text"  name="Phone" value="'.(($form!=false)?$form->Phone:'').'" /></p>';
    $str_from.='<p><label>fax</label><input class="text-input small-input" type="text"  name="fax" value="'.(($form!=false)?$form->fax:'').'" /></p>';
    $str_from.='<p><label>Hotline</label><input class="text-input small-input" type="text"  name="Hotline" value="'.(($form!=false)?$form->Hotline:'').'" /></p>';
    $str_from.='<p><label>Email</label><input class="text-input small-input" type="text"  name="Email" value="'.(($form!=false)?$form->Email:'').'" /></p>';
    $str_from.='<p><label>Website</label><input class="text-input small-input" type="text"  name="Website" value="'.(($form!=false)?$form->Website:'').'" /></p>';
    return $str_from;
}
