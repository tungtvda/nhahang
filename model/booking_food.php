<?php
class booking_food
{
    public $id,$id_chung,$name,$code,$img,$link,$quantity,$price,$total;
    public function booking_food($data=array())
    {
    $this->id=isset($data['id'])?$data['id']:'';
    $this->id_chung=isset($data['id_chung'])?$data['id_chung']:'';
    $this->name=isset($data['name'])?$data['name']:'';
    $this->code=isset($data['code'])?$data['code']:'';
    $this->img=isset($data['img'])?$data['img']:'';
    $this->link=isset($data['link'])?$data['link']:'';
    $this->quantity=isset($data['quantity'])?$data['quantity']:'';
    $this->price=isset($data['price'])?$data['price']:'';
    $this->total=isset($data['total'])?$data['total']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->id=addslashes($this->id);
            $this->id_chung=addslashes($this->id_chung);
            $this->name=addslashes($this->name);
            $this->code=addslashes($this->code);
            $this->img=addslashes($this->img);
            $this->link=addslashes($this->link);
            $this->quantity=addslashes($this->quantity);
            $this->price=addslashes($this->price);
            $this->total=addslashes($this->total);
        }
    public function decode()
        {
            $this->id=stripslashes($this->id);
            $this->id_chung=stripslashes($this->id_chung);
            $this->name=stripslashes($this->name);
            $this->code=stripslashes($this->code);
            $this->img=stripslashes($this->img);
            $this->link=stripslashes($this->link);
            $this->quantity=stripslashes($this->quantity);
            $this->price=stripslashes($this->price);
            $this->total=stripslashes($this->total);
        }
}
