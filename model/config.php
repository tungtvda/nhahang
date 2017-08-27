<?php
class config
{
    public $Id,$Logo,$Icon, $bg_slide,$Name,$Address,$Phone,$fax,$Hotline,$Email,$Website;
    public function config($data=array())
    {
    $this->Id=isset($data['Id'])?$data['Id']:'';
    $this->Logo=isset($data['Logo'])?$data['Logo']:'';
    $this->Icon=isset($data['Icon'])?$data['Icon']:'';
    $this->bg_slide=isset($data['bg_slide'])?$data['bg_slide']:'';
    $this->Name=isset($data['Name'])?$data['Name']:'';
    $this->Address=isset($data['Address'])?$data['Address']:'';
    $this->Phone=isset($data['Phone'])?$data['Phone']:'';
    $this->fax=isset($data['fax'])?$data['fax']:'';
    $this->Hotline=isset($data['Hotline'])?$data['Hotline']:'';
    $this->Email=isset($data['Email'])?$data['Email']:'';
    $this->Website=isset($data['Website'])?$data['Website']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->Id=addslashes($this->Id);
            $this->Logo=addslashes($this->Logo);
            $this->Icon=addslashes($this->Icon);
            $this->bg_slide=addslashes($this->bg_slide);
            $this->Name=addslashes($this->Name);
            $this->Address=addslashes($this->Address);
            $this->Phone=addslashes($this->Phone);
            $this->fax=addslashes($this->fax);
            $this->Hotline=addslashes($this->Hotline);
            $this->Email=addslashes($this->Email);
            $this->Website=addslashes($this->Website);
        }
    public function decode()
        {
            $this->Id=stripslashes($this->Id);
            $this->Logo=stripslashes($this->Logo);
            $this->Icon=stripslashes($this->Icon);
            $this->bg_slide=stripslashes($this->bg_slide);
            $this->Name=stripslashes($this->Name);
            $this->Address=stripslashes($this->Address);
            $this->Phone=stripslashes($this->Phone);
            $this->fax=stripslashes($this->fax);
            $this->Hotline=stripslashes($this->Hotline);
            $this->Email=stripslashes($this->Email);
            $this->Website=stripslashes($this->Website);
        }
}
