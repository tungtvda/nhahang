<?php
class info
{
    public $id,$name,$img,$content,$contents_short,$title,$keyword,$description;
    public function info($data=array())
    {
    $this->id=isset($data['id'])?$data['id']:'';
    $this->name=isset($data['name'])?$data['name']:'';
    $this->img=isset($data['img'])?$data['img']:'';
    $this->content=isset($data['content'])?$data['content']:'';
    $this->contents_short=isset($data['contents_short'])?$data['contents_short']:'';
    $this->title=isset($data['title'])?$data['title']:'';
    $this->keyword=isset($data['keyword'])?$data['keyword']:'';
    $this->description=isset($data['description'])?$data['description']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->id=addslashes($this->id);
            $this->name=addslashes($this->name);
            $this->img=addslashes($this->img);
            $this->content=addslashes($this->content);
            $this->contents_short=addslashes($this->contents_short);
            $this->title=addslashes($this->title);
            $this->keyword=addslashes($this->keyword);
            $this->description=addslashes($this->description);
        }
    public function decode()
        {
            $this->id=stripslashes($this->id);
            $this->name=stripslashes($this->name);
            $this->img=stripslashes($this->img);
            $this->content=stripslashes($this->content);
            $this->contents_short=stripslashes($this->contents_short);
            $this->title=stripslashes($this->title);
            $this->keyword=stripslashes($this->keyword);
            $this->description=stripslashes($this->description);
        }
}
