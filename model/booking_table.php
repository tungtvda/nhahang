<?php
class booking_table
{
    public $id,$status,$name,$email,$phone,$address,$member,$booking_date,$booking_time,$content,$created;
    public function booking_table($data=array())
    {
    $this->id=isset($data['id'])?$data['id']:'';
    $this->status=isset($data['status'])?$data['status']:'';
    $this->name=isset($data['name'])?$data['name']:'';
    $this->email=isset($data['email'])?$data['email']:'';
    $this->phone=isset($data['phone'])?$data['phone']:'';
    $this->address=isset($data['address'])?$data['address']:'';
    $this->member=isset($data['member'])?$data['member']:'';
    $this->booking_date=isset($data['booking_date'])?$data['booking_date']:'';
    $this->booking_time=isset($data['booking_time'])?$data['booking_time']:'';
    $this->content=isset($data['content'])?$data['content']:'';
    $this->created=isset($data['created'])?$data['created']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->id=addslashes($this->id);
            $this->status=addslashes($this->status);
            $this->name=addslashes($this->name);
            $this->email=addslashes($this->email);
            $this->phone=addslashes($this->phone);
            $this->address=addslashes($this->address);
            $this->member=addslashes($this->member);
            $this->booking_date=addslashes($this->booking_date);
            $this->booking_time=addslashes($this->booking_time);
            $this->content=addslashes($this->content);
            $this->created=addslashes($this->created);
        }
    public function decode()
        {
            $this->id=stripslashes($this->id);
            $this->status=stripslashes($this->status);
            $this->name=stripslashes($this->name);
            $this->email=stripslashes($this->email);
            $this->phone=stripslashes($this->phone);
            $this->address=stripslashes($this->address);
            $this->member=stripslashes($this->member);
            $this->booking_date=stripslashes($this->booking_date);
            $this->booking_time=stripslashes($this->booking_time);
            $this->content=stripslashes($this->content);
            $this->created=stripslashes($this->created);
        }
}
