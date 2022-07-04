<?php

function division($num1, $num2)
{
    $sum = 0;
    while ($num1 >= $num2) {
        $num1 = $num1 - $num2;
        $sum++;
    }
    return $sum;
}

echo division(7, 2);
