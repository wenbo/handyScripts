<?php
$array = array(
  "foo" => "bar",
  "bar" => "foo",
);

// as of PHP 5.4
$array = [
  "foo" => "bar",
  "bar" => "foo",
  ];
?>

<?php 
  $ages = array("Peter"=>32, "Quagmire"=>30, "Joe"=>34); 
  echo ($ages["Peter"]);
?>

<?php
    $colors = array('red', 'blue', 'green', 'yellow');
      foreach ($colors as $color) {
                echo "Do you like $color?\n";
                        echo "<br/>";
                  }
?>

<?php
      $search_array = array('first' => 1, 'second' => 4);
      if (array_key_exists('first', $search_array)) {
            echo "The 'first' element is in the array";
              }
?>
