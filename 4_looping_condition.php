<?php

for ($i = 1; $i <= 50; $i++) {
    if ($i % 3 == 0 && $i % 5 == 0) {
        echo $i . " FooBar" . "\n";
    } else if ($i % 3 == 0) {
        echo $i . " Foo" . "\n";
    } else if ($i % 5 == 0) {
        echo $i . " Bar" . "\n";
    } else {
        echo $i . "\n";
    }
}
