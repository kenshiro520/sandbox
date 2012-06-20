<?php
  $count = 0;
  $num = 0;

  while ($count < 100) {
    $count += 1;    
    $val = $count;

    if ($val%15 === 0) {
      echo "FuzzBizz";
    } elseif ($val%3 === 0) {
      echo "Fuzz";
    } elseif ($val%5 === 0) {
      echo "Bizz";
    } else {
      if (is_int($val)) {
        echo $val;
      } else {
        echo "argument is wrong.";
      }
    }
    echo "\n";
  }

?>
