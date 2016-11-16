<?php

/**
 * @author vdbkpro
 * @copyright 2013
 */
define("SITE_NAME", "http://localhost/nhahang");
define("DIR", dirname(__FILE__));
define('SERVER','localhost');
define('DB_USERNAME','root');
define('DB_PASSWORD','');
define('DB_NAME','nhahang');
define('CACHE',false);
define('DATETIME_FORMAT',"y-m-d H:i:s");
define('PRIVATE_KEY','hoidinhnvbk');
session_start();
require_once DIR.'/common/minifi.output.php';
ob_start("minify_output");

//require_once 'language/en.php';
//define("SITE_NAME", "http://mixtourist.com");
//define("DIR", dirname(__FILE__));
//define('SERVER','localhost');
//define('DB_USERNAME','dulichado_mixcom');
//define('DB_PASSWORD','tAZDG1dcl');
//define('DB_NAME','dulichado_mixcom');
//define('CACHE',false);
//define('DATETIME_FORMAT',"y-m-d H:i:s");
//define('PRIVATE_KEY','hoidinhnvbk');
//define('link_chitiet_danhmuc_tour','/tour/');
//session_start();
//require_once DIR.'/common/minifi.output.php';
//ob_start("minify_output");

require_once DIR.'/model/contactService.php';
function contact()
{
    if (isset($_POST['name_contact'])) {

        $ten=addslashes(strip_tags($_POST['name_contact']));
        $email=addslashes(strip_tags($_POST['email_contact']));
        $dienthoai=addslashes(strip_tags($_POST['phone_contact']));
        $diachi=addslashes(strip_tags($_POST['address_contact']));
        $noidung=addslashes(strip_tags($_POST['message_contact']));
        if($ten==""||$email==""||$dienthoai=="")
        {
            echo "<script>alert('Bạn vui lòng điền đẩy đủ thông tin liên hệ')</script>";
        }
        else
        {
            $new = new contact();
            $new->name_kh=$ten;
            $new->email=$email;
            $new->phone=$dienthoai;
            $new->address=$diachi;
            $new->content=$noidung;
            $new->status=0;
            $new->created=date(DATETIME_FORMAT);
            contact_insert($new);
            $link_web=SITE_NAME;
            $subject = "Viet Gardens thông báo liên hệ từ khách hàng";
            $message='';
            $message .='<div style="float: left; width: 100%">

                            <p>Tên khách hàng: <span style="color: #132fff; font-weight: bold">'.$ten.'</span>,</p>
                            <p>Email: <span style="color: #132fff; font-weight: bold">'.$email.'</span>,</p>
                            <p>Số điện thoại: <span style="color: #132fff; font-weight: bold">'.$dienthoai.'</span>,</p>
                            <p>Địa chỉ: <span style="color: #132fff; font-weight: bold">'.$diachi.'</span>,</p>
                            <p>Ngày gửi: <span style="color: #132fff; font-weight: bold">'.date(DATETIME_FORMAT).'</span>,</p>
                            <p>'.$noidung.'</p>


                        </div>';
            SendMail('sales@vietgardens.com', $message, $subject);
            echo "<script>alert('Viet Gardens cảm ơn quý khách đã gửi liên hệ đến chúng tôi, Viet Gardens sẽ liên hệ với bạn sớm nhất, xin cảm ơn')</script>";

            echo "<script>window.location.href='$link_web';</script>";

        }

    }
}
