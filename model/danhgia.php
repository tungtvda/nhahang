<?php
class danhgia
{
    public $id,$sanpham_id,$name,$email,$phone,$status,$start,$content,$created;
    public function danhgia($data=array())
    {
    $this->id=isset($data['id'])?$data['id']:'';
    $this->sanpham_id=isset($data['sanpham_id'])?$data['sanpham_id']:'';
    $this->name=isset($data['name'])?$data['name']:'';
    $this->email=isset($data['email'])?$data['email']:'';
    $this->phone=isset($data['phone'])?$data['phone']:'';
    $this->status=isset($data['status'])?$data['status']:'';
    $this->start=isset($data['start'])?$data['start']:'';
    $this->content=isset($data['content'])?$data['content']:'';
    $this->created=isset($data['created'])?$data['created']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->id=addslashes($this->id);
            $this->sanpham_id=addslashes($this->sanpham_id);
            $this->name=addslashes($this->name);
            $this->email=addslashes($this->email);
            $this->phone=addslashes($this->phone);
            $this->status=addslashes($this->status);
            $this->start=addslashes($this->start);
            $this->content=addslashes($this->content);
            $this->created=addslashes($this->created);
        }
    public function decode()
        {
            $this->id=stripslashes($this->id);
            $this->sanpham_id=stripslashes($this->sanpham_id);
            $this->name=stripslashes($this->name);
            $this->email=stripslashes($this->email);
            $this->phone=stripslashes($this->phone);
            $this->status=stripslashes($this->status);
            $this->start=stripslashes($this->start);
            $this->content=stripslashes($this->content);
            $this->created=stripslashes($this->created);
        }
}
