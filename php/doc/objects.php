<?php
class foo
{
  function do_foo()
  {
    echo "Doing foo."; 
  }
}

$bar = new foo;
$bar->do_foo();
?>

<?php
$obj = (object) 'ciao';
echo $obj->scalar;  // outputs 'ciao'
?>
