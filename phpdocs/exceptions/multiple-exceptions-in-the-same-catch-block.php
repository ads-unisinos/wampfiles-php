
<?php

class MyException extends Exception {}

class MyOtherException extends Exception{}

class Test{
    function testing ()
    {
        try {
            throw new MyException();
        } catch (MyException | MyOtherException $e) {
            var_dump(get_class($e));
        }
    }
}


// program entry point.
$foo = new Test ;
$foo->testing();


?>