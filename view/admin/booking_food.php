<?php
require_once DIR.'/common/paging.php';
require_once DIR.'/common/cls_fast_template.php';
function view_booking_food($data)
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
    $ft->assign('TABLE-NAME','booking_food');
    $ft->assign('CONTENT-BOX-LEFT',isset($data['content_box_left'])?$data['content_box_left']:'');
    $ft->assign('CONTENT-BOX-RIGHT',isset($data['content_box_right'])?$data['content_box_right']:' ');
    $ft->assign('NOTIFICATION',isset($data['notification'])?$data['notification']:' ');
    $ft->assign('SITE-NAME',isset($data['sitename'])?$data['sitename']:SITE_NAME);
    $ft->assign('kichhoat_dathang', 'active');
    $ft->assign('hidden_action', 'hidden');
    $ft->assign('name', $data['data_table']->name);
    $ft->assign('email', $data['data_table']->email);
    $ft->assign('phone', $data['data_table']->phone);
    $ft->assign('member', $data['data_table']->member);
    $ft->assign('booking_date', $data['data_table']->booking_date);
    $ft->assign('booking_time', $data['data_table']->booking_time);
    $ft->assign('content', $data['data_table']->content);
    $ft->assign('created', $data['data_table']->created);
    if($data['data_table']->status==1){
        $ft->assign('status', 'Đã xác nhận');
    }
    else{
        $ft->assign('status', 'Chưa xác nhận');
    }
    $ft->assign('show_detail', 'display: block');
    $ft->assign('FORM',showFrom(isset($data['form'])?$data['form']:'',isset($data['listfkey'])?$data['listfkey']:array()));
    //
    print $ft->parse_and_return('header');
    print $ft->parse_and_return('body');
    print $ft->parse_and_return('footer');
}
//
function showTableHeader()
{
    return '<th>name</th><th>code</th><th>img</th><th>quantity</th><th>price (vnđ)</th><th>total (vnđ)</th>';
}
//
function showTableBody($data)
{
    $TableBody='';
    $count=1;
    if(count($data)>0) foreach($data as $obj)
    {
        $TableBody.="<tr><td>".$count."</td>";
        $TableBody.="<td>".$obj->name."</td>";
        $TableBody.="<td>".$obj->code."</td>";
        $TableBody.="<td><img src=\"".$obj->img."\" width=\"50px\" height=\"50px\"/> </td>";
        $TableBody.="<td>".$obj->quantity."</td>";
        $TableBody.="<td>".number_format($obj->price,0,",",".")."</td>";
        $TableBody.="<td>".number_format($obj->total,0,",",".")."</td>";
//        $TableBody.="<td>";
//        $TableBody.="<a href=\"?action=edit&id=".$obj->id."\" title=\"Edit\"><img src=\"".SITE_NAME."/view/admin/Themes/images/pencil.png\" alt=\"Edit\"></a>";
//        $TableBody.="<a href=\"?action=delete&id=".$obj->id."\" title=\"Delete\" onClick=\"return confirm('Bạn có chắc chắc muốn xóa?')\"><img src=\"".SITE_NAME."/view/admin/Themes/images/cross.png\" alt=\"Delete\"></a> ";
//        $TableBody.="</td>";
        $TableBody.="</tr>";
        $count++;
    }
    return $TableBody;
}
//
function showFrom($form,$ListKey=array())
{
    $str_from='';
    $str_from.='<p><label>id_chung</label><input class="text-input small-input" type="text"  name="id_chung" value="'.(($form!=false)?$form->id_chung:'').'" /></p>';
    $str_from.='<p><label>name</label><input class="text-input small-input" type="text"  name="name" value="'.(($form!=false)?$form->name:'').'" /></p>';
    $str_from.='<p><label>code</label><input class="text-input small-input" type="text"  name="code" value="'.(($form!=false)?$form->code:'').'" /></p>';
    $str_from.='<p><label>img</label><input class="text-input small-input" type="text"  name="img" value="'.(($form!=false)?$form->img:'').'"/><a class="button" onclick="openKcEditor(\'img\');">Upload ảnh</a></p>';
    $str_from.='<p><label>link</label><input class="text-input small-input" type="text"  name="link" value="'.(($form!=false)?$form->link:'').'" /></p>';
    $str_from.='<p><label>quantity</label><input class="text-input small-input" type="text"  name="quantity" value="'.(($form!=false)?$form->quantity:'').'" /></p>';
    $str_from.='<p><label>price</label><input class="text-input small-input" type="text"  name="price" value="'.(($form!=false)?$form->price:'').'" /></p>';
    $str_from.='<p><label>total</label><input class="text-input small-input" type="text"  name="total" value="'.(($form!=false)?$form->total:'').'" /></p>';
    return $str_from;
}
