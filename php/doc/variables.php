<?php
$foo = 'Bob';              // Assign the value 'Bob' to $foo
$bar = &$foo;              // Reference $foo via $bar.
$bar = "My name is $bar";  // Alter $bar...
echo $bar;
echo $foo;                 // $foo is altered too.
?>

<?php
$a = 1;
$b = 2;

function Sum()
{
      global $a, $b;

          $b = $a + $b;
} 

Sum();
echo $b;
?>

var_dump($GLOBALS);


<?php
function test()
{
  static $count = 0;

  $count++;
  echo $count;
  if ($count < 10) {
    test();
  }
  $count--;
}
?>
