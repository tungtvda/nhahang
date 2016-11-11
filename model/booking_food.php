<?php
class booking_food
{
    public $id,$booking_table_id,$name,$quantity,$price,$total;
    public function booking_food($data=array())
    {
    $this->id=isset($data['id'])?$data['id']:'';
    $this->booking_table_id=isset($data['booking_table_id'])?$data['booking_table_id']:'';
    $this->name=isset($data['name'])?$data['name']:'';
    $this->quantity=isset($data['quantity'])?$data['quantity']:'';
    $this->price=isset($data['price'])?$data['price']:'';
    $this->total=isset($data['total'])?$data['total']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->id=addslashes($this->id);
            $this->booking_table_id=addslashes($this->booking_table_id);
            $this->name=addslashes($this->name);
            $this->quantity=addslashes($this->quantity);
            $this->price=addslashes($this->price);
            $this->total=addslashes($this->total);
        }
    public function decode()
        {
            $this->id=stripslashes($this->id);
            $this->booking_table_id=stripslashes($this->booking_table_id);
            $this->name=stripslashes($this->name);
            $this->quantity=stripslashes($this->quantity);
            $this->price=stripslashes($this->price);
            $this->total=stripslashes($this->total);
        }
}
