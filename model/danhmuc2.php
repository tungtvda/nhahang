<?php
class danhmuc2
{
    public $id,$danhmuc_id,$position,$name,$name_url,$img,$title,$keyword,$description;
    public function danhmuc2($data=array())
    {
    $this->id=isset($data['id'])?$data['id']:'';
    $this->danhmuc_id=isset($data['danhmuc_id'])?$data['danhmuc_id']:'';
    $this->position=isset($data['position'])?$data['position']:'';
    $this->name=isset($data['name'])?$data['name']:'';
    $this->name_url=isset($data['name_url'])?$data['name_url']:'';
    $this->img=isset($data['img'])?$data['img']:'';
    $this->title=isset($data['title'])?$data['title']:'';
    $this->keyword=isset($data['keyword'])?$data['keyword']:'';
    $this->description=isset($data['description'])?$data['description']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->id=addslashes($this->id);
            $this->danhmuc_id=addslashes($this->danhmuc_id);
            $this->position=addslashes($this->position);
            $this->name=addslashes($this->name);
            $this->name_url=addslashes($this->name_url);
            $this->img=addslashes($this->img);
            $this->title=addslashes($this->title);
            $this->keyword=addslashes($this->keyword);
            $this->description=addslashes($this->description);
        }
    public function decode()
        {
            $this->id=stripslashes($this->id);
            $this->danhmuc_id=stripslashes($this->danhmuc_id);
            $this->position=stripslashes($this->position);
            $this->name=stripslashes($this->name);
            $this->name_url=stripslashes($this->name_url);
            $this->img=stripslashes($this->img);
            $this->title=stripslashes($this->title);
            $this->keyword=stripslashes($this->keyword);
            $this->description=stripslashes($this->description);
        }
}
