<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_lienhe($data = array())
{
    $asign = array();
    $asign['link']=SITE_NAME.'/lien-he/';
    $asign['email']=$data['config'][0]->Email;
    $asign['Logo']=$data['config'][0]->Logo;
    $asign['name']=$data['config'][0]->Name;
    $asign['Hotline']=$data['config'][0]->Hotline;
    $asign['Phone']=$data['config'][0]->Phone;
    $asign['address']=$data['config'][0]->Address;
    $asign['twitter'] = $data['mangxahoi'][0]->twitter;
    $asign['youtube'] = $data['mangxahoi'][0]->youtube;
    $asign['facebook'] = $data['mangxahoi'][0]->facebook;
    $asign['google'] = $data['mangxahoi'][0]->google;
    $asign['linkedin'] = $data['mangxahoi'][0]->linkedin;
    $asign['instagram'] = $data['mangxahoi'][0]->instagram;
    print_template($asign, 'lienhe');
}



