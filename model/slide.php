<?php
class slide
{
    public $id,$name,$img,$link,$position;
    public function slide($data=array())
    {
    $this->id=isset($data['id'])?$data['id']:'';
    $this->name=isset($data['name'])?$data['name']:'';
    $this->img=isset($data['img'])?$data['img']:'';
    $this->link=isset($data['link'])?$data['link']:'';
    $this->position=isset($data['position'])?$data['position']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->id=addslashes($this->id);
            $this->name=addslashes($this->name);
            $this->img=addslashes($this->img);
            $this->link=addslashes($this->link);
            $this->position=addslashes($this->position);
        }
    public function decode()
        {
            $this->id=stripslashes($this->id);
            $this->name=stripslashes($this->name);
            $this->img=stripslashes($this->img);
            $this->link=stripslashes($this->link);
            $this->position=stripslashes($this->position);
        }
}
