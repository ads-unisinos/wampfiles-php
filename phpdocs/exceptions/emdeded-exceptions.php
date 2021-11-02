<?php

class MyCustomException extends Exception { }

class Test {
    public function testing() {
        try {
            try {
                throw new MyCustomException('foo!');
            } catch (MyCustomException $e) {
                // rethrow it
                throw $e;
            }
        } catch (Exception $e) {
            echo get_class($e) . "<br>";
            var_dump($e->getMessage());
        }
    }
}

$foo = new Test;
$foo->testing();

?>