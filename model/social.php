<?php
class social
{
    public $id,$facebook,$twitter,$youtube,$google,$linkedin,$instagram;
    public function social($data=array())
    {
    $this->id=isset($data['id'])?$data['id']:'';
    $this->facebook=isset($data['facebook'])?$data['facebook']:'';
    $this->twitter=isset($data['twitter'])?$data['twitter']:'';
    $this->youtube=isset($data['youtube'])?$data['youtube']:'';
    $this->google=isset($data['google'])?$data['google']:'';
    $this->linkedin=isset($data['linkedin'])?$data['linkedin']:'';
    $this->instagram=isset($data['instagram'])?$data['instagram']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->id=addslashes($this->id);
            $this->facebook=addslashes($this->facebook);
            $this->twitter=addslashes($this->twitter);
            $this->youtube=addslashes($this->youtube);
            $this->google=addslashes($this->google);
            $this->linkedin=addslashes($this->linkedin);
            $this->instagram=addslashes($this->instagram);
        }
    public function decode()
        {
            $this->id=stripslashes($this->id);
            $this->facebook=stripslashes($this->facebook);
            $this->twitter=stripslashes($this->twitter);
            $this->youtube=stripslashes($this->youtube);
            $this->google=stripslashes($this->google);
            $this->linkedin=stripslashes($this->linkedin);
            $this->instagram=stripslashes($this->instagram);
        }
}
