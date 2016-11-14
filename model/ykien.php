<?php
class ykien
{
    public $id,$name,$img,$job,$content;
    public function ykien($data=array())
    {
    $this->id=isset($data['id'])?$data['id']:'';
    $this->name=isset($data['name'])?$data['name']:'';
    $this->img=isset($data['img'])?$data['img']:'';
    $this->job=isset($data['job'])?$data['job']:'';
    $this->content=isset($data['content'])?$data['content']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->id=addslashes($this->id);
            $this->name=addslashes($this->name);
            $this->img=addslashes($this->img);
            $this->job=addslashes($this->job);
            $this->content=addslashes($this->content);
        }
    public function decode()
        {
            $this->id=stripslashes($this->id);
            $this->name=stripslashes($this->name);
            $this->img=stripslashes($this->img);
            $this->job=stripslashes($this->job);
            $this->content=stripslashes($this->content);
        }
}
