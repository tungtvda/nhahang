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
//define("SITE_NAME", "http://vietgardens.com");
//define("DIR", dirname(__FILE__));
//define('SERVER','localhost');
//define('DB_USERNAME','dulichado_garden');
//define('DB_PASSWORD','iBqjKvEMY');
//define('DB_NAME','dulichado_garden');
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
            echo "<script>alert('Viet Gardens cảm ơn quý khách đã gửi liên hệ đến chúng tôi, Viet Gardens sẽ liên hệ với bạn sớm nhất, xin cảm ơn!')</script>";

            echo "<script>window.location.href='$link_web';</script>";

        }

    }
}

function booking_table()
{
    if (isset($_POST['date_book'])) {

        $date_book=addslashes(strip_tags($_POST['date_book']));
        $time_book=addslashes(strip_tags($_POST['time_book']));
        $member_book=addslashes(strip_tags($_POST['member_book']));
        $name_book=addslashes(strip_tags($_POST['name_book']));
        $email_book=addslashes(strip_tags($_POST['email_book']));
        $phone_book=addslashes(strip_tags($_POST['phone_book']));
        $yeucau_book=addslashes(strip_tags($_POST['yeucau_book']));
        if($date_book==""||$time_book==""||$member_book==""||$name_book==""||$email_book==""||$phone_book=="")
        {
            echo "<script>alert('Bạn vui lòng điền đẩy đủ thông tin đặt bàn')</script>";
        }
        else
        {
            $new = new booking_table();
            $new->status=0;
            $new->name=$name_book;
            $new->phone=$phone_book;
            $new->email=$email_book;
            $new->address='';
            $new->member=$member_book;
            $new->booking_date=$date_book;
            $new->booking_time=$time_book;
            $new->content=$yeucau_book;
            $new->created=date(DATETIME_FORMAT);
            booking_table_insert($new);
            $subject = "Viet Gardens thông báo đặt bàn";
            $subject1 = "Viet Gardens xác nhận đặt bàn";
            $message='';
            $message .='<div style="float: left; width: 100%">

                            <p>Tên khách hàng: <span style="color: #132fff; font-weight: bold">'.$name_book.'</span>,</p>
                            <p>Email: <span style="color: #132fff; font-weight: bold">'.$email_book.'</span>,</p>
                            <p>Số điện thoại: <span style="color: #132fff; font-weight: bold">'.$phone_book.'</span>,</p>
                            <p>Số người: <span style="color: #132fff; font-weight: bold">'.$member_book.'</span>,</p>
                            <p>Ngày đặt: <span style="color: #132fff; font-weight: bold">'.$date_book.'</span>,</p>
                            <p>Thời gian: <span style="color: #132fff; font-weight: bold">'.$time_book.'</span>,</p>

                            <p>Ngày gửi: <span style="color: #132fff; font-weight: bold">'.date(DATETIME_FORMAT).'</span>,</p>
                            <p>'.$yeucau_book.'</p>


                        </div>';
            SendMail('sales@vietgardens.com', $message, $subject);
            SendMail($email_book, $message, $subject1);
            echo "<script>alert('Viet Gardens cảm ơn quý khách đã đặt bàn tại nhà hàng, Viet Gardens sẽ liên hệ với bạn sớm nhất, xin cảm ơn!')</script>";

        }

    }
}
