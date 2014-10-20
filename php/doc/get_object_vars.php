<?php
class person{
  public $name="王美人";
  public $age = 25;
  public $birth;
}
$p = new person();
print_r(get_object_vars($p));
?>
